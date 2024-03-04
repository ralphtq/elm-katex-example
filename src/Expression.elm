module Expression exposing (Expr(..), compile, compile2, exprListParser, parse, render)

import Html exposing (Html)
import Html.Attributes
import KaTeX
import Parser exposing ((|.), (|=), Parser)


type Expr
    = Text String
    | InlineMath String
    | DisplayMath String


compile : String -> Html msg
compile str =
    case parse str of
        Nothing ->
            Html.text "Oops, parse error"

        Just exprList ->
            Html.p [] (List.map render exprList)



compile2 : String -> Html msg
compile2 str =
   case parse2 str of
        Nothing ->
            Html.text "Oops, parse error"

        Just exprList ->
            Html.p [] (List.map render exprList)



-- case parse2 str of
-- Nothing ->
-- Html.text "Oops, parse error"
-- Just exprList -> Just exprList
-- Html.p [] (List.map render exprList)


parse2 : String -> Maybe (List Expr)
parse2 str =
    case Parser.run (many exprParser2) str of
        Err _ ->
            Nothing

        Ok result ->
            Just result


exprParser2 : Parser Expr
exprParser2 =
    Parser.oneOf
        [ displayMathParser
        , inlineMathParser
        , textParser2
        ]


render : Expr -> Html msg
render expr =
    case expr of
        Text str ->
            Html.text str

        InlineMath str ->
            KaTeX.inline str

        DisplayMath str ->
            KaTeX.display str


{-|

    > parse "Pythagoras sez $a^2 + b^2 = c^2$.  Yay!"
    Just [Text ("Pythagoras sez "),InlineMath ("a^2 + b^2 = c^2"),Text (".  Yay!")]

-}
parse : String -> Maybe (List Expr)
parse str =
    case Parser.run exprListParser str of
        Err _ ->
            Nothing

        Ok result ->
            Just result


{-|

    > run exprListParser"Pythagoras sez $a^2 + b^2 = c^2$.  Yay!"
    Ok [Text ("Pythagoras sez "),InlineMath ("a^2 + b^2 = c^2"),Text (".  Yay!")]

-}
exprListParser : Parser (List Expr)
exprListParser =
    many exprParser


exprParser : Parser Expr
exprParser =
    Parser.oneOf [ displayMathParser, inlineMathParser, textParser ]


ignoreInlineMathText : ( Int, Parser () )
ignoreInlineMathText =
    let
        ignoreTextBetweenDollarSigns =
            Parser.chompIf (\c -> c /= '$')
                |. Parser.chompWhile (\c -> c /= '$')

        ignoreTextBetweenDoubleTildes =
            Parser.chompIf (\c -> c /= '~')
                |. Parser.chompIf (\c -> c /= '~')
                |. Parser.chompUntil "~~"

        endOffset =
            1

        ignoreParser =
            Parser.oneOf
                [ ignoreTextBetweenDoubleTildes

                --  , ignoreTextBetweenDollarSigns
                ]
    in
    ( endOffset, ignoreParser )


textParser2 : Parser Expr
textParser2 =
    let
        ( endOffset, ignoreParser ) =
            ignoreInlineMathText
    in
    Parser.succeed (\start end src -> Text (String.slice start (end - endOffset) src))
        |= Parser.getOffset
        |. ignoreParser
        |= Parser.getOffset
        |= Parser.getSource


textParser : Parser Expr
textParser =
    let
        ignoreTextBetween ( startDelimiter, endDelimiter ) =
            -- Parser.chompUntil startDelimiter
            Parser.chompIf (\c -> c /= startDelimiter)
                -- |. Parser.chompUntil endDelimiter
                |. Parser.chompWhile (\c -> c /= endDelimiter)
    in
    Parser.succeed (\start end src -> Text (String.slice start end src))
        |= Parser.getOffset
        |. Parser.oneOf
            [ ignoreTextBetween ( '$', '$' )

            -- , ignoreTextBetween ( "~~", "~~" )
            -- , ignoreTextBetween ( "\\(", "\\)" )
            ]
        |= Parser.getOffset
        |= Parser.getSource


inlineMathParser : Parser Expr
inlineMathParser =
    let
        maybeExtractTextBetween ( startDelimiter, endDelimiter ) =
            Parser.succeed (\start end src -> InlineMath (String.slice start (end - 1) src))
                |. Parser.symbol startDelimiter
                |= Parser.getOffset
                |. Parser.chompUntil endDelimiter
                |. Parser.symbol endDelimiter
                |= Parser.getOffset
                |= Parser.getSource
    in
    Parser.oneOf
        [ maybeExtractTextBetween ( "$", "$" )
        , maybeExtractTextBetween ( "~~", "~~" )
        , maybeExtractTextBetween ( "\\(", "\\)" )
        ]


displayMathParser : Parser Expr
displayMathParser =
    Parser.succeed (\start end src -> DisplayMath (String.slice start (end - 2) src))
        |. Parser.symbol "$$"
        |= Parser.getOffset
        |. Parser.chompUntil "$$"
        |. Parser.symbol "$$"
        |= Parser.getOffset
        |= Parser.getSource


{-| Apply a parser zero or more times and return a list of the results.
-}
many : Parser a -> Parser (List a)
many p =
    Parser.loop [] (manyHelp p)


manyHelp : Parser a -> List a -> Parser (Parser.Step (List a) (List a))
manyHelp p vs =
    Parser.oneOf
        [ Parser.succeed (\v -> Parser.Loop (v :: vs))
            |= p
            |. Parser.spaces
        , Parser.succeed ()
            |> Parser.map (\_ -> Parser.Done (List.reverse vs))
        ]
