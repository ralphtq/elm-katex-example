module Main exposing (main)

import Browser
import Data
import Expression
import Html exposing (Html)
import Html.Attributes


main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


type alias Model =
    { sourceTexts : List String
    }


type Msg
    = NoOp


type alias Flags =
    {}


initialTexts =
    -- Data.initialText
    [ Data.ampere
    , Data.avogadroConstant
    , Data.quantityType
    , Data.bohrMagneton
    , Data.fineStructureConstant
    , Data.coherentUnitOfSystem
    , Data.countablyInfinite
    , Data.unit
    ]


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( { sourceTexts = initialTexts
      }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    Html.div []
        (model.sourceTexts
            |> List.map Expression.compile
        )
