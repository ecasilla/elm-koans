module AboutNumberConversions (..) where

import ElmTest exposing (..)
import TestHelpers exposing (..)


testSuite =
  suite
    "About Number Conversions"
    [ test
        "toFloat converts an int to a float"
        (assertEqual 5.0 (toFloat 5))
    , test
        "floor converts a float to an int (rounding down)"
        (assertEqual 3 (floor 3.6))
    , test
        "floor converts a float to an int (rounding down)"
        (assertEqual -4 (floor -3.6))
    , test
        "ceiling converts a float to an int (rounding up)"
        (assertEqual 4 (ceiling 3.6))
    , test
        "ceiling converts a float to an int (rounding up)"
        (assertEqual -3 (ceiling -3.6))
    , test
        "round converts a float to an int (rounding to the closest int)"
        (assertEqual 4 (round 3.6))
    , test
        "round converts a float to an int (rounding to the closest int)"
        (assertEqual -4 (round -3.6))
    , test
        "truncate converts a float to an int (rounding towards 0)"
        (assertEqual 3 (truncate 3.6))
    , test
        "truncate converts a float to an int (rounding towards 0)"
        (assertEqual -3 (truncate -3.6))
    ]
