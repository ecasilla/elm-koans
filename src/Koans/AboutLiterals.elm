module AboutLiterals (..) where

import ElmTest exposing (..)
import TestHelpers exposing (..)


-- Single line comments begin with "--"
{- Multi line comments
begin with "{-" and end with "-}"
-}


testSuite =
  suite
    "About Literals"
    [ test
        "strings are enclosed in double quotes"
        (assertEqual "A string" "A string")
    , test
        "characters are enclosed in single quotes"
        (assertEqual 'A' 'A')
    , test
        "floats have a decimal"
        (assertEqual 42.24 42.24)
    , test
        "integers do not"
        (assertEqual 42 42)
    , test
        "number literals can be integers"
        (assertEqual 42 42)
    , test
        "number literals can be floats"
        (assertEqual 42 42.0)
    , test
        "lists are denoted by brackets"
        (assertEqual [ 1, 2, 3 ] [1,2,3])
    ]
