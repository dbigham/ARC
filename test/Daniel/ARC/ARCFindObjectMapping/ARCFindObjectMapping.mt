(*
    Tests for: Daniel`ARC`ARCFindObjectMapping
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCFindObjectMapping]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects[
                DevTools`ERP`NormalizeOutput[
                    Daniel`ARC`ARCFindObjectMapping[
                        Daniel`ARC`ARCParseFile[file = "0ca9ddb6"]["Train", 1]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        <|"Image" -> Daniel`ARC`ARCScene[{{2}}], "Position" -> {4, 3}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{4, -1, 4}, {-1, 2, -1}, {4, -1, 4}}],
            "Position" -> {3, 2},
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 3,
                        "X" -> 2,
                        "Color" -> 4
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 3,
                        "X" -> 4,
                        "Color" -> 4
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 5,
                        "X" -> 2,
                        "Color" -> 4
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 5,
                        "X" -> 4,
                        "Color" -> 4
                    |>
                }
            |>
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{1}}], "Position" -> {7, 7}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{-1, 7, -1}, {7, 1, 7}, {-1, 7, -1}}],
            "Position" -> {6, 6},
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
                        |>,
                        "Shape" -> Daniel`ARC`ARCScene[
                            {{-1, 10, -1}, {10, -1, 10}, {-1, 10, -1}}
                        ],
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{-1, 10, -1}, {10, -1, 10}, {-1, 10, -1}}
                                ]
                            |>
                        },
                        "Width" -> 3,
                        "Height" -> 3,
                        "Y" -> 6,
                        "X" -> 6,
                        "Color" -> 7
                    |>
                }
            |>
        |>
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220719-VNTDSS"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects[
                With[
                    {example = Daniel`ARC`ARCParseFile[file = "0ca9ddb6"]["Train", 1]},
                    Daniel`ARC`ARCFindObjectMapping[
                        Utility`ReturnIfFailure[Daniel`ARC`ARCParseScene[example["Input"]]][[
                            "Objects",
                            1
                        ]],
                        Utility`ReturnIfFailure[Daniel`ARC`ARCParseScene[example["Input"]]][[
                            "Objects",
                            1 ;; 1
                        ]],
                        {},
                        <||>
                    ]
                ]
            ]
        ]
    ]
    ,
    <|"Image" -> Daniel`ARC`ARCScene[{{2}}], "Position" -> {4, 3}|> -> <|
        "Image" -> Daniel`ARC`ARCScene[{{2}}],
        "Position" -> {4, 3}
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220719-7T4GAI"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects[
                With[
                    {example = Daniel`ARC`ARCParseFile[file = "0ca9ddb6"]["Train", 1]},
                    Daniel`ARC`ARCFindObjectMapping[
                        Utility`ReturnIfFailure[Daniel`ARC`ARCParseScene[example["Input"]]][[
                            "Objects",
                            1
                        ]],
                        Utility`ReturnIfFailure[Daniel`ARC`ARCParseScene[example["Output"]]][
                            "Objects"
                        ],
                        {},
                        <||>
                    ]
                ]
            ]
        ]
    ]
    ,
    <|"Image" -> Daniel`ARC`ARCScene[{{2}}], "Position" -> {4, 3}|> -> <|
        "Image" -> Daniel`ARC`ARCScene[{{4, -1, 4}, {-1, 2, -1}, {4, -1, 4}}],
        "Position" -> {3, 2},
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
                    |>,
                    "Shape" -> <|"Name" -> "Pixel"|>,
                    "Shapes" -> {
                        <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                        <|"Name" -> "Pixel"|>,
                        <|"Name" -> "Square"|>,
                        <|"Name" -> "Rectangle"|>,
                        <|"Name" -> "Square", "Filled" -> True|>,
                        <|"Name" -> "Rectangle", "Filled" -> True|>
                    },
                    "Width" -> 1,
                    "Height" -> 1,
                    "Y" -> 3,
                    "X" -> 2,
                    "Color" -> 4
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
                    |>,
                    "Shape" -> <|"Name" -> "Pixel"|>,
                    "Shapes" -> {
                        <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                        <|"Name" -> "Pixel"|>,
                        <|"Name" -> "Square"|>,
                        <|"Name" -> "Rectangle"|>,
                        <|"Name" -> "Square", "Filled" -> True|>,
                        <|"Name" -> "Rectangle", "Filled" -> True|>
                    },
                    "Width" -> 1,
                    "Height" -> 1,
                    "Y" -> 3,
                    "X" -> 4,
                    "Color" -> 4
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
                    |>,
                    "Shape" -> <|"Name" -> "Pixel"|>,
                    "Shapes" -> {
                        <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                        <|"Name" -> "Pixel"|>,
                        <|"Name" -> "Square"|>,
                        <|"Name" -> "Rectangle"|>,
                        <|"Name" -> "Square", "Filled" -> True|>,
                        <|"Name" -> "Rectangle", "Filled" -> True|>
                    },
                    "Width" -> 1,
                    "Height" -> 1,
                    "Y" -> 5,
                    "X" -> 2,
                    "Color" -> 4
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
                    |>,
                    "Shape" -> <|"Name" -> "Pixel"|>,
                    "Shapes" -> {
                        <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                        <|"Name" -> "Pixel"|>,
                        <|"Name" -> "Square"|>,
                        <|"Name" -> "Rectangle"|>,
                        <|"Name" -> "Square", "Filled" -> True|>,
                        <|"Name" -> "Rectangle", "Filled" -> True|>
                    },
                    "Width" -> 1,
                    "Height" -> 1,
                    "Y" -> 5,
                    "X" -> 4,
                    "Color" -> 4
                |>
            }
        |>
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220719-UDWGW3"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects[
                DevTools`ERP`NormalizeOutput[
                    Daniel`ARC`ARCFindObjectMapping[
                        Daniel`ARC`ARCParseFile[file = "0ca9ddb6"]["Train", 2]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        <|"Image" -> Daniel`ARC`ARCScene[{{8}}], "Position" -> {1, 4}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{8}}],
            "Position" -> {1, 4}
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{2}}], "Position" -> {3, 7}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{4, -1, 4}, {-1, 2, -1}, {4, -1, 4}}],
            "Position" -> {2, 6},
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 2,
                        "X" -> 6,
                        "Color" -> 4
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 2,
                        "X" -> 8,
                        "Color" -> 4
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 4,
                        "X" -> 6,
                        "Color" -> 4
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 4,
                        "X" -> 8,
                        "Color" -> 4
                    |>
                }
            |>
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{1}}], "Position" -> {4, 3}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{-1, 7, -1}, {7, 1, 7}, {-1, 7, -1}}],
            "Position" -> {3, 2},
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
                        |>,
                        "Shape" -> Daniel`ARC`ARCScene[
                            {{-1, 10, -1}, {10, -1, 10}, {-1, 10, -1}}
                        ],
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{-1, 10, -1}, {10, -1, 10}, {-1, 10, -1}}
                                ]
                            |>
                        },
                        "Width" -> 3,
                        "Height" -> 3,
                        "Y" -> 3,
                        "X" -> 2,
                        "Color" -> 7
                    |>
                }
            |>
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{1}}], "Position" -> {7, 7}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{-1, 7, -1}, {7, 1, 7}, {-1, 7, -1}}],
            "Position" -> {6, 6},
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
                        |>,
                        "Shape" -> Daniel`ARC`ARCScene[
                            {{-1, 10, -1}, {10, -1, 10}, {-1, 10, -1}}
                        ],
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{-1, 10, -1}, {10, -1, 10}, {-1, 10, -1}}
                                ]
                            |>
                        },
                        "Width" -> 3,
                        "Height" -> 3,
                        "Y" -> 6,
                        "X" -> 6,
                        "Color" -> 7
                    |>
                }
            |>
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{2}}], "Position" -> {8, 2}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{4, -1, 4}, {-1, 2, -1}, {4, -1, 4}}],
            "Position" -> {7, 1},
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 7,
                        "X" -> 1,
                        "Color" -> 4
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 7,
                        "X" -> 3,
                        "Color" -> 4
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 9,
                        "X" -> 1,
                        "Color" -> 4
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
                        |>,
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 1,
                        "Height" -> 1,
                        "Y" -> 9,
                        "X" -> 3,
                        "Color" -> 4
                    |>
                }
            |>
        |>
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220719-38F988"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects[
                DevTools`ERP`NormalizeOutput[
                    Daniel`ARC`ARCFindObjectMapping[
                        Daniel`ARC`ARCParseFile[file = "3c9b0459"]["Train", 1]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        <|
            "Image" -> Daniel`ARC`ARCScene[{{2, 2, 1}, {2, 1, 2}, {2, 8, 1}}],
            "Position" -> {1, 1}
        |> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{1, 8, 2}, {2, 1, 2}, {1, 2, 2}}],
            "Position" -> {1, 1},
            "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
        |>
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220722-IX2XR7"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects[
                DevTools`ERP`NormalizeOutput[
                    Daniel`ARC`ARCFindObjectMapping[
                        Daniel`ARC`ARCParseFile[file = "1caeab9d"]["Train", 1]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        <|"Image" -> Daniel`ARC`ARCScene[{{2, 2}, {2, 2}}], "Position" -> {1, 2}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2, 2}, {2, 2}}],
            "Position" -> {2, 2},
            "Transform" -> <|
                "Type" -> "Move",
                "Position" -> <|"Y" -> 2, "X" -> 2|>,
                "Offset" -> <|"Y" -> 1|>
            |>
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{1, 1}, {1, 1}}], "Position" -> {2, 8}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{1, 1}, {1, 1}}],
            "Position" -> {2, 8}
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{4, 4}, {4, 4}}], "Position" -> {3, 5}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{4, 4}, {4, 4}}],
            "Position" -> {2, 5},
            "Transform" -> <|
                "Type" -> "Move",
                "Position" -> <|"Y" -> 2, "X" -> 5|>,
                "Offset" -> <|"Y" -> -1|>
            |>
        |>
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220722-ATYT6G"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects[
                Module[
                    {
                        example = Daniel`ARC`ARCParseFile[file = "b60334d2"]["Train", 1],
                        inputObject
                    },
                    Daniel`ARC`ARCFindObjectMapping[
                        inputObject = Utility`ReturnIfFailure[
                            Daniel`ARC`ARCParseScene[example["Input"]]
                        ][[
                            "Objects",
                            1
                        ]],
                        Utility`ReturnIfFailure[Daniel`ARC`ARCParseScene[example["Output"]]][[
                            "Objects",
                            1 ;; 1
                        ]],
                        {inputObject},
                        <||>
                    ]
                ]
            ]
        ]
    ]
    ,
    <|"Image" -> Daniel`ARC`ARCScene[{{5}}], "Position" -> {3, 4}|> -> <|
        "Image" -> Daniel`ARC`ARCScene[{{5, 1, 5}, {1, -1, 1}, {5, 1, 5}}],
        "Position" -> <|"RelativePosition" -> {-1, -1}, "Y" -> 2, "X" -> 3|>
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220725-HM9X07"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects[
                DevTools`ERP`NormalizeOutput[
                    Daniel`ARC`ARCFindObjectMapping[
                        Daniel`ARC`ARCParseFile[file = "jnohuorzh"]["Train", 1]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        <|"Image" -> Daniel`ARC`ARCScene[{{1}}], "Position" -> {3, 3}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "Position" -> {4, 3},
            "Transform" -> <|
                "Type" -> "Move",
                "Position" -> <|"Y" -> 4, "X" -> 3|>,
                "Offset" -> <|"Y" -> 1|>
            |>
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{1}}], "Position" -> {4, 5}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "Position" -> {5, 5},
            "Transform" -> <|
                "Type" -> "Move",
                "Position" -> <|"Y" -> 5, "X" -> 5|>,
                "Offset" -> <|"Y" -> 1|>
            |>
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{2}}], "Position" -> {7, 9}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}}],
            "Position" -> {6, 9},
            "Transform" -> <|
                "Type" -> "Move",
                "Position" -> <|"Y" -> 6, "X" -> 9|>,
                "Offset" -> <|"Y" -> -1|>
            |>
        |>
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220812-6R5M8F"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects[
                DevTools`ERP`NormalizeOutput[
                    Daniel`ARC`ARCFindObjectMapping[
                        Daniel`ARC`ARCParseFile[file = "25d487eb"]["Train", 1]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        <|
            "Image" -> Daniel`ARC`ARCScene[
                {{2, -1, -1}, {2, 2, -1}, {1, 2, 2}, {2, 2, -1}, {2, -1, -1}}
            ],
            "Position" -> {3, 4}
        |> -> <|
            "Image" -> Daniel`ARC`ARCScene[
                {
                    {2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
                    {2, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
                    {1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                    {2, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
                    {2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1}
                }
            ],
            "Position" -> {3, 4},
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{1, 1, 1, 1, 1, 1, 1, 1, 1}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> 2,
                                "X" -> 3,
                                "YInverse" -> -2,
                                "XInverse" -> 1
                            |>
                        |>,
                        "Shape" -> <|"Name" -> "Line", "Angle" -> 0|>,
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{10, 10, 10, 10, 10, 10, 10, 10, 10}}
                                ]
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{10}, {10}, {10}, {10}, {10}, {10}, {10}, {10}, {10}}
                                ],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{10}, {10}, {10}, {10}, {10}, {10}, {10}, {10}, {10}}
                                ],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                            |>,
                            <|"Name" -> "Line"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Line", "Angle" -> 0|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Width" -> 9,
                        "Height" -> 1,
                        "Y" -> 5,
                        "X" -> 7,
                        "Color" -> 1,
                        "Outward" -> True,
                        "Direction" -> {0, 1}
                    |>
                }
            |>
        |>
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220813-3ISFU6"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            DevTools`ERP`NormalizeOutput[
                KeyTake[
                    Daniel`ARC`SimplifyObjects[
                        Daniel`ARC`ARCFindObjectMapping[
                            Daniel`ARC`ARCParseFile[file = "31aa019c"]["Train", 1],
                            "FormMultiColorCompositeObjects" -> False
                        ]
                    ],
                    "AddObjects"
                ]
            ]
        ]
    ]
    ,
    <|
        "AddObjects" -> <|
            "Transform" -> <|
                "Type" -> "AddObjects",
                "Objects" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, -1, 2}, {2, 2, 2}}],
                        "Position" -> {6, 1}
                    |>
                }
            |>
        |>
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220820-67AY0A"
]

Test[
    Daniel`ARC`SimplifyObjects[
        DevTools`ERP`NormalizeOutput[
            Daniel`ARC`ARCFindObjectMapping[
                Daniel`ARC`ARCParseFile[file = "746b3537"]["Train", 1],
                "FormMultiColorCompositeObjects" -> False
            ]
        ]
    ]
    ,
    <|
        <|"Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}}], "Position" -> {2, 1}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}}],
            "Position" -> {2, 1}
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{1, 1, 1}}], "Position" -> {1, 1}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "Position" -> {1, 1}
        |>,
        <|"Image" -> Daniel`ARC`ARCScene[{{1, 1, 1}}], "Position" -> {3, 1}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "Position" -> {3, 1}
        |>
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220828-V1L3I7"
]

Test[
    Daniel`ARC`SimplifyObjects[
        DevTools`ERP`NormalizeOutput[
            Daniel`ARC`ARCFindObjectMapping[
                Daniel`ARC`ARCParseFile[file = "1A2E2828"]["Train", 1],
                "FormMultiColorCompositeObjects" -> False
            ]
        ]
    ]
    ,
    <|
        "AddObjects" -> <|
            "Transform" -> <|
                "Type" -> "AddObjects",
                "Objects" -> {<|"Image" -> Daniel`ARC`ARCScene[{{6}}], "Position" -> {1, 1}|>}
            |>
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[
                {{2, 2}, {2, 2}, {2, 2}, {2, 2}, {2, 2}, {2, 2}, {2, 2}, {2, 2}}
            ],
            "Position" -> {1, 2}
        |> -> Missing[
            "NotFound"
        ],
        <|
            "Image" -> Daniel`ARC`ARCScene[
                {{3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3}, {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3}}
            ],
            "Position" -> {3, 1}
        |> -> Missing[
            "NotFound"
        ],
        <|
            "Image" -> Daniel`ARC`ARCScene[{{8}, {8}, {8}, {8}, {8}, {8}, {8}, {8}}],
            "Position" -> {1, 8}
        |> -> Missing[
            "NotFound"
        ],
        <|
            "Image" -> Daniel`ARC`ARCScene[{{6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6}}],
            "Position" -> {6, 1}
        |> -> Missing[
            "NotFound"
        ]
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220829-2O97OB"
]

Test[
    Daniel`ARC`SimplifyObjects[
        DevTools`ERP`NormalizeOutput[
            Daniel`ARC`ARCFindObjectMapping[
                Daniel`ARC`ARCParseFile[file = "ed36ccf7"]["Train", 2],
                "SingleObject" -> True
            ]
        ]
    ]
    ,
    <|
        <|
            "Image" -> Daniel`ARC`ARCScene[{{6, 6, 6}, {-1, -1, -1}, {6, 6, -1}}],
            "Position" -> {1, 1}
        |> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{6, -1, -1}, {6, -1, 6}, {6, -1, 6}}],
            "Position" -> {1, 1},
            "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
        |>
    |>
    ,
    TestID -> "ARCFindObjectMapping-20220902-PIVYPF"
]