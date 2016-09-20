module Humanizer exposing (time)

import Time

time t =
    if Time.inSeconds t < 45 then
        toString (Time.inSeconds t) ++ " seconds"
    else if Time.inMinutes t < 45 then
        toString (round (Time.inMinutes t)) ++ " minutes"
    else if Time.inHours t < 19 then
        toString (round (Time.inHours t)) ++ " hours"
    else if (Time.inHours t) / 24 < 24 then
        toString (round (Time.inHours t / 24)) ++ " days"
    else
        "1 month"
