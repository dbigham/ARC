(*
    Tests for: Daniel`ARC`ARCInferObjectImage
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCInferObjectImage]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|
            "Shapes" -> {<|"Name" -> "Square", "Filled" -> True|>},
            "Color" -> 2,
            "Width" -> 3,
            "Height" -> 3
        |>
    ]
    ,
    Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 2, 2}, {2, 2, 2}}]
    ,
    TestID -> "ARCInferObjectImage-20220810-1UPZXG"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|
            "Shapes" -> {<|"Name" -> "Square", "Filled" -> False|>},
            "Color" -> 2,
            "Width" -> 3,
            "Height" -> 3
        |>
    ]
    ,
    Daniel`ARC`ARCScene[{{2, 2, 2}, {2, -1, 2}, {2, 2, 2}}]
    ,
    TestID -> "ARCInferObjectImage-20220810-QDW3F4"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|"Shapes" -> {<|"Name" -> "Square"|>}, "Color" -> 2, "Width" -> 3, "Height" -> 3|>
    ]
    ,
    Daniel`ARC`ARCScene[{{2, 2, 2}, {2, -1, 2}, {2, 2, 2}}]
    ,
    TestID -> "ARCInferObjectImage-20220810-Y4ZFW8"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|"Shapes" -> {<|"Name" -> "Pixel"|>}, "Color" -> 2, "Width" -> 1, "Height" -> 1|>
    ]
    ,
    Daniel`ARC`ARCScene[{{2}}]
    ,
    TestID -> "ARCInferObjectImage-20220810-JRVKGT"
]