(*
    Tests for: Daniel`ARC`ARCRuleSetScore
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCRuleSetScore]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRuleSetScore[
            {
                <|"Color" -> 1|> -> <|"X" -> 1, "Examples" -> {1, 2, 3}|>,
                <|"Color" -> 2|> -> <|"X" -> 2|>
            }
        ]
    ]
    ,
    -0.19689732620149433
    ,
    TestID -> "ARCRuleSetScore-20220825-YKR23C"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRuleSetScore[
            {<|"X" -> 1|> -> <|"Color" -> 1|>, <|"X" -> 2|> -> <|"Color" -> 2|>}
        ]
    ]
    ,
    -1.0191866507758092
    ,
    TestID -> "ARCRuleSetScore-20220826-6EL1X5"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRuleSetScore[
            {
                <|"Shape" -> <|"Name" -> "Square", "Filled" -> True|>|> -> <|
                    "Image" -> {{5, 5, 5}}
                |>,
                <|"Shape" -> Except[<|"Name" -> "Square", "Filled" -> True|>]|> -> <|
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
            }
        ]
    ]
    ,
    -2.7056574575108066
    ,
    TestID -> "ARCRuleSetScore-20221005-WC2JWK"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRuleSetScore[
            {
                <|"X" -> 1|> -> <|"Color" -> 1, "ExampleCount" -> 1|>,
                <|"X" -> 2|> -> <|"Color" -> 2, "ExampleCount" -> 2|>
            }
        ]
    ]
    ,
    -1.6340447318308224
    ,
    TestID -> "ARCRuleSetScore-20221005-0TF1Z0"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRuleSetScore[
            {<|"X" -> 1|> -> <|"Color" -> 1, "ExampleCount" -> 1, "UseCount" -> 1|>}
        ]
    ]
    ,
    -11.582971888569093
    ,
    TestID -> "ARCRuleSetScore-20221005-23M5PG"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRuleSetScore[
            {<|"X" -> 1|> -> <|"Color" -> 1, "ExampleCount" -> 1, "UseCount" -> 2|>}
        ]
    ]
    ,
    -9.120624825711085
    ,
    TestID -> "ARCRuleSetScore-20221005-DWLP64"
]

Test[
    Daniel`ARC`ARCRuleSetScore[
        {
            {
                <|
                    "SceneAsSingleObject" -> True,
                    "Rules" -> {
                        <||> -> <|
                            "Same" -> True,
                            "Examples" -> {1, 2, 3},
                            "ExampleCount" -> 3,
                            "UseCount" -> 3,
                            "InputObjects" -> {
                                "49b747d8-4bc2-4ba7-bc28-f48b31c8fff8",
                                "c52e5327-9c44-444f-90bc-cbf75ced50f5",
                                "98f7c073-bde5-4a08-ab9a-e235ef4d3756"
                            }
                        |>
                    }
                |>,
                <|
                    "SceneAsSingleObject" -> True,
                    "Rules" -> {
                        <||> -> <|
                            "Transform" -> <|"Type" -> "Flip", "Direction" -> "Horizontal"|>,
                            "Examples" -> {1, 2, 3},
                            "ExampleCount" -> 3,
                            "UseCount" -> 3,
                            "InputObjects" -> {
                                "49b747d8-4bc2-4ba7-bc28-f48b31c8fff8",
                                "c52e5327-9c44-444f-90bc-cbf75ced50f5",
                                "98f7c073-bde5-4a08-ab9a-e235ef4d3756"
                            }
                        |>
                    }
                |>
            },
            {
                <|
                    "SceneAsSingleObject" -> True,
                    "Rules" -> {
                        <||> -> <|
                            "Transform" -> <|"Type" -> "Flip", "Direction" -> "Vertical"|>
                        |>
                    }
                |>,
                <|
                    "SceneAsSingleObject" -> True,
                    "Rules" -> {
                        <||> -> <|"Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>|>
                    }
                |>
            }
        }
    ]
    ,
    5.3280708480932555
    ,
    TestID -> "ARCRuleSetScore-20221005-UT0GIB"
]