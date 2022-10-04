(*
    Tests for: Daniel`ARC`ARCCheckForRepeatingPattern
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCCheckForRepeatingPattern]
    
    Author: danielb
*)

Test[
    With[
        {example = Daniel`ARC`ARCParseFile["d13f3404"]["Train", 1]},
        Daniel`ARC`ARCCheckForRepeatingPattern[
            Replace[example["Input"], 0 -> -1, {3}],
            Replace[example["Output"], 0 -> -1, {3}]
        ]
    ]
    ,
    <|
        "Type" -> "PatternFill",
        "Pattern" -> Daniel`ARC`ARCScene[{{6, 1, -1}, {3, -1, -1}, {-1, -1, -1}}],
        "Start" -> {1, 1},
        "Trajectory" -> {1, 1}
    |>
    ,
    TestID -> "ARCCheckForRepeatingPattern-20221003-RVSKNR"
]

Test[
    With[
        {example = Daniel`ARC`ARCParseFile["feca6190"]["Train", 1]},
        Daniel`ARC`ARCCheckForRepeatingPattern[
            Replace[example["Input"], 0 -> -1, {3}],
            Replace[example["Output"], 0 -> -1, {3}]
        ]
    ]
    ,
    <|
        "Type" -> "PatternFill",
        "Pattern" -> Daniel`ARC`ARCScene[{{1, -1, 7, -1, -1}}],
        "Start" -> {10, 1},
        "Trajectory" -> {-1, 1}
    |>
    ,
    TestID -> "ARCCheckForRepeatingPattern-20221003-Z0UOD7"
]

Test[
    With[
        {examples = Daniel`ARC`ARCParseFile["d13f3404"]["Train"]},
        Daniel`ARC`ARCCheckForRepeatingPattern[examples]
    ]
    ,
    <|"Type" -> "PatternFill", "Start" -> {1, 1}, "Trajectory" -> {1, 1}|>
    ,
    TestID -> "ARCCheckForRepeatingPattern-20221003-O89BKG"
]