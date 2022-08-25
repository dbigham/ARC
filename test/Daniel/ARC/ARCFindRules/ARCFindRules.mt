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
        <|"Colors" -> Except[{1} | {2}]|> -> <|"Same" -> True|>
    }
    ,
    TestID -> "ARCFindRules-20220719-XYQH41"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "3c9b0459"]["Train"]]
            ]
        ]
    ]
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
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "05f2a901"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|"Colors" -> {2}|> -> <|
                "Transform" -> <|
                    "Type" -> "Move",
                    "BlockedBy" -> Daniel`ARC`Object[<|"Colors" -> {8}|>]
                |>
            |>,
            <|"Colors" -> {8}|> -> <|"Same" -> True|>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220804-KVNY6K"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "08ed6ac7"]["Train"],
                        "FormMultiColorCompositeObjects" -> False,
                        "SettleForOneExamplePerRule" -> False
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"Height.Rank" -> 1|> -> <|"Color" -> 1|>,
        <|"Height.Rank" -> 2|> -> <|"Color" -> 2|>,
        <|"Height.Rank" -> 3|> -> <|"Color" -> 3|>,
        <|"Height.Rank" -> 4|> -> <|"Color" -> 4|>
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
        <|"Shape" -> <|"Name" -> "Square", "Filled" -> False|>|> -> <|
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
                        "Color" -> Daniel`ARC`ObjectValue[<|"Colors" -> Except[{5}]|>, "Color"],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> 1|>|>
                    |>
                }
            |>
        |>,
        <|"Shape" -> <|"Name" -> "Pixel"|>|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>
    }
    ,
    TestID -> "ARCFindRules-20220809-GFDCR1"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "253bf280"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|
            "Type" -> "Group",
            "Height" -> 1,
            "Color" -> 8,
            "PrimarySizeDimension" -> "X",
            "FilledArea" -> 2
        |> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Shape" -> <|"Name" -> "Line", "Angle" -> 0|>,
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
            "Width" -> 1,
            "Color" -> 8,
            "PrimarySizeDimension" -> "Y",
            "FilledArea" -> 2
        |> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Shape" -> <|"Name" -> "Line", "Angle" -> 90|>,
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
            "Shape" -> Daniel`ARC`ARCScene[
                {
                    {-1, 10, -1},
                    {10, -1, 10},
                    {-1, 10, -1},
                    {10, -1, 10},
                    {-1, 10, -1},
                    {10, -1, 10}
                }
            ],
            "Position" -> <|"RelativePosition" -> {0, -1}|>
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
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "5521c0d9"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <||> -> <|
            "Transform" -> <|
                "Type" -> "Move",
                "Offset" -> <|
                    "Y" -> Inactive[Plus][Daniel`ARC`ObjectValue["InputObject", "Y"], -16]
                |>
            |>
        |>
    }
    ,
    TestID -> "ARCFindRules-20220819-2LNLJY"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "6c434453"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"Shape" -> <|"Name" -> "Square", "Filled" -> False|>|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{-1, 2, -1}, {2, 2, 2}, {-1, 2, -1}}]
        |>,
        <|"Shape" -> Except[<|"Name" -> "Square", "Filled" -> False|>]|> -> <|"Same" -> True|>
    }
    ,
    TestID -> "ARCFindRules-20220819-F8C648"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "6e82a1ae"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"FilledArea" -> 4|> -> <|"Color" -> 1|>,
        <|"FilledArea" -> 3|> -> <|"Color" -> 2|>,
        <|"FilledArea" -> 2|> -> <|"Color" -> 3|>
    }
    ,
    TestID -> "ARCFindRules-20220819-N9WT39"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "aabf363d"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"Shape" -> <|"Name" -> "Pixel"|>|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>,
        <|"Shape" -> Except[<|"Name" -> "Pixel"|>]|> -> <|
            "Color" -> Daniel`ARC`ObjectValue[<|"Shape" -> <|"Name" -> "Pixel"|>|>, "Color"]
        |>
    }
    ,
    TestID -> "ARCFindRules-20220819-W87PMH"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "25d8a9c8"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|"Width" -> 3|> -> <|"Color" -> 5|>,
            <|"Width" -> 1 | 2|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220819-P3KT28"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "b1948b0a"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|"Colors" -> {6}|> -> <|"Color" -> 2|>,
            <|"Colors" -> {7}|> -> <|"Same" -> True|>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220819-LOF0LU"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "d511f180"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|"Colors" -> {1} | {2} | {3} | {4} | {6} | {7} | {9}|> -> <|"Same" -> True|>,
            <|"Colors" -> {5}|> -> <|"Color" -> 8|>,
            <|"Colors" -> {8}|> -> <|"Color" -> 5|>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220819-M8D92N"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Utility`BlockUUID[
            Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "31aa019c"]["Train"]]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|"ColorUseCount" -> 1|> -> <|"Same" -> True|>,
            <|"ColorUseCount" -> Except[1]|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>,
            <|
                "Transform" -> <|
                    "Type" -> "AddObjects",
                    "Objects" -> {
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, -1, 2}, {2, 2, 2}}],
                            "Y" -> Inactive[Plus][
                                Daniel`ARC`ObjectValue[
                                    <|
                                        "Shape" -> <|"Name" -> "Pixel"|>,
                                        "Context" -> "Output"
                                    |>,
                                    "Y"
                                ],
                                -1
                            ],
                            "X" -> Inactive[Plus][
                                Daniel`ARC`ObjectValue[
                                    <|
                                        "Shape" -> <|"Name" -> "Pixel"|>,
                                        "Context" -> "Output"
                                    |>,
                                    "X"
                                ],
                                -1
                            ]
                        |>
                    }
                |>
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220820-5QD3K6"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "25d487eb"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <||> -> <|
            "RotationNormalization" -> True,
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Outward" -> True,
                        "Shape" -> <|"Name" -> "Line", "Angle" -> 90|>,
                        "Direction" -> {-1, 0},
                        "Color" -> Daniel`ARC`ObjectValue[
                            <|"Shape" -> <|"Name" -> "Pixel"|>, "Context" -> "Component"|>,
                            "Color"
                        ],
                        "X" -> Daniel`ARC`ObjectValue[
                            <|"Shape" -> <|"Name" -> "Pixel"|>, "Context" -> "Component"|>,
                            "X"
                        ]
                    |>
                }
            |>
        |>
    }
    ,
    TestID -> "ARCFindRules-20220821-YXTCPM"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "0962bcdd"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|"Width" -> 1|> -> <|
                "Shape" -> Daniel`ARC`ARCScene[
                    {
                        {10, -1, -1, -1, 10},
                        {-1, 10, -1, 10, -1},
                        {-1, -1, 10, -1, -1},
                        {-1, 10, -1, 10, -1},
                        {10, -1, -1, -1, 10}
                    }
                ],
                "Position" -> <|"RelativePosition" -> {-2, -2}|>
            |>,
            <|"Width" -> 3|> -> <|
                "Shape" -> Daniel`ARC`ARCScene[
                    {
                        {-1, -1, 10, -1, -1},
                        {-1, -1, 10, -1, -1},
                        {10, 10, -1, 10, 10},
                        {-1, -1, 10, -1, -1},
                        {-1, -1, 10, -1, -1}
                    }
                ],
                "Position" -> <|"RelativePosition" -> {-1, -1}|>
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220822-FVFZUH"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "0d3d703e"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"Colors" -> {1}|> -> <|"Color" -> 5|>,
        <|"Colors" -> {3}|> -> <|"Color" -> 4|>,
        <|"Colors" -> {2}|> -> <|"Color" -> 6|>,
        <|"Colors" -> {8}|> -> <|"Color" -> 9|>,
        <|"Colors" -> {5}|> -> <|"Color" -> 1|>,
        <|"Colors" -> {6}|> -> <|"Color" -> 2|>,
        <|"Colors" -> {4}|> -> <|"Color" -> 3|>,
        <|"Colors" -> {9}|> -> <|"Color" -> 8|>
    }
    ,
    TestID -> "ARCFindRules-20220822-U3G40I"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "1bfc4729"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|"Y" -> 3|> -> <|
                "Shape" -> Daniel`ARC`ARCScene[
                    {
                        {10, 10, 10, 10, 10, 10, 10, 10, 10, 10},
                        {10, -1, -1, -1, -1, -1, -1, -1, -1, 10},
                        {10, 10, 10, 10, 10, 10, 10, 10, 10, 10},
                        {10, -1, -1, -1, -1, -1, -1, -1, -1, 10},
                        {10, -1, -1, -1, -1, -1, -1, -1, -1, 10}
                    }
                ],
                "X" -> 1,
                "Y" -> 1
            |>,
            <|"Y" -> 8|> -> <|
                "Shape" -> Daniel`ARC`ARCScene[
                    {
                        {10, -1, -1, -1, -1, -1, -1, -1, -1, 10},
                        {10, -1, -1, -1, -1, -1, -1, -1, -1, 10},
                        {10, 10, 10, 10, 10, 10, 10, 10, 10, 10},
                        {10, -1, -1, -1, -1, -1, -1, -1, -1, 10},
                        {10, 10, 10, 10, 10, 10, 10, 10, 10, 10}
                    }
                ],
                "X" -> 1,
                "Y" -> 6
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220822-45GA4N"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Utility`BlockUUID[
            Daniel`ARC`ARCFindRules[
                Daniel`ARC`ARCParseFile[file = "178fcbfb-easier"]["Train"]
            ]
        ]
    ]
    ,
    {
        <||> -> <|
            "Shapes" -> {
                <|"Name" -> "Line", "Angle" -> 0|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 1,
            "X2Inverse" -> 1
        |>
    }
    ,
    TestID -> "ARCFindRules-20220826-CKGJI0"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Utility`BlockUUID[
            Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "4347f46a"]["Train"]]
        ]
    ]
    ,
    {<||> -> <|"Shapes" -> {<|"Name" -> "Rectangle", "Filled" -> False|>}|>}
    ,
    TestID -> "ARCFindRules-20220826-6ENYJE"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Utility`BlockUUID[
            Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "fc754716"]["Train"]]
        ]
    ]
    ,
    {
        <||> -> <|
            "Shapes" -> {<|"Name" -> "Rectangle", "Filled" -> False|>},
            "X" -> 1,
            "Y" -> 1,
            "X2Inverse" -> 1,
            "Y2Inverse" -> 1
        |>
    }
    ,
    TestID -> "ARCFindRules-20220826-SXWYIL"
]