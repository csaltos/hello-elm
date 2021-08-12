module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


type alias Model =
    { count : Int, item : String }


initialModel : Model
initialModel =
    { count = 100, item = "Boats" }


type Msg
    = Increment
    | Decrement
    | Increment10
    | Decrement10


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | count = model.count + 1 }

        Decrement ->
            { model | count = model.count - 1 }

        Increment10 ->
            { model | count = model.count + 10 }
            
        Decrement10 ->
            { model | count = model.count - 10 }


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Increment ] [ text ("Add " ++ model.item) ]
        , div [] [ text <| String.fromInt model.count ]
        , div [] [ text model.item ]
        , button [ onClick Decrement ] [ text ("Remove " ++ model.item) ]
        , button [ onClick Increment10 ] [ text "+10" ]
        , button [ onClick Decrement10 ] [ text "-10" ]
        ]


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }
