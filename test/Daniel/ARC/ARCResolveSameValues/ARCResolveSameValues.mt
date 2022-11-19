(*
    Tests for: Daniel`ARC`ARCResolveSameValues
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCResolveSameValues]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCResolveSameValues[
        <|
            "Shape" -> <|
                "Name" -> "Rectangle",
                "Filled" -> True,
                "Interior" -> "Same",
                "Border" -> "Same"
            |>
        |>,
        <|"Shape" -> <|"Interior" -> "A", "Border" -> "B"|>|>
    ]
    ,
    <|
        "Shape" -> <|
            "Name" -> "Rectangle",
            "Filled" -> True,
            "Interior" -> "A",
            "Border" -> "B"
        |>
    |>
    ,
    TestID -> "ARCResolveSameValues-20221119-SKZXWG"
]