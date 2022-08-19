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
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "0ca9ddb6"]["Train"]
                    ]
                ]
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
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> -1|>|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> 1|>|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> -1|>|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> 1|>|>
                    |>
                }
            |>
        |>,
        <|"Colors" -> {1}|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{-1, 7, -1}, {7, -1, 7}, {-1, 7, -1}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> -1|>|>
                    |>
                }
            |>
        |>,
        <|"Colors" -> Except[{2} | {1}]|> -> <|"Same" -> True|>
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
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "321b1fc6"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"Colors" -> {8}|> -> <|
            "Image" -> Daniel`ARC`ObjectValue[<|"Colors" -> Except[{8}]|>, "Image"]
        |>,
        <|"Colors" -> Except[{8}]|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>
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
        <|"HeightRank" -> 1|> -> <|"Colors" -> {1}|>,
        <|"HeightRank" -> 2|> -> <|"Colors" -> {2}|>,
        <|"HeightRank" -> 3|> -> <|"Colors" -> {3}|>,
        <|"HeightRank" -> 4|> -> <|"Colors" -> {4}|>
    }
    ,
    TestID -> "ARCFindRules-20220804-KVISKF"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "2wfys5w64-relative-right-side"][
                            "Train"
                        ]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"AspectRatio" -> 1|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{2}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "XInverse" -> 0|>|>
                    |>
                }
            |>
        |>,
        <|"AspectRatio" -> Except[1]|> -> <|"Same" -> True|>
    }
    ,
    TestID -> "ARCFindRules-20220807-UIY7RU"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "ifmyulnv8-shape"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"Colors" -> {5}|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Shapes" -> {<|"Name" -> "Square", "Filled" -> True|>},
                        "Width" -> Inactive[Plus][
                            Daniel`ARC`ObjectValue["InputObject", "Width"],
                            -2
                        ],
                        "Height" -> Inactive[Plus][
                            Daniel`ARC`ObjectValue["InputObject", "Height"],
                            -2
                        ],
                        "Color" -> Daniel`ARC`ObjectValue[
                            <|"Colors" -> Except[{5}]|>,
                            Inactive[First]["Colors"]
                        ],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> 1|>|>
                    |>
                }
            |>
        |>,
        <|"Colors" -> Except[{5}]|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>
    }
    ,
    TestID -> "ARCFindRules-20220809-GFDCR1"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Utility`BlockUUID[
            Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "253bf280"]["Train"]]
        ]
    ]
    ,
    {
        <|
            "Type" -> "Group",
            "Colors" -> {8},
            "Height" -> 1,
            "PrimarySizeDimension" -> "X",
            "FilledArea" -> 2
        |> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Shapes" -> {
                            <|"Name" -> "Line", "Angle" -> 0|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> Inactive[Plus][
                            Daniel`ARC`ObjectValue["InputObject", "Width"],
                            -2
                        ],
                        "Height" -> 1,
                        "Color" -> 3,
                        "Position" -> <|"RelativePosition" -> <|"Y" -> 0, "X" -> 1|>|>
                    |>
                }
            |>
        |>,
        <|
            "Type" -> "Group",
            "Colors" -> {8},
            "Width" -> 1,
            "PrimarySizeDimension" -> "Y",
            "FilledArea" -> 2
        |> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Shapes" -> {
                            <|"Name" -> "Line", "Angle" -> 90|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> Inactive[Plus][
                            Daniel`ARC`ObjectValue["InputObject", "Height"],
                            -2
                        ],
                        "Color" -> 3,
                        "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> 0|>|>
                    |>
                }
            |>
        |>,
        <|"PrimarySizeDimension" -> "None"|> -> <|"Same" -> True|>
    }
    ,
    TestID -> "ARCFindRules-20220812-24SCQ1"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "3ac3eb23"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <||> -> <|
            "Position" -> <|"RelativePosition" -> {0, -1}|>,
            "Shape" -> Daniel`ARC`ARCScene[
                {
                    {-1, 10, -1},
                    {10, -1, 10},
                    {-1, 10, -1},
                    {10, -1, 10},
                    {-1, 10, -1},
                    {10, -1, 10}
                }
            ]
        |>
    }
    ,
    TestID -> "ARCFindRules-20220817-R66XW8"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "referenceable-components"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"Colors" -> {1, 5}|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{2}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> Daniel`ARC`ObjectValue[
                                    <|"Colors" -> {1}, "Context" -> "Component"|>,
                                    "YRelative"
                                ],
                                "X" -> Inactive[Plus][
                                    Daniel`ARC`ObjectValue[
                                        <|"Colors" -> {1}, "Context" -> "Component"|>,
                                        "XRelative"
                                    ],
                                    1
                                ]
                            |>
                        |>
                    |>
                }
            |>
        |>,
        <|"Colors" -> {1}|> -> <|"Same" -> True|>
    }
    ,
    TestID -> "ARCFindRules-20220817-V92ONB"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Utility`BlockUUID[
            Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "5521c0d9"]["Train"]]
        ]
    ]
    ,
    {
        <|"Colors" -> {1}|> -> <|
            "Transform" -> <|
                "Type" -> "Move",
                "Offset" -> <|
                    "Y" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Colors" -> {1}|>, "Y"], -16],
                    "X" -> 0
                |>
            |>
        |>,
        <|"Colors" -> {4}|> -> <|
            "Transform" -> <|
                "Type" -> "Move",
                "Offset" -> <|
                    "Y" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Colors" -> {4}|>, "Y"], -16],
                    "X" -> 0
                |>
            |>
        |>,
        <|"Colors" -> {2}|> -> <|
            "Transform" -> <|
                "Type" -> "Move",
                "Offset" -> <|
                    "Y" -> Inactive[Plus][Daniel`ARC`ObjectValue[<|"Colors" -> {2}|>, "Y"], -16],
                    "X" -> 0
                |>
            |>
        |>
    }
    ,
    TestID -> "ARCFindRules-20220819-2LNLJY"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Utility`BlockUUID[
            Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "6c434453"]["Train"]]
        ]
    ]
    ,
    {
        <|"Image" -> Daniel`ARC`ARCScene[{{1, 1, 1}, {1, -1, 1}, {1, 1, 1}}]|> -> <|
            "Colors" -> {2},
            "Image" -> Daniel`ARC`ARCScene[{{-1, 2, -1}, {2, 2, 2}, {-1, 2, -1}}]
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{-1, 1, -1}, {1, 1, 1}, {-1, 1, -1}}]|> -> <|
            "Same" -> True
        |>,
        <|
            "Image" -> Except[
                Alternatives[
                    Daniel`ARC`ARCScene[{{1, 1, 1}, {1, -1, 1}, {1, 1, 1}}],
                    Daniel`ARC`ARCScene[{{-1, 1, -1}, {1, 1, 1}, {-1, 1, -1}}]
                ]
            ]
        |> -> <|
            "Same" -> True
        |>
    }
    ,
    TestID -> "ARCFindRules-20220819-F8C648"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Utility`BlockUUID[
            Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "6e82a1ae"]["Train"]]
        ]
    ]
    ,
    {
        <|"FilledArea" -> 4|> -> <|"Colors" -> {1}|>,
        <|"FilledArea" -> 3|> -> <|"Colors" -> {2}|>,
        <|"FilledArea" -> 2|> -> <|"Colors" -> {3}|>
    }
    ,
    TestID -> "ARCFindRules-20220819-N9WT39"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Utility`BlockUUID[
            Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "aabf363d"]["Train"]]
        ]
    ]
    ,
    {
        <|"Shape" -> <|"Name" -> "Pixel"|>|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>,
        <|"Shape" -> Except[<|"Name" -> "Pixel"|>]|> -> <|
            "Colors" -> Daniel`ARC`ObjectValue[<|"Shape" -> <|"Name" -> "Pixel"|>|>, "Colors"]
        |>
    }
    ,
    TestID -> "ARCFindRules-20220819-W87PMH"
]