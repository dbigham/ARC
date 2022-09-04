(*
    Tests for: Daniel`ARC`ARCSurroundingPixels
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCSurroundingPixels]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCSurroundingPixels[
        <|"X" -> 2, "Y" -> 2, "X2" -> 2, "Y2" -> 2|>,
        {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}
    ]
    ,
    {1, 2, 3, 4, 6, 7, 8, 9}
    ,
    TestID -> "ARCSurroundingPixels-20220904-IJ2SCS"
]

Test[
    Daniel`ARC`ARCSurroundingPixels[
        <|"X" -> 1, "Y" -> 1, "X2" -> 1, "Y2" -> 1|>,
        {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}
    ]
    ,
    {
        Missing["OutOfBounds"],
        Missing["OutOfBounds"],
        Missing["OutOfBounds"],
        Missing["OutOfBounds"],
        2,
        Missing["OutOfBounds"],
        4,
        5
    }
    ,
    TestID -> "ARCSurroundingPixels-20220904-T8TTP9"
]