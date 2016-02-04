module AboutArrays (..) where

import ElmTest exposing (..)
import Array exposing (fromList)
import TestHelpers exposing (..)


testSuite =
  suite
    "About Arrays"
    [ test
        "arrays can be created from a list"
        (assertEqual (fromList [0,1]) (fromList [ 0, 1 ]))
    , test
        "arrays can also be turned into lists"
        (assertEqual [0,1] (Array.toList <| fromList [ 0, 1 ]))
    , test
        "length gives the number of elements"
        (assertEqual 3 (Array.length <| fromList [ 0, 1, 2 ]))
    , test
        "values can be pushed on to an array"
        (assertEqual (fromList [1,2,3]) (Array.push 3 <| fromList [ 1, 2 ]))
    , test
        "or two arrays can become one"
        (assertEqual (fromList [1,2,3]) (Array.append (fromList [ 1, 2 ]) (fromList [ 3 ])))
    , test
        "it is easy to create an empty array"
        (assertEqual (fromList [1]) (Array.push 1 <| Array.empty))
    , test
        "or to create an array of all the same value"
        (assertEqual (fromList ["a","a","a"]) (Array.repeat 3 "a"))
    , test
        "initialize creates an array based on the index"
        (assertEqual (fromList [0,2,4]) (Array.initialize 3 (\i -> i * 2)))
    , test
        "you can test whether an array is empty"
        (assertEqual True (Array.isEmpty Array.empty))
    , test
        "mapping is just like with lists"
        -- so is indexedMap, filter, foldl, foldr
        (assertEqual (fromList [0,3,6]) (Array.map (\i -> i * 3) <| fromList [ 0, 1, 2 ]))
    , test
        "unlike with lists, you can get the value at an index"
        (assertEqual (Just 1) (Array.get 1 <| fromList [ 0, 1, 2 ]))
    , test
        "and set the value at an index"
        (assertEqual (fromList [0,5,2]) (Array.set 1 5 <| fromList [ 0, 1, 2 ]))
    , test
        "or get a slice of the array"
        (assertEqual (fromList [1,2,3]) (Array.slice 1 4 <| fromList [ 0, 1, 2, 3, 4 ]))
    ]
