(*
    Tests for: Daniel`ARC`ARCInferLineFill
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCInferLineFill]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCInferLineFill[
        <|
            "Image" -> Daniel`ARC`ARCScene[
                {{1, 0, 0, 0}, {0, 2, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 2}}
            ],
            "Shape" -> <|"Name" -> "Line", "Angle" -> 135|>
        |>
    ]
    ,
    {1, 2}
    ,
    TestID -> "ARCInferLineFill-20221010-IANMUD"
]

Test[
    Daniel`ARC`ARCInferLineFill[
        <|
            "Image" -> Daniel`ARC`ARCScene[
                {{1, 0, 0, 0}, {0, 2, 0, 0}, {0, 0, 3, 0}, {0, 0, 0, 1}}
            ],
            "Shape" -> <|"Name" -> "Line", "Angle" -> 135|>
        |>
    ]
    ,
    {1, 2, 3} | {1, 2, 3, 1}
    ,
    TestID -> "ARCInferLineFill-20221010-PFDEEF"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCInferLineFill[
            <|
                "Image" -> Daniel`ARC`ARCScene[{{1, 1, 1, 1}}],
                "Shape" -> <|"Name" -> "Line", "Angle" -> 0|>
            |>
        ]
    ]
    ,
    Missing["NotFound", "FillPattern"]
    ,
    TestID -> "ARCInferLineFill-20221010-LEE0SR"
]