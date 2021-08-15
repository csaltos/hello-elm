module Main exposing (main)

import Browser
import Html exposing (button, div, p, text)
import Html.Events exposing (onClick)

type alias Model =
    { hello : String, name: String, age: Int }

type Msg = Clicked | ClickedAgain

initialModel = { hello = "Hello World", name = "Carlos", age = 35 }

main = Browser.sandbox { init = initialModel, view = view, update = update }

view model =
    div []
    [
        p [] [ text model.hello ]
        , p [] [ text model.name ]
        , p [] [ text (String.fromInt model.age) ]
        , button [ onClick Clicked ] [ text "Click me!" ]
        , button [ onClick ClickedAgain ] [ text "Click me too!" ]
    ]

update msg model =
    case msg of
        Clicked ->
            { model | age = model.age + 1 }
            
        ClickedAgain ->
            { model | name = model.name ++ "!" }

            