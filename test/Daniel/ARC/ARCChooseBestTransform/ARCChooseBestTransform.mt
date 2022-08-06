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