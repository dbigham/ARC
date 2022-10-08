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

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            With[
                {example = Daniel`ARC`ARCParseFile["eb281b96"]["Train", 1]},
                Daniel`ARC`ARCCheckForRepeatingPattern[
                    "Helper",
                    Replace[example["Input"], 0 -> -1, {3}],
                    Replace[example["Output"], 0 -> -1, {3}]
                ]
            ]
        ]
    ]
    ,
    <|
        "Rule" -> <|
            "Type" -> "PatternFill",
            "Pattern" -> Daniel`ARC`ARCScene[
                {
                    {-1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1},
                    {-1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1},
                    {8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8}
                }
            ],
            "StartY" -> 1,
            "StartX" -> 1,
            "TrajectoryY" -> 4,
            "TrajectoryX" -> 0
        |>,
        "Improvements" -> {
            {1, 3},
            {1, 7},
            {1, 11},
            {1, 15},
            {2, 2},
            {2, 4},
            {2, 6},
            {2, 8},
            {2, 10},
            {2, 12},
            {2, 14},
            {2, 16},
            {3, 1},
            {3, 5},
            {3, 9},
            {3, 13},
            {3, 17},
            {5, 3},
            {5, 7},
            {5, 11},
            {5, 15},
            {6, 2},
            {6, 4},
            {6, 6},
            {6, 8},
            {6, 10},
            {6, 12},
            {6, 14},
            {6, 16},
            {7, 1},
            {7, 5},
            {7, 9},
            {7, 13},
            {7, 17},
            {9, 3},
            {9, 7},
            {9, 11},
            {9, 15}
        }
    |>
    ,
    TestID -> "ARCCheckForRepeatingPattern-20221007-1VTS1J"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            With[
                {example = Daniel`ARC`ARCParseFile["eb281b96"]["Train", 1]},
                Daniel`ARC`ARCCheckForRepeatingPattern[
                    Replace[example["Input"], 0 -> -1, {3}],
                    Replace[example["Output"], 0 -> -1, {3}]
                ]
            ]
        ]
    ]
    ,
    {
        <|
            "Type" -> "PatternFill",
            "List" -> {
                <|
                    "Pattern" -> Daniel`ARC`ARCScene[
                        {
                            {-1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1},
                            {-1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1},
                            {8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8}
                        }
                    ],
                    "StartY" -> 1,
                    "StartX" -> 1,
                    "TrajectoryY" -> 4,
                    "TrajectoryX" -> 0
                |>,
                <|
                    "Pattern" -> Daniel`ARC`ARCScene[
                        {
                            {8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8},
                            {-1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1, 8, -1},
                            {-1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1, -1, 8, -1, -1}
                        }
                    ],
                    "StartY" -> 7,
                    "StartX" -> 1,
                    "TrajectoryY" -> -4,
                    "TrajectoryX" -> 0,
                    "Transforms" -> {
                        <|"Type" -> "Rotation", "Angle" -> 180|>,
                        <|"Type" -> "Flip", "Direction" -> "Vertical"|>
                    }
                |>
            }
        |>
    }
    ,
    TestID -> "ARCCheckForRepeatingPattern-20221007-E4XBMV"
]