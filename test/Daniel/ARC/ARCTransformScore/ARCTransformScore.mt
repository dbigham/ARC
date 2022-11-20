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
    -0.7804722738154957
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
    -1.2604722738154956
    ,
    TestID -> "ARCTransformScore-20220804-P26PZ7"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "Type" -> "Move",
                "Offset" -> <|
                    "Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {4}|>, "Color"],
                    "X" -> 0
                |>
            |>
        ]
    ]
    ,
    -1.9004722738154958
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
    -2.2609445476309915
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
                "X" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"X" -> 2|>, "Height.Rank"], -1]
            |>
        ]
    ]
    ,
    -1.8535871324805668
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
    -0.8506481449381562
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
    -1.4341984052872978
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
    -0.8500000000000001
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
    -0.07
    ,
    TestID -> "ARCTransformScore-20220910-WIS6O9"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|"Color" -> Daniel`ARC`ClassValue[<|"Colors" -> Except[{5}]|>, "Color"]|>
        ]
    ]
    ,
    -0.6602738113403046
    ,
    TestID -> "ARCTransformScore-20220917-WMF8CB"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|"Color" -> Daniel`ARC`ClassValue[<|"XMiddle.Rank" -> 1|>, "Color"]|>
        ]
    ]
    ,
    -1.0040151617906417
    ,
    TestID -> "ARCTransformScore-20220917-9MWWQA"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "Color" -> Daniel`ARC`ClassValue[
                    <|"FilledProportion.InverseRank" -> 2|>,
                    "Color"
                ]
            |>
        ]
    ]
    ,
    -1.3598692513674213
    ,
    TestID -> "ARCTransformScore-20220917-PW5Q7G"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "Shape" -> <|
                    "Name" -> "Line",
                    "Angle" -> Inactive[Times][
                        Daniel`ARC`ObjectValue[
                            <|"Colors" -> {}, "Context" -> "Component"|>,
                            "Y2"
                        ],
                        45
                    ]
                |>,
                "Color" -> 5
            |>
        ]
    ]
    ,
    -3.085433065567418
    ,
    TestID -> "ARCTransformScore-20221005-5GARZ7"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|"Y" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Y.Rank" -> 2|>, "Y2"], 1]|>
        ]
    ]
    ,
    -0.8379521278602413
    ,
    TestID -> "ARCTransformScore-20221109-2U7DOJ"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|"Y" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Y.Rank" -> 2|>, "Y"], 3]|>
    ]
    ,
    -1.1079521278602413
    ,
    TestID -> "ARCTransformScore-20221109-O7NJE6"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "X2" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Area.Rank" -> 2|>, "X2"], -1]
            |>
        ]
    ]
    ,
    -0.5979795897113271
    ,
    TestID -> "ARCTransformScore-20221109-QOOSVQ"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "Width" -> Inactive[Plus][
                    Daniel`ARC`ObjectValue[<|"Area.Rank" -> 2|>, "Width"],
                    -2
                ]
            |>
        ]
    ]
    ,
    -0.8079795897113271
    ,
    TestID -> "ARCTransformScore-20221109-ARNAM4"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "X2" -> Inactive[Times][Daniel`ARC`ObjectValue[<|"Area.Rank" -> 2|>, "X"], 2]
            |>
        ]
    ]
    ,
    -1.237979589711327
    ,
    TestID -> "ARCTransformScore-20221109-6NC6YM"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|"Height" -> Inactive[Times][Daniel`ARC`ObjectValue["Parent", "Height"], 1/2]|>
    ]
    ,
    -1.19
    ,
    TestID -> "ARCTransformScore-20221111-194EFK"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|"Color" -> Daniel`ARC`ObjectValue[<|"Colors" -> {1, 2}|>, "X2.InverseRank"]|>
        ]
    ]
    ,
    -5.570399859209916
    ,
    TestID -> "ARCTransformScore-20221112-GHNTYO"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|"Width" -> Daniel`ARC`ObjectValue["InputObject", "Width"]|>
        ]
    ]
    ,
    0.04999999999999993
    ,
    TestID -> "ARCTransformScore-20221112-C6NMQW"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "Y2" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Area.Rank" -> 1|>, "Y"], -1]
            |>
        ]
    ]
    ,
    -0.47244997998398397
    ,
    TestID -> "ARCTransformScore-20221117-F3RFE8"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|
            "Y2Inverse" -> Inactive[Plus][
                Daniel`ARC`ObjectValue[<|"Area.Rank" -> 1|>, "Y2Inverse"],
                3
            ]
        |>
    ]
    ,
    -0.8024499799839839
    ,
    TestID -> "ARCTransformScore-20221117-E13VX6"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|
            "Y2Inverse" -> Inactive[Plus][
                Daniel`ARC`ObjectValue[<|"Area.Rank" -> 1|>, "Height"],
                1
            ]
        |>
    ]
    ,
    -1.2424499799839839
    ,
    TestID -> "ARCTransformScore-20221117-TF7XJB"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|"X" -> Daniel`ARC`ObjectValue["InputObject", "Area.Rank"]|>
        ]
    ]
    ,
    -1.0699999999999998
    ,
    TestID -> "ARCTransformScore-20221119-Y5XA9J"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCTransformScore[
            <|
                "X" -> Inactive[Plus][Daniel`ARC`ObjectValue["InputScene", "ObjectCount"], -1]
            |>
        ]
    ]
    ,
    -1.22
    ,
    TestID -> "ARCTransformScore-20221119-6ZGYOE"
]

Test[
    Daniel`ARC`ARCTransformScore[
        "Width" -> Inactive[Plus][
            Daniel`ARC`ObjectValue[<|"Area.InverseRank" -> 1|>, "Length"],
            2
        ]
    ]
    ,
    -1.0979795897113271
    ,
    TestID -> "ARCTransformScore-20221119-VJKK1U"
]