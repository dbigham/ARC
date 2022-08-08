(*
    Tests for: Daniel`ARC`ARCFindRules
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCFindRules]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Utility`BlockUUID[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "0ca9ddb6"]["Train"]]
            ]
        ]
    ]
    ,
    {
        <|"Colors" -> {2}|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> -1,
                                "X" -> -1,
                                "YInverse" -> -1,
                                "XInverse" -> -1
                            |>
                        |>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> -1,
                                "X" -> 1,
                                "YInverse" -> -1,
                                "XInverse" -> 1
                            |>
                        |>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> 1,
                                "X" -> -1,
                                "YInverse" -> 1,
                                "XInverse" -> -1
                            |>
                        |>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> 1,
                                "X" -> 1,
                                "YInverse" -> 1,
                                "XInverse" -> 1
                            |>
                        |>
                    |>
                }
            |>,
            "Examples" -> {1, 2, 3},
            "ExampleCount" -> 3,
            "UseCount" -> 4,
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e6",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742gc"
            }
        |>,
        <|"Colors" -> {1}|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{-1, 7, -1}, {7, -1, 7}, {-1, 7, -1}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> -1,
                                "X" -> -1,
                                "YInverse" -> -1,
                                "XInverse" -> -1
                            |>
                        |>
                    |>
                }
            |>,
            "Examples" -> {1, 2, 3},
            "ExampleCount" -> 3,
            "UseCount" -> 4,
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d4",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e4",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e3",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742gb"
            }
        |>,
        <|"Colors" -> Except[{2} | {1}]|> -> <|
            "Same" -> True,
            "Examples" -> {2, 3},
            "ExampleCount" -> 2,
            "UseCount" -> 2,
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e7",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742gd"
            }
        |>
    }
    ,
    TestID -> "ARCFindRules-20220719-XYQH41"
]

Test[
    Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "3c9b0459"]["Train"]]
    ,
    {<||> -> <|"Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>|>}
    ,
    TestID -> "ARCFindRules-20220722-MAF6JZ"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Utility`BlockUUID[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "321b1fc6"]["Train"]]
            ]
        ]
    ]
    ,
    {
        <|"Colors" -> {8}|> -> <|
            "Image" -> Daniel`ARC`ObjectValue[<|"Colors" -> Except[{8}]|>, "Image"],
            "Examples" -> {1, 2},
            "ExampleCount" -> 2,
            "UseCount" -> 6,
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d7",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d8",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d9",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742f5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742f6",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742g7"
            }
        |>,
        <|"Colors" -> Except[{8}]|> -> <|
            "Transform" -> <|"Type" -> "Delete"|>,
            "Examples" -> {1, 2},
            "ExampleCount" -> 2,
            "UseCount" -> 2,
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742ek",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742ga"
            }
        |>
    }
    ,
    TestID -> "ARCFindRules-20220725-AR54Q9"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Utility`BlockUUID[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "05f2a901"]["Train"]]
            ]
        ]
    ]
    ,
    {
        <|"Colors" -> {2}|> -> <|
            "Transform" -> <|
                "Type" -> "Move",
                "BlockedBy" -> Daniel`ARC`Object[<|"Colors" -> {8}|>]
            |>,
            "Examples" -> {1, 2, 3},
            "ExampleCount" -> 3,
            "UseCount" -> 3,
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d4",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dm",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e4"
            }
        |>,
        <|"Colors" -> {8}|> -> <|
            "Same" -> True,
            "Examples" -> {1, 2, 3},
            "ExampleCount" -> 3,
            "UseCount" -> 3,
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dn",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e5"
            }
        |>
    }
    ,
    TestID -> "ARCFindRules-20220804-KVNY6K"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "08ed6ac7"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"HeightRank" -> 1|> -> <|
            "Colors" -> {1},
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d4",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e8"
            }
        |>,
        <|"HeightRank" -> 2|> -> <|
            "Colors" -> {2},
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e9"
            }
        |>,
        <|"HeightRank" -> 3|> -> <|
            "Colors" -> {3},
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d6",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742ea"
            }
        |>,
        <|"HeightRank" -> 4|> -> <|
            "Colors" -> {4},
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d7",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742eb"
            }
        |>
    }
    ,
    TestID -> "ARCFindRules-20220804-KVISKF"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Utility`BlockUUID[
            Daniel`ARC`ARCFindRules[
                Daniel`ARC`ARCParseFile[file = "2wfys5w64-relative-right-side"]["Train"]
            ]
        ]
    ]
    ,
    {
        <|"Shapes" -> <|"Name" -> "Square"|>|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{2}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "XInverse" -> 0|>|>
                    |>
                }
            |>,
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d4",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d6",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d7",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d8",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742f4",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742f5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742fu",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742fw"
            }
        |>,
        <|"Shapes" -> Except[<|"Name" -> "Square"|>]|> -> <|
            "Same" -> True,
            "InputObjects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d9",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742fv",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742fx",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742fy",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742fz"
            }
        |>
    }
    ,
    TestID -> "ARCFindRules-20220807-UIY7RU"
]