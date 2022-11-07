(*
    Tests for: Daniel`ARC`ARCFindRotationalNormalizationsForScenes
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCFindRotationalNormalizationsForScenes]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Module[
                {parsedExamples},
                parsedExamples = Utility`ReturnIfFailure[
                    Daniel`ARC`ARCParseInputAndOutputScenes[
                        Daniel`ARC`ARCParseFile["56dc2b01"]["Train"]
                    ]
                ];
                Utility`ReturnIfFailure[
                    Daniel`ARC`ARCFindRotationalNormalizationsForScenes[parsedExamples]
                ]
            ]
        ]
    ]
    ,
    {
        <|
            "Input" -> Daniel`ARC`ARCScene[
                {
                    {0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
                    {0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
                    {3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
                    {0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0}
                }
            ],
            "Output" -> Daniel`ARC`ARCScene[
                {
                    {0, 0, 0, 0, 0, 8, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 8, 0, 3, 3, 3, 2, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 8, 3, 3, 0, 0, 2, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 8, 0, 3, 3, 3, 2, 0, 0, 0, 0, 0}
                }
            ],
            "RotationNormalization" -> <|
                Daniel`ARC`Object[<|"Colors" -> {3}|>] -> <|"X.InverseRank" -> 1|>,
                Daniel`ARC`Object[<|"Colors" -> {2}|>] -> <|"X.InverseRank" -> 2|>
            |>
        |>,
        <|
            "Input" -> Daniel`ARC`ARCScene[
                {
                    {0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0},
                    {0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0},
                    {0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0},
                    {0, 3, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0},
                    {0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0}
                }
            ],
            "Output" -> Daniel`ARC`ARCScene[
                {
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 3, 0, 2, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 3, 3, 2, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3, 2, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 0, 3, 3, 2, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 3, 3, 0, 2, 0}
                }
            ],
            "NormalizationAngle" -> 270
        |>,
        <|
            "Input" -> Daniel`ARC`ARCScene[
                {
                    {0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0},
                    {0, 0, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0},
                    {0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0},
                    {0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0}
                }
            ],
            "Output" -> Daniel`ARC`ARCScene[
                {
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 3, 3, 2, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 0, 3, 2, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 3, 2, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 3, 3, 2, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 2, 0, 0, 0}
                }
            ],
            "NormalizationAngle" -> 90
        |>
    }
    ,
    TestID -> "ARCFindRotationalNormalizationsForScenes-20221106-P4OTQB"
]