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
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Square"|>},
            "Width" -> 2,
            "Height" -> 2,
            "Color" -> 1,
            "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> 1|>|>
        |>
    ]
    ,
    Daniel`ARC`ARCScene[{{1, 1}, {1, 1}}]
    ,
    TestID -> "ARCInferObjectImage-20220810-4PR670"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Square"|>},
            "Width" -> 1,
            "Height" -> 1,
            "Color" -> 1,
            "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> 1|>|>
        |>
    ]
    ,
    Daniel`ARC`ARCScene[{{1}}]
    ,
    TestID -> "ARCInferObjectImage-20220810-AZB0EM"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Square"|>},
            "Width" -> 4,
            "Height" -> 4,
            "Color" -> 1,
            "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> 1|>|>
        |>
    ]
    ,
    Daniel`ARC`ARCScene[{{1, 1, 1, 1}, {1, -1, -1, 1}, {1, -1, -1, 1}, {1, 1, 1, 1}}]
    ,
    TestID -> "ARCInferObjectImage-20220810-1447B8"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|
            "Shapes" -> {
                <|"Name" -> "Rectangle", "Filled" -> False|>,
                <|"Name" -> "Square", "Filled" -> False|>
            },
            "Width" -> 4,
            "Height" -> 4,
            "Color" -> 1,
            "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> 1|>|>
        |>
    ]
    ,
    Daniel`ARC`ARCScene[{{1, 1, 1, 1}, {1, 1, 1, 1}, {1, 1, 1, 1}, {1, 1, 1, 1}}]
    ,
    TestID -> "ARCInferObjectImage-20220810-I5LWMH"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|"Shapes" -> {<|"Name" -> "Pixel"|>}, "Width" -> 1, "Height" -> 1, "Color" -> 1|>
    ]
    ,
    Daniel`ARC`ARCScene[{{1}}]
    ,
    TestID -> "ARCInferObjectImage-20220810-Q3JJZY"
]

Test[
    Daniel`ARC`ARCInferObjectImage[
        <|
            "Image" -> Daniel`ARC`ARCScene[
                {{5, 5, 5, 5}, {5, -1, -1, 5}, {5, -1, -1, 5}, {5, 5, 5, 5}}
            ],
            "Position" -> {2, 2}
        |>
    ]
    ,
    Daniel`ARC`ARCScene[{{5, 5, 5, 5}, {5, -1, -1, 5}, {5, -1, -1, 5}, {5, 5, 5, 5}}]
    ,
    TestID -> "ARCInferObjectImage-20220810-POSEOU"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCInferObjectImage[
            <|
                "Shapes" -> {<|"Name" -> "Square", "Filled" -> True|>},
                "Color" -> 2,
                "Width" -> 3,
                "Height" -> 3
            |>
        ]
    ]
    ,
    Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 2, 2}, {2, 2, 2}}]
    ,
    TestID -> "ARCInferObjectImage-20220810-XINP13"
]