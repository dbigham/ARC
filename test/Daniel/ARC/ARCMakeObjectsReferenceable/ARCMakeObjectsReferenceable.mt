(*
    Tests for: Daniel`ARC`ARCMakeObjectsReferenceable
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCMakeObjectsReferenceable]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Utility`BlockUUID[
                Daniel`ARC`ARCMakeObjectsReferenceable[
                    Daniel`ARC`ARCParseExamples[file = "1caeab9d"][[All, "Input"]]
                ]
            ]
        ]
    ]
    ,
    <|
        Daniel`ARC`Object[<|"Colors" -> {1}|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>}
        |>,
        Daniel`ARC`Object[<|"Colors" -> {2}|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>}
        |>,
        Daniel`ARC`Object[<|"Colors" -> {4}|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>}
        |>,
        Daniel`ARC`Object[<|"Y" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "Y2" -> 4
        |>,
        Daniel`ARC`Object[<|"X" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XRank" -> 3,
            "XInverseRank" -> 1,
            "X2Rank" -> 3,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"YRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YInverseRank" -> 3,
            "Y2Rank" -> 1,
            "Y2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"YRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YInverseRank" -> 2,
            "Y2Rank" -> 2,
            "Y2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"YRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YInverseRank" -> 1,
            "Y2Rank" -> 3,
            "Y2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"XRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XInverseRank" -> 3,
            "X2Rank" -> 1,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"XRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XInverseRank" -> 2,
            "X2Rank" -> 2,
            "X2InverseRank" -> 2
        |>
    |>
    ,
    TestID -> "ARCMakeObjectsReferenceable-20220723-84LXFB"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Utility`BlockUUID[
                Daniel`ARC`ARCMakeObjectsReferenceable[
                    Daniel`ARC`ARCParseExamples[file = "0ca9ddb6"][[All, "Input"]]
                ]
            ]
        ]
    ]
    ,
    <|
        Daniel`ARC`Object[<|"X" -> 3|>] -> <|"X2" -> 3, "ColorUseCountRank" -> 1|>,
        Daniel`ARC`Object[<|"YRank" -> 1|>] -> <|"Y2Rank" -> 1, "ColorUseCountRank" -> 1|>,
        Daniel`ARC`Object[<|"YRank" -> 2|>] -> <|"Y2Rank" -> 2, "ColorUseCountRank" -> 1|>,
        Daniel`ARC`Object[<|"YInverseRank" -> 1|>] -> <|
            "ColorUseCount" -> 1,
            "Y2InverseRank" -> 1,
            "ColorUseCountInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 2|>] -> <|
            "X" -> 7,
            "X2" -> 7,
            "XRank" -> 1,
            "Y2InverseRank" -> 2,
            "X2Rank" -> 1,
            "ColorUseCountRank" -> 1
        |>,
        Daniel`ARC`Object[<|"XRank" -> 2|>] -> <|
            "ColorUseCount" -> 1,
            "X2Rank" -> 2,
            "ColorUseCountInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 1|>] -> <|
            "Colors" -> {2},
            "Image" -> Daniel`ARC`ARCScene[{{2}}],
            "X2InverseRank" -> 1,
            "ColorUseCountRank" -> 1
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 2|>] -> <|
            "Colors" -> {1},
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "X2InverseRank" -> 2,
            "ColorUseCountRank" -> 1
        |>
    |>
    ,
    TestID -> "ARCMakeObjectsReferenceable-20220723-V2H68K"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            First[
                Normal[
                    Utility`BlockUUID[
                        KeySelect[
                            Daniel`ARC`ARCMakeObjectsReferenceable[
                                Daniel`ARC`ARCParseExamples[
                                    file = "ifmyulnv8-dynamic-shape"
                                ][[
                                    All,
                                    "Input"
                                ]]
                            ],
                             !FreeQ[#1, _Except] & 
                        ]
                    ]
                ]
            ]
        ]
    ]
    ,
    Daniel`ARC`Object[<|"Colors" -> Except[{5}]|>] -> <|
        "WidthRank" -> 2,
        "WidthInverseRank" -> 1,
        "HeightRank" -> 2,
        "HeightInverseRank" -> 1,
        "LengthRank" -> 2,
        "LengthInverseRank" -> 1,
        "XRank" -> 1,
        "ColorUseCountRank" -> 2,
        "ColorUseCountInverseRank" -> 1
    |>
    ,
    TestID -> "ARCMakeObjectsReferenceable-20220811-SKQ5BK"
]