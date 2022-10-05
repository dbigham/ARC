(*
    Tests for: Daniel`ARC`ARCCheckForRepeatingPattern
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCCheckForRepeatingPattern]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            With[
                {example = Daniel`ARC`ARCParseFile["d13f3404"]["Train", 1]},
                Daniel`ARC`ARCCheckForRepeatingPattern[
                    Replace[example["Input"], 0 -> -1, {3}],
                    Replace[example["Output"], 0 -> -1, {3}]
                ]
            ]
        ]
    ]
    ,
    <|
        "Type" -> "PatternFill",
        "Pattern" -> Daniel`ARC`ARCScene[{{6, 1}, {3, -1}}],
        "StartY" -> 1,
        "StartX" -> 1,
        "TrajectoryY" -> 1,
        "TrajectoryX" -> 1
    |>
    ,
    TestID -> "ARCCheckForRepeatingPattern-20221003-RVSKNR"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            With[
                {example = Daniel`ARC`ARCParseFile["feca6190"]["Train", 1]},
                Daniel`ARC`ARCCheckForRepeatingPattern[
                    Replace[example["Input"], 0 -> -1, {3}],
                    Replace[example["Output"], 0 -> -1, {3}]
                ]
            ]
        ]
    ]
    ,
    <|
        "Type" -> "PatternFill",
        "Pattern" -> Daniel`ARC`ARCScene[{{1, -1, 7}}],
        "StartY" -> 10,
        "StartX" -> 1,
        "TrajectoryY" -> -1,
        "TrajectoryX" -> 1
    |>
    ,
    TestID -> "ARCCheckForRepeatingPattern-20221003-Z0UOD7"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            With[
                {examples = Daniel`ARC`ARCParseFile["d13f3404"]["Train"]},
                Daniel`ARC`ARCCheckForRepeatingPattern[examples]
            ]
        ]
    ]
    ,
    <|
        "Type" -> "PatternFill",
        "StartY" -> 1,
        "StartX" -> 1,
        "TrajectoryY" -> 1,
        "TrajectoryX" -> 1
    |>
    ,
    TestID -> "ARCCheckForRepeatingPattern-20221003-O89BKG"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            With[
                {example = Daniel`ARC`ARCParseFile["feca6190"]["Train", 2]},
                Daniel`ARC`ARCCheckForRepeatingPattern[
                    Replace[example["Input"], 0 -> -1, {3}],
                    Replace[example["Output"], 0 -> -1, {3}]
                ]
            ]
        ]
    ]
    ,
    <|
        "Type" -> "PatternFill",
        "Pattern" -> Daniel`ARC`ARCScene[{{-1, -1, 2}}],
        "StartY" -> 5,
        "StartX" -> 1,
        "TrajectoryY" -> -1,
        "TrajectoryX" -> 1
    |>
    ,
    TestID -> "ARCCheckForRepeatingPattern-20221004-0VN7DB"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            With[
                {example = Daniel`ARC`ARCParseFile["feca6190"]["Train", 3]},
                Daniel`ARC`ARCCheckForRepeatingPattern[
                    Replace[example["Input"], 0 -> -1, {3}],
                    Replace[example["Output"], 0 -> -1, {3}]
                ]
            ]
        ]
    ]
    ,
    <|
        "Type" -> "PatternFill",
        "Pattern" -> Daniel`ARC`ARCScene[{{4, -1, 6, -1, 8}}],
        "StartY" -> 15,
        "StartX" -> 1,
        "TrajectoryY" -> -1,
        "TrajectoryX" -> 1
    |>
    ,
    TestID -> "ARCCheckForRepeatingPattern-20221004-J255P7"
]

Test[
    With[
        {examples = Daniel`ARC`ARCParseFile["feca6190"]["Train"]},
        Daniel`ARC`ARCCheckForRepeatingPattern[examples]
    ]
    ,
    <|
        "Type" -> "PatternFill",
        "StartY" -> Inactive[Times][Daniel`ARC`ObjectValue["InputScene", "ColorCount"], 5],
        "StartX" -> 1,
        "TrajectoryY" -> -1,
        "TrajectoryX" -> 1
    |>
    ,
    TestID -> "ARCCheckForRepeatingPattern-20221004-AZAGWC"
]