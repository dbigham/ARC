(*
    Tests for: Daniel`ARC`ARCMakeObjectsReferenceable
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCMakeObjectsReferenceable]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCMakeObjectsReferenceable[
                Daniel`ARC`ARCParseExamples[file = "1caeab9d"][[All, "Input"]]
            ]
        ]
    ]
    ,
    <|
        Daniel`ARC`Object[<|"Colors" -> {2}|>] -> <|
            "Height" -> 2,
            "Shapes" -> {<|"Name" -> "Rectangle"|>}
        |>,
        Daniel`ARC`Object[<|"Colors" -> {1}|>] -> <|
            "Height" -> 2,
            "Shapes" -> {<|"Name" -> "Rectangle"|>}
        |>,
        Daniel`ARC`Object[<|"Colors" -> {4}|>] -> <|
            "Height" -> 2,
            "Shapes" -> {<|"Name" -> "Rectangle"|>}
        |>,
        Daniel`ARC`Object[<|"Y" -> 3|>] -> <|
            "Height" -> 2,
            "Shapes" -> {<|"Name" -> "Rectangle"|>}
        |>,
        Daniel`ARC`Object[<|"X" -> 2|>] -> <|
            "Height" -> 2,
            "Shapes" -> {<|"Name" -> "Rectangle"|>}
        |>
    |>
    ,
    TestID -> "ARCMakeObjectsReferenceable-20220723-84LXFB"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCMakeObjectsReferenceable[
                Daniel`ARC`ARCParseExamples[file = "0ca9ddb6"][[All, "Input"]]
            ]
        ]
    ]
    ,
    <|
        Daniel`ARC`Object[<|"X" -> 3|>] -> <|
            "Area" -> 1,
            "AspectRatio" -> 1,
            "FilledArea" -> 1,
            "Height" -> 1,
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "Width" -> 1
        |>
    |>
    ,
    TestID -> "ARCMakeObjectsReferenceable-20220723-V2H68K"
]