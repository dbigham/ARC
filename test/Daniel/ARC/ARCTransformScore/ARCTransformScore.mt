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
    -0.8
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
    -1.28
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
    -1.82
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
    -0.36
    ,
    TestID -> "ARCTransformScore-20220805-0X48JF"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|
            "Type" -> "Move",
            "Offset" -> <|
                "Y" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Colors" -> {8}|>, "Y"], -5],
                "X" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Colors" -> {8}|>, "X"], -4]
            |>
        |>
    ]
    ,
    -1.4
    ,
    TestID -> "ARCTransformScore-20220818-PBN4K1"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|"Type" -> "Move", "BlockedBy" -> Daniel`ARC`Object[<|"Colors" -> {8}|>]|>
    ]
    ,
    -0.56
    ,
    TestID -> "ARCTransformScore-20220818-8BHZGI"
]