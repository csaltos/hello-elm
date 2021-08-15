module Main exposing (main)

import Browser
import Html exposing (text)

main = Browser.sandbox { init = "Hello World", view = view, update = update }

view hello =
    text hello

update msg hello =
    hello
