(*
    Tests for: Daniel`ARC`ARCPossiblyGeneratedObjectQ
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCPossiblyGeneratedObjectQ]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCPossiblyGeneratedObjectQ[
                Daniel`ARC`ARCParseScene[
                    Daniel`ARC`ARCParseFile["28e73c20"]["Train", 1, "Output"]
                ][[
                    "Objects",
                    1
                ]]
            ]
        ]
    ]
    ,
    <|
        "Result" -> True,
        "TurnCount" -> 6,
        "Line" -> {
            {1, 1},
            {1, 2},
            {1, 3},
            {1, 4},
            {1, 5},
            {1, 6},
            {2, 6},
            {3, 6},
            {4, 6},
            {5, 6},
            {6, 6},
            {6, 5},
            {6, 4},
            {6, 3},
            {6, 2},
            {6, 1},
            {5, 1},
            {4, 1},
            {3, 1},
            {3, 2},
            {3, 3},
            {3, 4},
            {4, 4},
            {4, 3}
        }
    |>
    ,
    TestID -> "ARCPossiblyGeneratedObjectQ-20220914-4VG3KZ"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCPossiblyGeneratedObjectQ[
                Daniel`ARC`ARCParseScene[
                    Daniel`ARC`ARCParseFile["28e73c20"]["Train", 1, "Output"]
                ][[
                    "Objects",
                    1
                ]],
                "FirstPosition" -> {1, 3}
            ]
        ]
    ]
    ,
    <|
        "Result" -> True,
        "TurnCount" -> 6,
        "Line" -> {
            {1, 1},
            {1, 2},
            {1, 3},
            {1, 4},
            {1, 5},
            {1, 6},
            {2, 6},
            {3, 6},
            {4, 6},
            {5, 6},
            {6, 6},
            {6, 5},
            {6, 4},
            {6, 3},
            {6, 2},
            {6, 1},
            {5, 1},
            {4, 1},
            {3, 1},
            {3, 2},
            {3, 3},
            {3, 4},
            {4, 4},
            {4, 3}
        }
    |>
    ,
    TestID -> "ARCPossiblyGeneratedObjectQ-20220914-I7TJWQ"
]

Test[
    Daniel`ARC`ARCPossiblyGeneratedObjectQ[
        Daniel`ARC`ARCParseScene[
            Daniel`ARC`ARCParseFile["e5790162"]["Train", 1, "Output"],
            "FormMultiColorCompositeObjects" -> False
        ][[
            "Objects",
            1
        ]]
    ]
    ,
    <|
        "Result" -> True,
        "TurnCount" -> 1,
        "Line" -> {{3, 1}, {3, 2}, {3, 3}, {4, 3}, {5, 3}, {6, 3}}
    |>
    ,
    TestID -> "ARCPossiblyGeneratedObjectQ-20220921-GFL67M"
]