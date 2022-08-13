(*
    Tests for: Daniel`ARC`ARCObjectCommonalities
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCObjectCommonalities]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCObjectCommonalities[
        {<|"a" -> 1, "b" -> 2, "c" -> 3|>, <|"a" -> 1, "b" -> 2|>, <|"a" -> 1, "b" -> 3|>}
    ]
    ,
    <|"a" -> 1|>
    ,
    TestID -> "ARCObjectCommonalities-20220812-8TSP1Y"
]

Test[
    Daniel`ARC`ARCObjectCommonalities[
        {<|"b" -> 2, "c" -> 3|>, <|"a" -> 1, "b" -> 2|>, <|"a" -> 1, "b" -> 2|>}
    ]
    ,
    <|"b" -> 2|>
    ,
    TestID -> "ARCObjectCommonalities-20220812-T0RFMD"
]

Test[
    Daniel`ARC`ARCObjectCommonalities[{<|"Shapes" -> {1, 2, 3}|>, <|"Shapes" -> {1, 2}|>}]
    ,
    <|"Shapes" -> {1, 2}|>
    ,
    TestID -> "ARCObjectCommonalities-20220812-O86QYO"
]