module AboutComparisonOperators (..) where

import ElmTest exposing (..)
import TestHelpers exposing (..)


testSuite =
  suite
    "About Comparison Operators"
    [ test
        "== tests for equality"
        (assert (1 == 1))
    , test
        "/= tests for inequality"
        (assert (1 /= 2))
    , test
        "< tests for less than"
        (assert (1 < 2))
    , test
        "<= tests for less than or equal to"
        (assert (1 <= 1))
    , test
        "> tests for greater than"
        (assert (2 > 1))
    , test
        ">= tests for greater than or equal to"
        (assert (2 >= 1))
    , test
        "Floats are comparable"
        (assert (1.6 >= 1.5))
    , test
        "Strings are comparable"
        (assert ("A string" == "A string"))
    , test
        "Chars are comparable"
        (assert ('a' == 'a'))
    , test
        "max returns the maximum of two comparables"
        (assertEqual 2 (max 1 2))
    , test
        "min returns the minimum of two comparables"
        (assertEqual 1 (min 1 2))
    , test
        "compare returns an Order"
        (assertEqual LT (compare 1 2))
    , test
        "functions can be made infix with ``"
        (assertEqual GT (2 `compare` 1))
    ]
