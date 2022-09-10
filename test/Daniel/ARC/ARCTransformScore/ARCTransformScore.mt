(*
    Tests for: Daniel`ARC`ARCTransformScore
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCTransformScore]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "Type" -> "Move",
                "Position" -> <|
                    "Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {4}|>, "Y"],
                    "X" -> 0
                |>
            |>
        ]
    ]
    ,
    -0.65
    ,
    TestID -> "ARCTransformScore-20220804-R5DIE5"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "Type" -> "Move",
                "Offset" -> <|
                    "Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {4}|>, "X"],
                    "X" -> 0
                |>
            |>
        ]
    ]
    ,
    -1.13
    ,
    TestID -> "ARCTransformScore-20220804-P26PZ7"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "Type" -> "Move",
                "Offset" -> <|
                    "Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {4}|>, "YRank"],
                    "X" -> 0
                |>
            |>
        ]
    ]
    ,
    -1.67
    ,
    TestID -> "ARCTransformScore-20220804-XKHR3Z"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|"Type" -> "Move", "Offset" -> <|"Y" -> 1, "X" -> 0|>|>
        ]
    ]
    ,
    -0.21999999999999995
    ,
    TestID -> "ARCTransformScore-20220805-0X48JF"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "Type" -> "Move",
                "Offset" -> <|
                    "Y" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Colors" -> {8}|>, "Y"], -5],
                    "X" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Colors" -> {8}|>, "X"], -4]
                |>
            |>
        ]
    ]
    ,
    -1.24
    ,
    TestID -> "ARCTransformScore-20220818-PBN4K1"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|"Type" -> "Move", "BlockedBy" -> Daniel`ARC`Object[<|"Colors" -> {8}|>]|>
        ]
    ]
    ,
    -0.48
    ,
    TestID -> "ARCTransformScore-20220818-8BHZGI"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "Color" -> Inactive[Plus][
                    Daniel`ARC`ObjectValue[<|"X" -> 2|>, "Height.Rank"],
                    -1
                ]
            |>
        ]
    ]
    ,
    -1.58
    ,
    TestID -> "ARCTransformScore-20220825-4RBNEY"
]

Test[
    Daniel`ARC`ARCTransformScore[<|"Color" -> 4|>]
    ,
    -0.1
    ,
    TestID -> "ARCTransformScore-20220825-CWTDTY"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "X" -> Inactive[Plus][
                    Daniel`ARC`ObjectValue[
                        <|"Colors" -> {1}, "Context" -> "Component"|>,
                        "XRelative"
                    ],
                    1
                ]
            |>
        ]
    ]
    ,
    -0.5300000000000001
    ,
    TestID -> "ARCTransformScore-20220905-TREZ4Z"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "X" -> Inactive[Plus][
                    Daniel`ARC`ObjectValue[
                        <|"XMiddle" -> 3, "Context" -> "Component"|>,
                        "Width"
                    ],
                    1
                ]
            |>
        ]
    ]
    ,
    -1.05
    ,
    TestID -> "ARCTransformScore-20220905-3095OU"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|"Width" -> Daniel`ARC`ObjectValue["InputScene", "ObjectCount"]|>
    ]
    ,
    -1.2
    ,
    TestID -> "ARCTransformScore-20220909-WAIQU4"
]

Test[
    Daniel`ARC`ARCTransformScore["X2" -> 6]
    ,
    -0.07
    ,
    TestID -> "ARCTransformScore-20220910-SLVDL3"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore["X2Inverse" -> 1]
    ]
    ,
    0.
    ,
    TestID -> "ARCTransformScore-20220910-WIS6O9"
]