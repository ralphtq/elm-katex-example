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
    [ Data.ampere
    , Data.avogadroConstant
    , Data.bohrMagneton
    , Data.bohrRadius
    , Data.coherentUnitOfSystem
    , Data.comptonWavelength
    , Data.conditionalEntropy
    , Data.countablyInfinite
    , Data.hartreeEnergy
    , Data.informationContent
    , Data.irrelevance
    , Data.quantityKindDimensionVector
    , Data.qkdv_A0Em1L2I0M1H0Tm2D0
    , Data.fineStructureConstant
    , Data.quantityType
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
        [ Html.h2 []
            [ Html.text "QUDT LaTeX Rendering Tests - v2" ]
        , Html.div []
            (model.sourceTexts
                |> List.map
                    (\text ->
                        Html.div []
                            [ Html.hr [] []
                            , Expression.compile text
                            ]
                    )
            )
        ]
