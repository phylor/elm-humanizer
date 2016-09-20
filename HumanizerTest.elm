module HumanizerTest exposing (main)

import Humanizer

import Html exposing (..)
import Time exposing (..)

main =
    table []
        [ view "44 seconds" (44 * second)
        , view "one minute" (45 * second)
        , view "one minute" (104 * second)
        , view "two minutes" (105 * second)
        , view "ten hours" (10 * hour)
        , view "four days" (4 * 24 * hour)
        , view "a month" (25 * 24 * hour)
        ]

view expected input =
    tr []
        [ td [] [ text expected ]
        , td [] [ text (Humanizer.time input) ]
        ]
