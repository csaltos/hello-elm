module Main exposing (main)

import Browser
import Html exposing (text)

type alias Model =
    { hello : String, name: String, age: Int }

initialModel = { hello = "Hello World", name = "Carlos", age = 35 }

main = Browser.sandbox { init = initialModel, view = view, update = update }

view model =
    text (model.hello ++ " " ++ model.name ++ " " ++ (String.fromInt model.age))

update msg model =
    model
