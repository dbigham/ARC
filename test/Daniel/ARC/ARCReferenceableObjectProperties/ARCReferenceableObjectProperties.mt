(*
    Tests for: Daniel`ARC`ARCReferenceableObjectProperties
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCReferenceableObjectProperties]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Utility`BlockUUID[
                Module[
                    {parsedScenes},
                    parsedScenes = Utility`ReturnIfFailure[
                        Daniel`ARC`ARCParseExamples[file = "1caeab9d"][[All, "Input"]]
                    ];
                    Daniel`ARC`ARCReferenceableObjectProperties[
                        Keys[Daniel`ARC`ARCMakeObjectsReferenceable[parsedScenes]],
                        parsedScenes[[All, "Objects"]]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        Daniel`ARC`Object[<|"Colors" -> {1}|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d4",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dg",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dq"
            }
        |>,
        Daniel`ARC`Object[<|"Colors" -> {2}|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dh",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dr"
            }
        |>,
        Daniel`ARC`Object[<|"Colors" -> {4}|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d6",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742di",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742ds"
            }
        |>,
        Daniel`ARC`Object[<|"Y" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "Y2" -> 4,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d6",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dh",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dq"
            }
        |>,
        Daniel`ARC`Object[<|"X" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XRank" -> 3,
            "XInverseRank" -> 1,
            "X2Rank" -> 3,
            "X2InverseRank" -> 1,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dh",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dq"
            }
        |>,
        Daniel`ARC`Object[<|"YRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YInverseRank" -> 3,
            "Y2Rank" -> 1,
            "Y2InverseRank" -> 3,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d6",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dg",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742ds"
            }
        |>,
        Daniel`ARC`Object[<|"YRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YInverseRank" -> 2,
            "Y2Rank" -> 2,
            "Y2InverseRank" -> 2,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d4",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dh",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dq"
            }
        |>,
        Daniel`ARC`Object[<|"YRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YInverseRank" -> 1,
            "Y2Rank" -> 3,
            "Y2InverseRank" -> 1,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742di",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dr"
            }
        |>,
        Daniel`ARC`Object[<|"XRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XInverseRank" -> 3,
            "X2Rank" -> 1,
            "X2InverseRank" -> 3,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d4",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742di",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742ds"
            }
        |>,
        Daniel`ARC`Object[<|"XRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XInverseRank" -> 2,
            "X2Rank" -> 2,
            "X2InverseRank" -> 2,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d6",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dg",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dr"
            }
        |>
    |>
    ,
    TestID -> "ARCReferenceableObjectProperties-20220723-VLXGQE"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Utility`BlockUUID[
                Module[
                    {parsedScenes},
                    parsedScenes = Utility`ReturnIfFailure[
                        Daniel`ARC`ARCParseExamples[file = "ce9e57f2"][[All, "Input"]]
                    ];
                    Daniel`ARC`ARCReferenceableObjectProperties[
                        Keys[Daniel`ARC`ARCMakeObjectsReferenceable[parsedScenes]],
                        parsedScenes[[All, "Objects"]]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        Daniel`ARC`Object[<|"Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}]|>] -> <|
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d7",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dr",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742eb"
            }
        |>,
        Daniel`ARC`Object[<|"Y" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightRank" -> 1,
            "HeightInverseRank" -> 4,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 4,
            "YRank" -> 4,
            "YInverseRank" -> 1,
            "AspectRatioRank" -> 4,
            "AspectRatioInverseRank" -> 1,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d4",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742do",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e8"
            }
        |>,
        Daniel`ARC`Object[<|"Y" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightRank" -> 2,
            "HeightInverseRank" -> 3,
            "LengthRank" -> 2,
            "LengthInverseRank" -> 3,
            "YRank" -> 3,
            "YInverseRank" -> 2,
            "AspectRatioRank" -> 3,
            "AspectRatioInverseRank" -> 2,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dp",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e9"
            }
        |>,
        Daniel`ARC`Object[<|"X" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X2" -> 2,
            "XRank" -> 4,
            "XInverseRank" -> 1,
            "X2Rank" -> 4,
            "X2InverseRank" -> 1,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d4",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742do",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e9"
            }
        |>,
        Daniel`ARC`Object[<|"X" -> 4|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X2" -> 4,
            "XRank" -> 3,
            "XInverseRank" -> 2,
            "X2Rank" -> 3,
            "X2InverseRank" -> 2,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d5",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dq",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742eb"
            }
        |>,
        Daniel`ARC`Object[<|"X" -> 6|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X2" -> 6,
            "XRank" -> 2,
            "XInverseRank" -> 3,
            "X2Rank" -> 2,
            "X2InverseRank" -> 3,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d6",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dr",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742ea"
            }
        |>,
        Daniel`ARC`Object[<|"X" -> 8|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X2" -> 8,
            "XRank" -> 1,
            "XInverseRank" -> 4,
            "X2Rank" -> 1,
            "X2InverseRank" -> 4,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d7",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dp",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742e8"
            }
        |>,
        Daniel`ARC`Object[<|"HeightRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightInverseRank" -> 2,
            "LengthRank" -> 3,
            "LengthInverseRank" -> 2,
            "YRank" -> 2,
            "YInverseRank" -> 3,
            "AspectRatioRank" -> 2,
            "AspectRatioInverseRank" -> 3,
            "Objects" -> {
                "e7a71aa3-1a87-4e68-a1ce-009fa20742d6",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742dq",
                "e7a71aa3-1a87-4e68-a1ce-009fa20742ea"
            }
        |>
    |>
    ,
    TestID -> "ARCReferenceableObjectProperties-20220723-G8TUB6"
]