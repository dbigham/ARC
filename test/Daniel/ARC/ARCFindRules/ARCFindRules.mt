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
        <|"Shape" -> <|"Name" -> "Pixel"|>|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>,
        <|"Shape" -> <|"Name" -> "Square", "Filled" -> False|>|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Shape" -> <|"Name" -> "Square", "Filled" -> True|>,
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
        |>
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
    <|
        "Rules" -> {
            <|"Angle" -> 0|> -> <|
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
            <|"Angle" -> 90|> -> <|
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
            <|"Angle" -> Missing[]|> -> <|"Same" -> True|>
        },
        "Groups" -> {
            <|
                "Height" -> 1,
                "Components" -> {
                    Repeated[
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{8}}],
                            "ZOrder" -> 0,
                            "Y" -> "Same"
                        |>,
                        {2}
                    ]
                },
                "Color" -> 8,
                "ZOrder" -> 0,
                "FilledArea" -> 2,
                "SurfacePixelCount" -> 2,
                "HollowCount" -> 0
            |>,
            <|
                "Width" -> 1,
                "Components" -> {
                    Repeated[
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{8}}],
                            "ZOrder" -> 0,
                            "X" -> "Same"
                        |>,
                        {2}
                    ]
                },
                "Color" -> 8,
                "ZOrder" -> 0,
                "FilledArea" -> 2,
                "SurfacePixelCount" -> 2,
                "HollowCount" -> 0
            |>
        }
    |>
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
        <|"Colors" -> {1}|> -> <|"Same" -> True|>,
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
        |>
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
    {<||> -> <|"Color" -> Daniel`ARC`ObjectValue["InputObject", "FilledArea.Rank"]|>}
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
            <|"Area.Rank" -> 1|> -> <|
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
            |>,
            <|"Area.Rank" -> 2|> -> <|
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
        <|"Colors" -> {2}|> -> <|"Color" -> 6|>,
        <|"Colors" -> {3}|> -> <|"Color" -> 4|>,
        <|"Colors" -> {4}|> -> <|"Color" -> 3|>,
        <|"Colors" -> {5}|> -> <|"Color" -> 1|>,
        <|"Colors" -> {6}|> -> <|"Color" -> 2|>,
        <|"Colors" -> {8}|> -> <|"Color" -> 9|>,
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
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Utility`BlockUUID[
                    Daniel`ARC`ARCFindRules[
                        Daniel`ARC`ARCParseFile[file = "fc754716"]["Train"]
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <||> -> <|
            "Shape" -> <|"Name" -> "Rectangle", "Filled" -> False|>,
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
        <|"Colors" -> {3} | {1}|> -> <|
            "Shape" -> <|"Name" -> "Line", "Angle" -> 0|>,
            "X" -> 1,
            "X2Inverse" -> 1
        |>,
        <|"Colors" -> {2}|> -> <|
            "Shape" -> <|"Name" -> "Line", "Angle" -> 90|>,
            "Y" -> 1,
            "Y2Inverse" -> 1,
            "ZOrder" -> 1
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
            <||> -> <|
                "Shape" -> <|
                    "Name" -> "Line",
                    "Angle" -> Daniel`ARC`ObjectValue["InputObject", "Angle"]
                |>
            |>
        },
        "Groups" -> {
            <|
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
                "SurfacePixelCount" -> 2,
                "VerticalLineSymmetry" -> False,
                "HorizontalLineSymmetry" -> False,
                "VerticalAndHorizontalLineSymmetry" -> False,
                "HollowCount" -> 0
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
    <|
        "Rules" -> {<||> -> <|"Shape" -> <|"Name" -> "Rectangle", "Filled" -> True|>|>},
        "Groups" -> {
            <|
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
                "FilledArea" -> 2,
                "SurfacePixelCount" -> 2,
                "VerticalLineSymmetry" -> False,
                "HorizontalLineSymmetry" -> False,
                "VerticalAndHorizontalLineSymmetry" -> False,
                "HollowCount" -> 0
            |>
        }
    |>
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
    <|
        "Rules" -> {
            <||> -> <|
                "Shapes" -> {
                    <|"Name" -> "Line", "Angle" -> 0|>,
                    <|"Name" -> "Rectangle", "Filled" -> True|>
                }
            |>
        },
        "Groups" -> {
            <|
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
                "SurfacePixelCount" -> 2,
                "VerticalLineSymmetry" -> True,
                "HollowCount" -> 0
            |>
        }
    |>
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
            <|"FilledArea.Rank" -> 1|> -> <|"X" -> 1, "Y" -> 1|>,
            <|"FilledArea.Rank" -> 2|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>
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
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "6F8CD79B"]["Train"]]
            ]
        ]
    ]
    ,
    {
        <|
            "Transform" -> <|
                "Type" -> "AddObjects",
                "Objects" -> {
                    <|
                        "Shape" -> <|"Name" -> "Rectangle", "Filled" -> False|>,
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
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "A79310A0"]["Train"]]
            ]
        ]
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
            <|"Angle" -> 0|> -> <|"Shape" -> <|"Name" -> "Line", "Angle" -> 0|>, "ZOrder" -> 1|>,
            <|"Angle" -> 90|> -> <|"Shape" -> <|"Name" -> "Line", "Angle" -> 90|>|>
        },
        "Groups" -> {
            <|
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
                "SurfacePixelCount" -> 2,
                "HollowCount" -> 0
            |>,
            <|
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
                "SurfacePixelCount" -> 2,
                "HollowCount" -> 0
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
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "913fb3ed"]["Train"]]
            ]
        ]
    ]
    ,
    {
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
        |>
    }
    ,
    TestID -> "ARCFindRules-20220902-ATD7NW"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "a61ba2ce"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "RemoveEmptySpace" -> True,
        "Rules" -> {
            <|"Shape" -> <|"Name" -> "L"|>|> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 3, "X" -> 1|>|>
            |>,
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
            <|"Colors" -> {1}|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{-1, 5, -1}, {5, 5, 5}, {-1, 5, -1}}]
            |>,
            <|"Colors" -> {2}|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{5, 5, 5}, {-1, 5, -1}, {-1, 5, -1}}]
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
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "d631b094"]["Train"]]
            ]
        ]
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

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "5614dbcf"]["Train"]]
    ]
    ,
    <|
        "Denoise" -> True,
        "SceneAsSingleObject" -> True,
        "Width" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Width"]*0.3333333333333333],
        "Height" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Height"]*0.3333333333333333],
        "Rules" -> {
            <||> -> <|"Transform" -> <|"Type" -> "Scaled", "Factor" -> 0.3333333333333333|>|>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220904-JVUY94"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "694f12f3"]["Train"]]
            ]
        ]
    ]
    ,
    {
        <|"Area.Rank" -> 1|> -> <|
            "Shape" -> <|
                "Name" -> "Rectangle",
                "Filled" -> True,
                "Interior" -> <|"Color" -> 2|>,
                "Border" -> <|"Color" -> 4|>
            |>
        |>,
        <|"Area.Rank" -> 2|> -> <|
            "Shape" -> <|
                "Name" -> "Rectangle",
                "Filled" -> True,
                "Interior" -> <|"Color" -> 1|>,
                "Border" -> <|"Color" -> 4|>
            |>
        |>
    }
    ,
    TestID -> "ARCFindRules-20220904-WFSK8X"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "50cb2852"]["Train"]]
            ]
        ]
    ]
    ,
    {
        <|"Colors" -> {1}|> -> <|
            "Shape" -> <|
                "Name" -> "Rectangle",
                "Filled" -> True,
                "Interior" -> <|"Color" -> 8|>,
                "Border" -> <|"Color" -> 1|>
            |>
        |>,
        <|"Colors" -> {2}|> -> <|
            "Shape" -> <|
                "Name" -> "Rectangle",
                "Filled" -> True,
                "Interior" -> <|"Color" -> 8|>,
                "Border" -> <|"Color" -> 2|>
            |>
        |>,
        <|"Colors" -> {3}|> -> <|
            "Shape" -> <|
                "Name" -> "Rectangle",
                "Filled" -> True,
                "Interior" -> <|"Color" -> 8|>,
                "Border" -> <|"Color" -> 3|>
            |>
        |>
    }
    ,
    TestID -> "ARCFindRules-20220905-34UMX6"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "b230c067"]["Train"]]
    ]
    ,
    {<||> -> <|"Color" -> Daniel`ARC`ObjectValue["InputObject", "Width.Rank"]|>}
    ,
    TestID -> "ARCFindRules-20220905-Q65LO6"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "bb43febb"]["Train"]]
    ]
    ,
    {
        <||> -> <|
            "Shape" -> <|
                "Name" -> "Rectangle",
                "Filled" -> True,
                "Interior" -> <|"Color" -> 2|>,
                "Border" -> <|"Color" -> 5|>
            |>
        |>
    }
    ,
    TestID -> "ARCFindRules-20220905-G4PUG3"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "bdad9b1f"]["Train"]]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|"Colors" -> {2}|> -> <|
                "Shape" -> <|"Name" -> "Line", "Angle" -> 0|>,
                "X" -> 1,
                "X2" -> 6,
                "ZOrder" -> 1
            |>,
            <|"Colors" -> {8}|> -> <|
                "Shape" -> <|"Name" -> "Line", "Angle" -> 90|>,
                "Y2" -> 6,
                "ZOrder" -> 1
            |>,
            <|
                "Transform" -> <|
                    "Type" -> "AddObjects",
                    "Objects" -> {
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{4}}],
                            "Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {2}|>, "Y"],
                            "X" -> Daniel`ARC`ObjectValue[<|"Colors" -> {8}|>, "X"]
                        |>
                    }
                |>
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220905-LLXOPN"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "middle"]["Train"]]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <||> -> <|"Same" -> True|>,
            <|
                "Transform" -> <|
                    "Type" -> "AddObjects",
                    "Objects" -> {
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{2}}],
                            "Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {5}|>, "YMiddle"],
                            "X" -> Daniel`ARC`ObjectValue[<|"Colors" -> {5}|>, "XMiddle"]
                        |>
                    }
                |>
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220906-Z44D4P"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "794b24be"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "SceneAsSingleObject" -> True,
        "Rules" -> {
            <|"FilledArea" -> 1|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{2, -1, -1}, {-1, -1, -1}, {-1, -1, -1}}]
            |>,
            <|"FilledArea" -> 2|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{2, 2, -1}, {-1, -1, -1}, {-1, -1, -1}}]
            |>,
            <|"FilledArea" -> 3|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {-1, -1, -1}, {-1, -1, -1}}]
            |>,
            <|"FilledArea" -> 4|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {-1, 2, -1}, {-1, -1, -1}}]
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220906-UA8P8Q"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "85c4e7cd"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|"Width.InverseRank" -> 1|> -> <|
                "Color" -> Daniel`ARC`ObjectValue[<|"Position" -> {1, 1}|>, "Color"]
            |>,
            <|"Width.InverseRank" -> 2|> -> <|
                "Color" -> Daniel`ARC`ObjectValue[<|"Position" -> {2, 2}|>, "Color"]
            |>,
            <|"Width.InverseRank" -> 3|> -> <|
                "Color" -> Daniel`ARC`ObjectValue[<|"Position" -> {3, 3}|>, "Color"]
            |>,
            <|"Width.InverseRank" -> 5|> -> <|
                "Color" -> Inactive[Plus][
                    Daniel`ARC`ObjectValue[<|"Colors" -> {2}|>, "YInverse"],
                    -6
                ]
            |>,
            <|"Width.Rank" -> 1|> -> <|
                "Color" -> Daniel`ARC`ObjectValue[
                    <|"Shape" -> <|"Name" -> "Square", "Filled" -> True|>|>,
                    "Color"
                ]
            |>,
            <|"Width.Rank" -> 2|> -> <|
                "Color" -> Daniel`ARC`ObjectValue[<|"Width" -> 4|>, "Color"]
            |>,
            <|"Width.Rank" -> 3|> -> <|
                "Color" -> Daniel`ARC`ObjectValue[<|"Width" -> 6|>, "Color"]
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220906-89DI3K"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "ba97ae07"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "Rules" -> {
            <|"ZOrder" -> 0|> -> <|"ZOrder" -> 1|>,
            <|"ZOrder" -> 1|> -> <|"ZOrder" -> 0|>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220906-5XC305"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "ff28f65a"]["Train"]]
            ]
        ]
    ]
    ,
    <|
        "SceneAsSingleObject" -> True,
        "Width" -> 3,
        "Height" -> 3,
        "Rules" -> {
            <|"FilledArea" -> 4|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{1, -1, -1}, {-1, -1, -1}, {-1, -1, -1}}]
            |>,
            <|"FilledArea" -> 8|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{1, -1, 1}, {-1, -1, -1}, {-1, -1, -1}}]
            |>,
            <|"FilledArea" -> 12|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{1, -1, 1}, {-1, 1, -1}, {-1, -1, -1}}]
            |>,
            <|"FilledArea" -> 16|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{1, -1, 1}, {-1, 1, -1}, {1, -1, -1}}]
            |>,
            <|"FilledArea" -> 20|> -> <|
                "Image" -> Daniel`ARC`ARCScene[{{1, -1, 1}, {-1, 1, -1}, {1, -1, 1}}]
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220906-I8KEGT"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "8be77c9e"]["Train"]]
    ]
    ,
    <|
        "SceneAsSingleObject" -> True,
        "Height" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Height"]*2],
        "Rules" -> {
            {<|"SceneAsSingleObject" -> True, "Rules" -> {<||> -> <|"Same" -> True|>}|>},
            {
                <|
                    "SceneAsSingleObject" -> True,
                    "Rules" -> {
                        <||> -> <|
                            "Transform" -> <|"Type" -> "Flip", "Direction" -> "Vertical"|>
                        |>
                    }
                |>
            }
        }
    |>
    ,
    TestID -> "ARCFindRules-20220907-4K1SKO"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "67a3c6ac"]["Train"]]
    ]
    ,
    <|
        "SceneAsSingleObject" -> True,
        "Rules" -> {
            <||> -> <|"Transform" -> <|"Type" -> "Flip", "Direction" -> "Horizontal"|>|>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220907-9K7CJL"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "68b16354"]["Train"]]
    ]
    ,
    <|
        "SceneAsSingleObject" -> True,
        "Rules" -> {<||> -> <|"Transform" -> <|"Type" -> "Flip", "Direction" -> "Vertical"|>|>}
    |>
    ,
    TestID -> "ARCFindRules-20220907-J2QT3W"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "a8c38be5"]["Train"]]
    ]
    ,
    <|
        "FormMultiColorCompositeObjects" -> False,
        "RemoveEmptySpace" -> True,
        "Background" -> 5,
        "Rules" -> {
            <|"Shape" -> <|"Name" -> "L"|>|> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 8, "X" -> 1|>|>
            |>,
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
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 1, "X" -> 8|>|>
            |>,
            <|
                "Shape" -> <|
                    "Name" -> "L",
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>
            |> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 8, "X" -> 8|>|>
            |>,
            <|"Shape" -> <|"Name" -> "Triangle"|>|> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 8, "X" -> 4|>|>
            |>,
            <|
                "Shape" -> <|
                    "Name" -> "Triangle",
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>
            |> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 4, "X" -> 1|>|>
            |>,
            <|
                "Shape" -> <|
                    "Name" -> "Triangle",
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
                |>
            |> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 1, "X" -> 4|>|>
            |>,
            <|
                "Shape" -> <|
                    "Name" -> "Triangle",
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>
            |> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 4, "X" -> 8|>|>
            |>,
            <|
                "Shape" -> Alternatives[
                    Daniel`ARC`ARCScene[{{10, 10, 10}, {-1, 10, 10}, {-1, -1, 10}}],
                    Daniel`ARC`ARCScene[{{10, 10}, {-1, 10}, {10, 10}}],
                    Daniel`ARC`ARCScene[{{10, -1, 10}, {10, 10, 10}}],
                    <|"Name" -> "Square", "Filled" -> True|>,
                    Daniel`ARC`ARCScene[{{10, 10, 10}, {10, -1, 10}}],
                    Daniel`ARC`ARCScene[{{10, -1, -1}, {10, 10, -1}, {10, 10, 10}}],
                    Daniel`ARC`ARCScene[{{10, 10}, {10, -1}, {10, 10}}],
                    Daniel`ARC`ARCScene[{{10, 10, 10}, {10, 10, -1}, {10, -1, -1}}],
                    Daniel`ARC`ARCScene[{{-1, -1, 10}, {-1, 10, 10}, {10, 10, 10}}]
                ]
            |> -> <|
                "Transform" -> <|"Type" -> "Delete"|>
            |>
        }
    |>
    ,
    TestID -> "ARCFindRules-20220907-7UAUD5"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "62c24649"]["Train"]]
    ]
    ,
    <|
        "SceneAsSingleObject" -> True,
        "Width" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Width"]*2],
        "Height" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Height"]*2],
        "Rules" -> {
            {
                <|"SceneAsSingleObject" -> True, "Rules" -> {<||> -> <|"Same" -> True|>}|>,
                <|
                    "SceneAsSingleObject" -> True,
                    "Rules" -> {
                        <||> -> <|
                            "Transform" -> <|"Type" -> "Flip", "Direction" -> "Horizontal"|>
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
    |>
    ,
    TestID -> "ARCFindRules-20220907-E1JST8"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "67e8384a"]["Train"]]
    ]
    ,
    <|
        "SceneAsSingleObject" -> True,
        "Width" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Width"]*2],
        "Height" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Height"]*2],
        "Rules" -> {
            {
                <|"SceneAsSingleObject" -> True, "Rules" -> {<||> -> <|"Same" -> True|>}|>,
                <|
                    "SceneAsSingleObject" -> True,
                    "Rules" -> {
                        <||> -> <|
                            "Transform" -> <|"Type" -> "Flip", "Direction" -> "Horizontal"|>
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
    |>
    ,
    TestID -> "ARCFindRules-20220907-7NJSQX"
]

Test[
    Daniel`ARC`ARCSimplifyRules[
        Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "6d0aefbc"]["Train"]]
    ]
    ,
    <|
        "SceneAsSingleObject" -> True,
        "Width" -> Inactive[Daniel`ARC`ObjectValue["InputScene", "Width"]*2],
        "Rules" -> {
            {
                <|"SceneAsSingleObject" -> True, "Rules" -> {<||> -> <|"Same" -> True|>}|>,
                <|
                    "SceneAsSingleObject" -> True,
                    "Rules" -> {
                        <||> -> <|
                            "Transform" -> <|"Type" -> "Flip", "Direction" -> "Horizontal"|>
                        |>
                    }
                |>
            }
        }
    |>
    ,
    TestID -> "ARCFindRules-20220907-0OWD6Y"
]