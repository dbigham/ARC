(*
    Tests for: Daniel`ARC`ARCSubPropertySets
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCSubPropertySets]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCSubPropertySets[Daniel`ARC`Private`$transformTypes[Automatic]]
    ]
    ,
    {
        {
            "Image" -> <||>,
            "Position" -> <|
                "SubProperties" -> {
                    "RelativePosition" -> <||>,
                    "Y" -> <|"ObjectGet" -> (#1["Y"] & )|>,
                    "X" -> <|"ObjectGet" -> (#1["X"] & )|>
                },
                "MinimalPropertySets" -> {{"RelativePosition"}, {"Y", "X"}}
            |>,
            "ZOrder" -> <||>
        },
        {
            Alternatives[
                "Shape" -> <|"MinimalPropertySets" -> {{"Name", "Angle"}}|>,
                "MonochromeImage" -> <||>,
                "Shapes" -> <|"ClassList" -> True|>
            ],
            Alternatives[
                "Color" -> <||>,
                Condition[
                    Missing["Color"],
                    MatchQ[
                        #1["Shape"],
                        KeyValuePattern[
                            {
                                "Border" -> KeyValuePattern["Color" -> _],
                                "Interior" -> KeyValuePattern["Color" -> _]
                            }
                        ]
                    ]
                ]
            ],
            ("X" -> <||>) | ("XInverse" -> <||>),
            ("Y" -> <||>) | ("YInverse" -> <||>),
            ("Width" -> <||>) | ("X2" -> <||>) | ("X2Inverse" -> <||>),
            ("Height" -> <||>) | ("Y2" -> <||>) | ("Y2Inverse" -> <||>),
            "ZOrder" -> <||>
        }
    }
    ,
    TestID -> "ARCSubPropertySets-20220824-T9149Q"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCSubPropertySets[
            <|"SubProperties" -> {"Y" | Missing["Y"], "X" | Missing["Y"]}|>
        ]
    ]
    ,
    {{"Y" | Missing["Y"], "X" | Missing["Y"]}}
    ,
    TestID -> "ARCSubPropertySets-20220826-XZS2EB"
]

Test[
    Daniel`ARC`ARCSubPropertySets[
        <|
            "MinimalPropertySets" -> {
                {"Image", "Y", "X"},
                {"Shape", "Width", "Height", "Color", "Y", "X"}
            }
        |>
    ]
    ,
    {
        {"Image" -> <||>, "Y" -> <||>, "X" -> <||>},
        {
            "Shape" -> <||>,
            "Width" -> <||>,
            "Height" -> <||>,
            "Color" -> <||>,
            "Y" -> <||>,
            "X" -> <||>
        }
    }
    ,
    TestID -> "ARCSubPropertySets-20220827-4W9THQ"
]

Test[
    Daniel`ARC`ARCSubPropertySets[
        <|
            "MinimalPropertySets" -> {
                {"Image", "Y", "X"},
                {"Shape", "Width", "Height", "Color", "Y", "X"}
            },
            "SubProperties" -> {
                "Image" -> <||>,
                "Y" -> <||>,
                "X" -> <||>,
                "Shape" -> <||>,
                "Color" -> <||>,
                "Width" -> <||>,
                "Height" -> <||>
            }
        |>
    ]
    ,
    {
        {"Image" -> <||>, "Y" -> <||>, "X" -> <||>},
        {
            "Shape" -> <||>,
            "Width" -> <||>,
            "Height" -> <||>,
            "Color" -> <||>,
            "Y" -> <||>,
            "X" -> <||>
        }
    }
    ,
    TestID -> "ARCSubPropertySets-20220827-CAJVYZ"
]

Test[
    Daniel`ARC`ARCSubPropertySets[
        Utility`Gett[
            Daniel`ARC`Private`$transformTypes["AddComponents", "SubProperties"],
            "Components"
        ]
    ]
    ,
    {
        {
            "Image" -> <||>,
            "Position" -> <|
                "SubProperties" -> {
                    "RelativePosition" -> <|
                        "SubProperties" -> {"Y" | "YInverse", "X" | "XInverse"}
                    |>
                }
            |>
        },
        {
            "Shapes" -> <|"ClassList" -> True|>,
            "Width" -> <|"ObjectGet" -> (#1["Width"] & )|>,
            "Height" -> <|"ObjectGet" -> (#1["Height"] & )|>,
            "Color" -> <|"ObjectGet" -> (Daniel`ARC`InferColor[#1] & )|>,
            "Position" -> <|
                "SubProperties" -> {
                    "RelativePosition" -> <|
                        "SubProperties" -> {"Y" | "YInverse", "X" | "XInverse"}
                    |>
                }
            |>
        },
        {
            "Shape" -> <|"ObjectGet" -> (#1["Shape"] & )|>,
            "Width" -> <|"ObjectGet" -> (#1["Width"] & )|>,
            "Height" -> <|"ObjectGet" -> (#1["Height"] & )|>,
            "Color" -> <|"ObjectGet" -> (Daniel`ARC`InferColor[#1] & )|>,
            "Position" -> <|
                "SubProperties" -> {
                    "RelativePosition" -> <|
                        "SubProperties" -> {"Y" | "YInverse", "X" | "XInverse"}
                    |>
                }
            |>
        },
        {
            "Outward" -> <||>,
            "Shape" -> <|"ObjectGet" -> (#1["Shape"] & )|>,
            "Direction" -> <||>,
            "Color" -> <|"ObjectGet" -> (Daniel`ARC`InferColor[#1] & )|>,
            "X" -> <|"ObjectGet" -> (#1["X"] & )|>
        }
    }
    ,
    TestID -> "ARCSubPropertySets-20220827-YX24O2"
]