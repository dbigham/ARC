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

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "Color" -> 2,
            "Width" -> 5,
            "Height" -> 3
        |>
    ]
    ,
    Daniel`ARC`ARCScene[{{2, 2, 2, 2, 2}, {2, -1, -1, -1, 2}, {2, 2, 2, 2, 2}}]
    ,
    TestID -> "ARCInferObjectImage-20220811-URGH02"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|"Shapes" -> {<|"Name" -> "L"|>}, "Color" -> 2, "Width" -> 3, "Height" -> 3|>
    ]
    ,
    Daniel`ARC`ARCScene[{{2, -1, -1}, {2, -1, -1}, {2, 2, 2}}]
    ,
    TestID -> "ARCInferObjectImage-20220811-GLZ3XL"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|
            "Shapes" -> {
                <|"Name" -> "L", "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>|>
            },
            "Color" -> 2,
            "Width" -> 3,
            "Height" -> 3
        |>
    ]
    ,
    Daniel`ARC`ARCScene[{{2, 2, 2}, {2, -1, -1}, {2, -1, -1}}]
    ,
    TestID -> "ARCInferObjectImage-20220811-45W1N3"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|"Shapes" -> {<|"Name" -> "L"|>}, "Color" -> 2, "Width" -> 1, "Height" -> 3|>
    ]
    ,
    Daniel`ARC`ARCScene[{{2}, {2}, {2}}]
    ,
    TestID -> "ARCInferObjectImage-20220812-RO2AJV"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|"Shapes" -> {<|"Name" -> "L"|>}, "Color" -> 2, "Width" -> 3, "Height" -> 1|>
    ]
    ,
    Daniel`ARC`ARCScene[{{2, 2, 2}}]
    ,
    TestID -> "ARCInferObjectImage-20220812-EY6ET2"
]