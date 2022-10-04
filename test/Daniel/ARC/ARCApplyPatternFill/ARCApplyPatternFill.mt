(*
    Tests for: Daniel`ARC`ARCApplyPatternFill
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCApplyPatternFill]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCScene[
            Daniel`ARC`ARCApplyPatternFill[
                ConstantArray[Daniel`ARC`Private`$nonImageColor, {6, 6}],
                <|
                    "Type" -> "PatternFill",
                    "Pattern" -> Daniel`ARC`ARCScene[{{6, 1, -1}, {3, -1, -1}, {-1, -1, -1}}],
                    "Start" -> {1, 1},
                    "Trajectory" -> {1, 1}
                |>
            ]
        ]
    ]
    ,
    Daniel`ARC`ARCScene[
        {
            {6, 1, -1, -1, -1, -1},
            {3, 6, 1, -1, -1, -1},
            {-1, 3, 6, 1, -1, -1},
            {-1, -1, 3, 6, 1, -1},
            {-1, -1, -1, 3, 6, 1},
            {-1, -1, -1, -1, 3, 6}
        }
    ]
    ,
    TestID -> "ARCApplyPatternFill-20221003-EFN638"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCScene[
            Daniel`ARC`ARCApplyPatternFill[
                ConstantArray[Daniel`ARC`Private`$nonImageColor, {10, 10}],
                <|
                    "Type" -> "PatternFill",
                    "Pattern" -> Daniel`ARC`ARCScene[{{1, -1, 7, -1, -1}}],
                    "Start" -> {10, 1},
                    "Trajectory" -> {-1, 1}
                |>
            ]
        ]
    ]
    ,
    Daniel`ARC`ARCScene[
        {
            {-1, -1, -1, -1, -1, -1, -1, -1, -1, 1},
            {-1, -1, -1, -1, -1, -1, -1, -1, 1, -1},
            {-1, -1, -1, -1, -1, -1, -1, 1, -1, 7},
            {-1, -1, -1, -1, -1, -1, 1, -1, 7, -1},
            {-1, -1, -1, -1, -1, 1, -1, 7, -1, -1},
            {-1, -1, -1, -1, 1, -1, 7, -1, -1, -1},
            {-1, -1, -1, 1, -1, 7, -1, -1, -1, -1},
            {-1, -1, 1, -1, 7, -1, -1, -1, -1, -1},
            {-1, 1, -1, 7, -1, -1, -1, -1, -1, -1},
            {1, -1, 7, -1, -1, -1, -1, -1, -1, -1}
        }
    ]
    ,
    TestID -> "ARCApplyPatternFill-20221003-CBDEOP"
]