(*
    Tests for: Daniel`ARC`ARCChooseBestTransform
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCChooseBestTransform]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCChooseBestTransform[
        {
            <|
                "Transform" -> <|
                    "Type" -> "Move",
                    "Offset" -> <|
                        "Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {4}|>, "YRank"],
                        "X" -> 0
                    |>
                |>
            |>,
            <|
                "Transform" -> <|
                    "Type" -> "Move",
                    "Position" -> <|"Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {1}|>, "Y"]|>
                |>
            |>
        }
    ]
    ,
    <|
        "Transform" -> <|
            "Type" -> "Move",
            "Position" -> <|"Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {1}|>, "Y"]|>
        |>
    |>
    ,
    TestID -> "ARCChooseBestTransform-20220804-V1W2ZT"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCChooseBestTransform[
            {
                <|
                    "Transform" -> <|
                        "Type" -> "Move",
                        "Position" -> <|
                            "Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {4}|>, "Y"]
                        |>
                    |>
                |>,
                <|
                    "Transform" -> <|
                        "Type" -> "Move",
                        "Offset" -> <|
                            "Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {1}|>, "YRank"],
                            "X" -> 0
                        |>
                    |>
                |>
            }
        ]
    ]
    ,
    <|
        "Transform" -> <|
            "Type" -> "Move",
            "Position" -> <|"Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {4}|>, "Y"]|>
        |>
    |>
    ,
    TestID -> "ARCChooseBestTransform-20220805-WL0Y67"
]

Test[
    Daniel`ARC`ARCChooseBestTransform[
        {
            "X" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Y2InverseRank" -> 2|>, "Width"], -1],
            "XInverse" -> 0
        }
    ]
    ,
    "XInverse" -> 0
    ,
    TestID -> "ARCChooseBestTransform-20220818-K8OYIN"
]

Test[
    Daniel`ARC`ARCChooseBestTransform[{"X" -> 0, "XInverse" -> 0}]
    ,
    "X" -> 0
    ,
    TestID -> "ARCChooseBestTransform-20220818-247NKD"
]