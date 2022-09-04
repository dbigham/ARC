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
    {
        <|"Colors" -> {2}|> -> <|
            "Transform" -> <|
                "Type" -> "Move",
                "BlockedBy" -> Daniel`ARC`Object[<|"Colors" -> {8}|>]
            |>
        |>,
        <|"Colors" -> {8}|> -> <|"Same" -> True|>
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
    {<||> -> <|"Color" -> Daniel`ARC`ObjectValue["InputObject", "Height.Rank"]|>}
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
        <|"Shapes" -> <|"Name" -> "Square"|>|> -> <|
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
        <|"Shapes" -> Except[<|"Name" -> "Square"|>]|> -> <|"Same" -> True|>
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
            "Components" -> {
                Repeated[
                    <|"Image" -> Daniel`ARC`ARCScene[{{8}}], "ZOrder" -> 0, "Y" -> "Same"|>,
                    {2}
                ]
            },
            "Color" -> 8,
            "ZOrder" -> 0,
            "FilledArea" -> 2,
            "HollowCount" -> 0
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
            "Components" -> {
                Repeated[
                    <|"Image" -> Daniel`ARC`ARCScene[{{8}}], "ZOrder" -> 0, "X" -> "Same"|>,
                    {2}
                ]
            },
            "Color" -> 8,
            "ZOrder" -> 0,
            "FilledArea" -> 2,
            "HollowCount" -> 0
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
            "X" -> Inactive[Plus][Daniel`ARC`ObjectValue["InputObject", "X"], -1]
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
            <|"Width" -> Except[3]|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>
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
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "31aa019c"]["Train"]
                    ]
                ]
            ]
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
                                Daniel`ARC`ObjectValue[<|"ColorUseCount" -> 1|>, "Y"],
                                -1
                            ],
                            "X" -> Inactive[Plus][
                                Daniel`ARC`ObjectValue[<|"ColorUseCount" -> 1|>, "X"],
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
                "X" -> Inactive[Plus][Daniel`ARC`ObjectValue["InputObject", "X"], -2],
                "Y" -> Inactive[Plus][Daniel`ARC`ObjectValue["InputObject", "Y"], -2]
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
                "X" -> Inactive[Plus][Daniel`ARC`ObjectValue["InputObject", "X"], -1],
                "Y" -> Inactive[Plus][Daniel`ARC`ObjectValue["InputObject", "Y"], -1]
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
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "178fcbfb-easier"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {<||> -> <|"Shape" -> <|"Name" -> "Line", "Angle" -> 0|>, "X" -> 1, "X2Inverse" -> 1|>}
    ,
    TestID -> "ARCFindRules-20220826-CKGJI0"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "4347f46a"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {<||> -> <|"Shape" -> <|"Name" -> "Rectangle", "Filled" -> False|>|>}
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

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "178fcbfb"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"Colors" -> {2}|> -> <|
            "Shape" -> <|"Name" -> "Line", "Angle" -> 90|>,
            "Y" -> 1,
            "Y2Inverse" -> 1,
            "ZOrder" -> 1
        |>,
        <|"Colors" -> {3} | {1}|> -> <|
            "Shape" -> <|"Name" -> "Line", "Angle" -> 0|>,
            "X" -> 1,
            "X2Inverse" -> 1
        |>
    }
    ,
    TestID -> "ARCFindRules-20220827-P7K0UM"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "1f876c06"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|
                "Type" -> "Group",
                "Components" -> {
                    Repeated[
                        <|
                            "Shape" -> <|"Name" -> "Pixel"|>,
                            "ZOrder" -> 0,
                            "Image" -> "Same"
                        |>,
                        {2}
                    ]
                },
                "ZOrder" -> 0,
                "AspectRatio" -> 1,
                "FilledArea" -> 2,
                "VerticalLineSymmetry" -> False,
                "HorizontalLineSymmetry" -> False,
                "VerticalAndHorizontalLineSymmetry" -> False,
                "HollowCount" -> 0
            |> -> <|
                "Shape" -> <|
                    "Name" -> "Line",
                    "Angle" -> Daniel`ARC`ObjectValue["InputObject", "Angle"]
                |>
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220827-E1WZVT"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "56ff96f3"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|
            "Type" -> "Group",
            "Components" -> {
                Repeated[
                    <|"Shape" -> <|"Name" -> "Pixel"|>, "ZOrder" -> 0, "Image" -> "Same"|>,
                    {2}
                ]
            },
            "ZOrder" -> 0,
            "FilledArea" -> 2,
            "VerticalLineSymmetry" -> False,
            "HorizontalLineSymmetry" -> False,
            "VerticalAndHorizontalLineSymmetry" -> False,
            "HollowCount" -> 0
        |> -> <|
            "Shapes" -> {<|"Name" -> "Rectangle", "Filled" -> True|>}
        |>
    }
    ,
    TestID -> "ARCFindRules-20220827-IC01P3"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "22eb0ac0"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|"Width" -> 1|> -> <|"Same" -> True|>,
        <|
            "Type" -> "Group",
            "X" -> 1,
            "X2" -> 10,
            "Width" -> 10,
            "Height" -> 1,
            "Components" -> {
                Repeated[
                    <|
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "ZOrder" -> 0,
                        "Image" -> "Same",
                        "Y" -> "Same"
                    |>,
                    {2}
                ]
            },
            "ZOrder" -> 0,
            "FilledArea" -> 2,
            "VerticalLineSymmetry" -> True,
            "HollowCount" -> 0
        |> -> <|
            "Shape" -> <|"Name" -> "Line", "Angle" -> 0|>
        |>
    }
    ,
    TestID -> "ARCFindRules-20220828-SUS7QU"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Utility`BlockUUID[
            Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "746b3537"]["Train"]]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <||> -> <|
                "Shape" -> <|"Name" -> "Pixel"|>,
                "X" -> Daniel`ARC`ObjectValue["InputObject", "X.InverseRank"],
                "Y" -> Daniel`ARC`ObjectValue["InputObject", "Y.InverseRank"]
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220828-5OGS6D"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "4be741c5"]["Train"]]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <||> -> <|
                "Shape" -> <|"Name" -> "Pixel"|>,
                "X" -> Daniel`ARC`ObjectValue["InputObject", "X.InverseRank"],
                "Y" -> Daniel`ARC`ObjectValue["InputObject", "Y.InverseRank"]
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220828-MUUZ8N"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "90c28cc7"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <||> -> <|
                "Shapes" -> {
                    <|"Name" -> "Line", "Angle" -> 0|>,
                    <|"Name" -> "Rectangle", "Filled" -> True|>
                },
                "X" -> Daniel`ARC`ObjectValue["InputObject", "X.InverseRank"],
                "Y" -> Daniel`ARC`ObjectValue["InputObject", "Y.InverseRank"],
                "X2" -> Daniel`ARC`ObjectValue["InputObject", "X2.InverseRank"],
                "Height" -> 1
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220828-L8TAAG"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "a87f7484"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <||> -> <|"Transform" -> <|"Type" -> "Delete"|>|>,
            <|
                "Transform" -> <|
                    "Type" -> "AddObjects",
                    "Objects" -> {
                        <|
                            "Image" -> Daniel`ARC`ObjectValue[
                                <|"FilledArea.Rank" -> 1|>,
                                "Image"
                            ],
                            "Y" -> 1,
                            "X" -> 1
                        |>
                    }
                |>
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220828-EY9YMC"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "e9afcf9a"]["Train"]]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|"Position" -> {1, 1}|> -> <|
                "Shape" -> Daniel`ARC`ARCScene[
                    {{10, -1, 10, -1, 10, -1}, {-1, 10, -1, 10, -1, 10}}
                ]
            |>,
            <|"Position" -> {2, 1}|> -> <|
                "Shape" -> Daniel`ARC`ARCScene[
                    {{-1, 10, -1, 10, -1, 10}, {10, -1, 10, -1, 10, -1}}
                ],
                "Y" -> 1
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220828-AQHB4Z"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "f8ff0b80"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <||> -> <|
                "Shape" -> <|"Name" -> "Pixel"|>,
                "X" -> 1,
                "Y" -> Daniel`ARC`ObjectValue["InputObject", "Area.Rank"]
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220828-365IJ8"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "6F8CD79B"]["Train"]]
    ]
    ,
    {
        <|
            "Transform" -> <|
                "Type" -> "AddObjects",
                "Objects" -> {
                    <|
                        "Shapes" -> {<|"Name" -> "Rectangle", "Filled" -> False|>},
                        "Color" -> 8,
                        "X" -> 1,
                        "Y" -> 1,
                        "X2Inverse" -> 1,
                        "Y2Inverse" -> 1
                    |>
                }
            |>
        |>
    }
    ,
    TestID -> "ARCFindRules-20220828-RTMMEN"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "72CA375D"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <|"VerticalLineSymmetry" -> True|> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 1, "X" -> 1|>|>
            |>,
            <|"VerticalLineSymmetry" -> False|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220828-2HEGQB"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "A79310A0"]["Train"]]
    ]
    ,
    {
        <||> -> <|
            "Color" -> 2,
            "Y" -> Inactive[Plus][Daniel`ARC`ObjectValue["InputObject", "Y"], 1]
        |>
    }
    ,
    TestID -> "ARCFindRules-20220828-KZK6G6"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "40853293"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|
                "Type" -> "Group",
                "Height" -> 1,
                "Components" -> {
                    Repeated[
                        <|
                            "Shape" -> <|"Name" -> "Pixel"|>,
                            "ZOrder" -> 0,
                            "Image" -> "Same",
                            "Y" -> "Same"
                        |>,
                        {2}
                    ]
                },
                "ZOrder" -> 0,
                "FilledArea" -> 2,
                "HollowCount" -> 0
            |> -> <|
                "Shape" -> <|"Name" -> "Line", "Angle" -> 0|>,
                "ZOrder" -> 1
            |>,
            <|
                "Type" -> "Group",
                "Width" -> 1,
                "Components" -> {
                    Repeated[
                        <|
                            "Shape" -> <|"Name" -> "Pixel"|>,
                            "ZOrder" -> 0,
                            "Image" -> "Same",
                            "X" -> "Same"
                        |>,
                        {2}
                    ]
                },
                "ZOrder" -> 0,
                "FilledArea" -> 2,
                "HollowCount" -> 0
            |> -> <|
                "Shape" -> <|"Name" -> "Line", "Angle" -> 90|>
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220829-INX45J"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "1A2E2828"]["Train"]]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <||> -> <|"Transform" -> <|"Type" -> "Delete"|>|>,
            <|
                "Transform" -> <|
                    "Type" -> "AddObjects",
                    "Objects" -> {
                        <|
                            "Shape" -> <|"Name" -> "Pixel"|>,
                            "Color" -> Daniel`ARC`ObjectValue[<|"ZOrder" -> 0|>, "Color"],
                            "X" -> 1,
                            "Y" -> 1,
                            "X2" -> 1,
                            "Y2" -> 1
                        |>
                    }
                |>
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220829-P274J4"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "95990924"]["Train"]]
    ]
    ,
    {
        <||> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{1}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> -1|>|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{2}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> 2|>|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{3}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> 2, "X" -> -1|>|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> 2, "X" -> 2|>|>
                    |>
                }
            |>
        |>
    }
    ,
    TestID -> "ARCFindRules-20220830-W6FS72"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "BE94B721"]["Train"]]
    ]
    ,
    <|
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <|"FilledArea.Rank" -> 1|> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 1, "X" -> 1|>|>
            |>,
            <|"FilledArea.Rank" -> Except[1]|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220902-YWOP1G"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "4258a5f9"]["Train"]]
    ]
    ,
    {
        <||> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{1, 1, 1}, {1, -1, 1}, {1, 1, 1}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> -1|>|>
                    |>
                }
            |>
        |>
    }
    ,
    TestID -> "ARCFindRules-20220902-776QLJ"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "913fb3ed"]["Train"]]
    ]
    ,
    {
        <|"Image" -> Daniel`ARC`ARCScene[{{8}}]|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4, 4, 4}, {4, -1, 4}, {4, 4, 4}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> -1|>|>
                    |>
                }
            |>
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{3}}]|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{6, 6, 6}, {6, -1, 6}, {6, 6, 6}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> -1|>|>
                    |>
                }
            |>
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{2}}]|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{1, 1, 1}, {1, -1, 1}, {1, 1, 1}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> -1|>|>
                    |>
                }
            |>
        |>
    }
    ,
    TestID -> "ARCFindRules-20220902-ATD7NW"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "a61ba2ce"]["Train"]]
    ]
    ,
    <|
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <|
                "Shape" -> <|
                    "Name" -> "L",
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>
            |> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 1, "X" -> 1|>|>
            |>,
            <|
                "Shape" -> <|
                    "Name" -> "L",
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
                |>
            |> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 1, "X" -> 3|>|>
            |>,
            <|
                "Shape" -> <|
                    "Name" -> "L",
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>
            |> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 3, "X" -> 3|>|>
            |>,
            <|"Shape" -> <|"Name" -> "L"|>|> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 3, "X" -> 1|>|>
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220902-II1FMH"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "810b9b61"]["Train"]]
            ]
        ]
    ]
    ,
    {
        <|"HollowCount" -> 0|> -> <|"Same" -> True|>,
        <|"HollowCount" -> 1|> -> <|"Color" -> 3|>
    }
    ,
    TestID -> "ARCFindRules-20220902-LN1NO5"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "ed36ccf7"]["Train"]]
    ]
    ,
    <|
        "SceneAsSingleObject" -> True,
        "Rules" -> {<||> -> <|"Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>|>}
    |>
    ,
    TestID -> "ARCFindRules-20220902-DZQDJD"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "a740d043"]["Train"]]
    ]
    ,
    <|
        "SceneAsSingleObject" -> True,
        "RemoveEmptySpace" -> True,
        "Background" -> 0,
        "Rules" -> {<||> -> <|"Transform" -> <|"Type" -> "RemoveEmptySpace"|>|>}
    |>
    ,
    TestID -> "ARCFindRules-20220903-MEJ1SK"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "b9b7f026"]["Train"]]
    ]
    ,
    <|
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <||> -> <|"Transform" -> <|"Type" -> "Delete"|>|>,
            <|
                "Transform" -> <|
                    "Type" -> "AddObjects",
                    "Objects" -> {
                        <|
                            "Shape" -> <|"Name" -> "Pixel"|>,
                            "Color" -> Daniel`ARC`ObjectValue[<|"HollowCount" -> 1|>, "Color"],
                            "X" -> 1,
                            "Y" -> 1,
                            "X2" -> 1,
                            "Y2" -> 1
                        |>
                    }
                |>
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220903-BKEW67"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "c59eb873"]["Train"]]
    ]
    ,
    <|
        "Width" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Width"]*2],
        "Height" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Height"]*2],
        "Rules" -> {<||> -> <|"Transform" -> <|"Type" -> "Scaled", "Factor" -> 2.|>|>}
    |>
    ,
    TestID -> "ARCFindRules-20220903-NF9PTM"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "9172f3a0"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "Width" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Width"]*3],
        "Height" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Height"]*3],
        "Rules" -> {<||> -> <|"Transform" -> <|"Type" -> "Scaled", "Factor" -> 3.|>|>}
    |>
    ,
    TestID -> "ARCFindRules-20220903-7LU3CS"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "d4469b4b"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "SceneAsSingleObject" -> True,
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <|"Colors" -> {2}|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{5, 5, 5}, {-1, 5, -1}, {-1, 5, -1}}]
            |>,
            <|"Colors" -> {1}|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{-1, 5, -1}, {5, 5, 5}, {-1, 5, -1}}]
            |>,
            <|"Colors" -> {3}|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{-1, -1, 5}, {-1, -1, 5}, {5, 5, 5}}]
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220903-I4JTV7"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "d631b094"]["Train"]]
    ]
    ,
    <|
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <||> -> <|
                "Shapes" -> {
                    <|"Name" -> "Line", "Angle" -> 0|>,
                    <|"Name" -> "Rectangle", "Filled" -> True|>
                },
                "X" -> 1,
                "Y" -> 1,
                "X2" -> Daniel`ARC`ObjectValue["InputObject", "FilledArea"],
                "Y2" -> 1
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220903-Q5SIX5"
]