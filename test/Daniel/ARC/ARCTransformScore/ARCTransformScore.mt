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
    -0.7804536101718726
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
    -1.2604536101718726
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
    -1.8004536101718727
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
    -0.26
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
    -1.5609072203437453
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
    -2.053587132480567
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
    -0.6506225774829856
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
    -1.5841984052872977
    ,
    TestID -> "ARCTransformScore-20220905-3095OU"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|"Width" -> Daniel`ARC`ObjectValue["InputScene", "ObjectCount"]|>
        ]
    ]
    ,
    -1.2
    ,
    TestID -> "ARCTransformScore-20220909-WAIQU4"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore["X2" -> 6]
    ]
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
    -0.020000000000000004
    ,
    TestID -> "ARCTransformScore-20220910-WIS6O9"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|"Color" -> Daniel`ARC`ClassValue[<|"Colors" -> Except[{5}]|>, "Color"]|>
    ]
    ,
    -0.6602629759044045
    ,
    TestID -> "ARCTransformScore-20220917-WMF8CB"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|"Color" -> Daniel`ARC`ClassValue[<|"XMiddle.Rank" -> 1|>, "Color"]|>
    ]
    ,
    -1.0689698078707184
    ,
    TestID -> "ARCTransformScore-20220917-9MWWQA"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|
            "Color" -> Daniel`ARC`ClassValue[<|"FilledProportion.InverseRank" -> 2|>, "Color"]
        |>
    ]
    ,
    -1.4384430978086482
    ,
    TestID -> "ARCTransformScore-20220917-PW5Q7G"
]