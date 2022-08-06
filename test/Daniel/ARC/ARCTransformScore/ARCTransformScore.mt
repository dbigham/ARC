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
    0
    ,
    TestID -> "ARCTransformScore-20220804-R5DIE5"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|
            "Type" -> "Move",
            "Offset" -> <|"Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {4}|>, "X"], "X" -> 0|>
        |>
    ]
    ,
    -0.5
    ,
    TestID -> "ARCTransformScore-20220804-P26PZ7"
]

Test[
    Daniel`ARC`ARCTransformScore[
        <|
            "Type" -> "Move",
            "Offset" -> <|
                "Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {4}|>, "YRank"],
                "X" -> 0
            |>
        |>
    ]
    ,
    -1
    ,
    TestID -> "ARCTransformScore-20220804-XKHR3Z"
]

Test[
    Daniel`ARC`ARCTransformScore[<|"Type" -> "Move", "Offset" -> <|"Y" -> 1, "X" -> 0|>|>]
    ,
    0.1
    ,
    TestID -> "ARCTransformScore-20220805-0X48JF"
]