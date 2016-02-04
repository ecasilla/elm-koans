module AboutLists (..) where

import ElmTest exposing (..)
import List exposing ((::))
import TestHelpers exposing (..)


testSuite =
  suite
    "About Lists"
    [ test
        "list literals are denoted by brackets"
        (assertEqual [ 1, 2, 3 ] [1,2,3])
    , test
        "length gives the length of a list"
        (assertEqual 3 (List.length [ 1, 2, 3 ]))
    , test
        "isEmpty determines if a list is empty"
        (assertEqual True (List.isEmpty []))
    , test
        "reverse revereses a list"
        (assertEqual [3,2,1] (List.reverse [ 1, 2, 3 ]))
    , test
        "member tests if a list includes a value"
        (assertEqual True (List.member 2 [ 1, 2, 3 ]))
    , test
        "head returns the first item in a list"
        (assertEqual (Just 1) (List.head [ 1, 2, 3 ]))
    , test
        "minimum returns the minimum of a list of comparables"
        (assertEqual (Just 1) (List.minimum [ 1, 2, 3 ]))
    , test
        "maximum returns the maximum of a list of comparables"
        (assertEqual (Just 'c') (List.maximum [ 'a', 'b', 'c' ]))
    , test
        "take returns the first n items in a list"
        (assertEqual [1,2] (List.take 2 [ 1, 2, 3 ]))
    , test
        "drop returns the list without the first n items"
        (assertEqual [3] (List.drop 2 [ 1, 2, 3 ]))
    , test
        "filter returns the elements that return true for a predicate function"
        (assertEqual [2,4] (List.filter (\x -> x % 2 == 0) [ 1, 2, 3, 4 ]))
    , test
        "all tests whether all elements of a list return true for a predicate function"
        (assertEqual True (List.all (\x -> x % 2 == 0) [ 2, 4 ]))
    , test
        "any tests whether any elements of a list return true for a predicate function"
        (assertEqual True (List.any (\x -> x % 2 == 0) [ 1, 2, 3 ]))
    , test
        "repeat returns a list with n copies of a value"
        (assertEqual [1,1,1,1] (List.repeat 4 1))
    , test
        "sum returns the sum of a list of numbers"
        (assertEqual 6 (List.sum [ 1, 2, 3 ]))
    , test
        "product returns the product of a list of numbers"
        (assertEqual 6 (List.product [ 1, 2, 3 ]))
    , test
        "sort sorts a list of comparables"
        (assertEqual ['a','b','c'] (List.sort [ 'c', 'a', 'b' ]))
    , test
        "sortBy sorts using a function that returns a comparable"
        (assertEqual [6,10,8] (List.sortBy (\x -> x % 3) [ 10, 6, 8 ]))
    , test
        ":: is the cons operator"
        (assertEqual [1,2,3] (1 :: [ 2, 3 ]))
    , test
        "append puts 2 lists together"
        (assertEqual [1,2,3,4] (List.append [ 1, 2 ] [ 3, 4 ]))
    , test
        "concat appends the elements in a list of lists"
        (assertEqual [1,2,3,4] (List.concat [ [ 1, 2 ], [ 3, 4 ] ]))
    , test
        "intersperse puts a value between all elements of a list"
        (assertEqual [2,1,3,1,4] (List.intersperse 1 [ 2, 3, 4 ]))
    , test
        "map applies a function to every element of a list"
        (assertEqual [2,4,6] (List.map (\x -> 2 * x) [ 1, 2, 3 ]))
    , test
        "map2 applies a function to elements from 2 lists"
        (assertEqual [4,10,18] (List.map2 (\x y -> x * y) [ 1, 2, 3 ] [ 4, 5, 6 ]))
      -- corresponding functions exist up to map6
    , test
        "indexedMap applies a function to the index of an element and that element"
        (assertEqual [1,1,1] (List.indexedMap (\x y -> y - x) [ 1, 2, 3 ]))
    , test
        "foldl reduces a list from the left"
        (assertEqual "dcba" (List.foldl (\x y -> x ++ y) "a" [ "b", "c", "d" ]))
    , test
        "foldr reduces a list from the right"
        (assertEqual "bcda" (List.foldr (\x y -> x ++ y) "a" [ "b", "c", "d" ]))
    , test
        "scanl reduces a list from the left, building a list of intermediate results"
        (assertEqual ["a","ba","cba","dcba"] (List.scanl (\x y -> x ++ y) "a" [ "b", "c", "d" ]))
    ]
