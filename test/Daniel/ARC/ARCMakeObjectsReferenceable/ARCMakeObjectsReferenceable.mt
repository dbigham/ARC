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
            "Color" -> 1,
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>}
        |>,
        Daniel`ARC`Object[<|"Colors" -> {2}|>] -> <|
            "Color" -> 2,
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>}
        |>,
        Daniel`ARC`Object[<|"Colors" -> {4}|>] -> <|
            "Color" -> 4,
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>}
        |>,
        Daniel`ARC`Object[<|"Y" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "Y2" -> 4
        |>,
        Daniel`ARC`Object[<|"X" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "X.Rank" -> 3,
            "X.InverseRank" -> 1,
            "X2.Rank" -> 3,
            "X2.InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"Y.Rank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "Y.InverseRank" -> 3,
            "Y2.Rank" -> 1,
            "Y2.InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"Y.Rank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "Y.InverseRank" -> 2,
            "Y2.Rank" -> 2,
            "Y2.InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"Y.Rank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "Y.InverseRank" -> 1,
            "Y2.Rank" -> 3,
            "Y2.InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"X.Rank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "X.InverseRank" -> 3,
            "X2.Rank" -> 1,
            "X2.InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"X.Rank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "X.InverseRank" -> 2,
            "X2.Rank" -> 2,
            "X2.InverseRank" -> 2
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
        Daniel`ARC`Object[<|"X" -> 3|>] -> <|"X2" -> 3, "ColorUseCount.Rank" -> 1|>,
        Daniel`ARC`Object[<|"Y.Rank" -> 1|>] -> <|"Y2.Rank" -> 1, "ColorUseCount.Rank" -> 1|>,
        Daniel`ARC`Object[<|"Y.Rank" -> 2|>] -> <|"Y2.Rank" -> 2, "ColorUseCount.Rank" -> 1|>,
        Daniel`ARC`Object[<|"Y.InverseRank" -> 1|>] -> <|
            "ColorUseCount" -> 1,
            "Y2.InverseRank" -> 1,
            "ColorUseCount.InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"Y.InverseRank" -> 2|>] -> <|
            "X" -> 7,
            "X2" -> 7,
            "X.Rank" -> 1,
            "Y2.InverseRank" -> 2,
            "X2.Rank" -> 1,
            "ColorUseCount.Rank" -> 1
        |>,
        Daniel`ARC`Object[<|"X.Rank" -> 2|>] -> <|
            "ColorUseCount" -> 1,
            "X2.Rank" -> 2,
            "ColorUseCount.InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"X.InverseRank" -> 1|>] -> <|
            "Colors" -> {2},
            "Color" -> 2,
            "Image" -> Daniel`ARC`ARCScene[{{2}}],
            "X2.InverseRank" -> 1,
            "ColorUseCount.Rank" -> 1
        |>,
        Daniel`ARC`Object[<|"X.InverseRank" -> 2|>] -> <|
            "Colors" -> {1},
            "Color" -> 1,
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "X2.InverseRank" -> 2,
            "ColorUseCount.Rank" -> 1
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
        "Width.Rank" -> 2,
        "Width.InverseRank" -> 1,
        "Height.Rank" -> 2,
        "Height.InverseRank" -> 1,
        "Length.Rank" -> 2,
        "Length.InverseRank" -> 1,
        "X.Rank" -> 1,
        "Area.Rank" -> 2,
        "Area.InverseRank" -> 1,
        "FilledArea.Rank" -> 2,
        "FilledArea.InverseRank" -> 1,
        "FilledProportion.Rank" -> 1,
        "FilledProportion.InverseRank" -> 2,
        "ColorUseCount.Rank" -> 2,
        "ColorUseCount.InverseRank" -> 1
    |>
    ,
    TestID -> "ARCMakeObjectsReferenceable-20220811-SKQ5BK"
]