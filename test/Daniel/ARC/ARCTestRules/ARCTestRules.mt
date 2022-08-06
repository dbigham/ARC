(*
    Tests for: Daniel`ARC`ARCTestRules
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCTestRules]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            DevTools`ERP`NormalizeOutput["Key" -> "TestIndex"][
                DevTools`ERP`NormalizeOutput["Key" -> "AbsoluteTimeUsed"][
                    DevTools`ERP`NormalizeOutput["Key" -> "CPUTimeUsed"][
                        DevTools`ERP`NormalizeOutput["Key" -> "MemoryUsed"][
                            With[
                                {
                                    examples = Daniel`ARC`ARCParseFile[file = "0ca9ddb6"][
                                        "Train"
                                    ]
                                },
                                Daniel`ARC`ARCTestRules[
                                    examples[[1]],
                                    Utility`ReturnIfFailure[
                                        Daniel`ARC`ARCFindRules[examples]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ]
    ,
    TestResultObject[
        <|
            "TestClass" -> None,
            "TestIndex" -> _Integer,
            "TestID" -> None,
            "Outcome" -> "Success",
            "Input" -> HoldForm[
                Daniel`ARC`ARCApplyRules[
                    <|
                        "Input" -> Daniel`ARC`ARCScene[
                            {
                                {0, 0, 0, 0, 0, 0, 0, 0, 0},
                                {0, 0, 0, 0, 0, 0, 0, 0, 0},
                                {0, 0, 0, 0, 0, 0, 0, 0, 0},
                                {0, 0, 2, 0, 0, 0, 0, 0, 0},
                                {0, 0, 0, 0, 0, 0, 0, 0, 0},
                                {0, 0, 0, 0, 0, 0, 0, 0, 0},
                                {0, 0, 0, 0, 0, 0, 1, 0, 0},
                                {0, 0, 0, 0, 0, 0, 0, 0, 0},
                                {0, 0, 0, 0, 0, 0, 0, 0, 0}
                            }
                        ],
                        "Output" -> Daniel`ARC`ARCScene[
                            {
                                {0, 0, 0, 0, 0, 0, 0, 0, 0},
                                {0, 0, 0, 0, 0, 0, 0, 0, 0},
                                {0, 4, 0, 4, 0, 0, 0, 0, 0},
                                {0, 0, 2, 0, 0, 0, 0, 0, 0},
                                {0, 4, 0, 4, 0, 0, 0, 0, 0},
                                {0, 0, 0, 0, 0, 0, 7, 0, 0},
                                {0, 0, 0, 0, 0, 7, 1, 7, 0},
                                {0, 0, 0, 0, 0, 0, 7, 0, 0},
                                {0, 0, 0, 0, 0, 0, 0, 0, 0}
                            }
                        ]
                    |>["Input"],
                    {
                        <|"Colors" -> {2}|> -> <|
                            "Image" -> Daniel`ARC`ARCScene[{{4, 0, 4}, {0, 2, 0}, {4, 0, 4}}],
                            "Position" -> <|"RelativePosition" -> {-1, -1}|>
                        |>,
                        <|"Colors" -> {1}|> -> <|
                            "Image" -> Daniel`ARC`ARCScene[{{0, 7, 0}, {7, 1, 7}, {0, 7, 0}}],
                            "Position" -> <|"RelativePosition" -> {-1, -1}|>
                        |>,
                        <|"Colors" -> {8}|> -> <|"Same" -> True|>,
                        <|"Colors" -> {6}|> -> <|"Same" -> True|>
                    }
                ]
            ],
            "ExpectedOutput" -> HoldForm[
                Daniel`ARC`ARCScene[
                    {
                        {0, 0, 0, 0, 0, 0, 0, 0, 0},
                        {0, 0, 0, 0, 0, 0, 0, 0, 0},
                        {0, 4, 0, 4, 0, 0, 0, 0, 0},
                        {0, 0, 2, 0, 0, 0, 0, 0, 0},
                        {0, 4, 0, 4, 0, 0, 0, 0, 0},
                        {0, 0, 0, 0, 0, 0, 7, 0, 0},
                        {0, 0, 0, 0, 0, 7, 1, 7, 0},
                        {0, 0, 0, 0, 0, 0, 7, 0, 0},
                        {0, 0, 0, 0, 0, 0, 0, 0, 0}
                    }
                ]
            ],
            "ActualOutput" -> HoldForm[
                Daniel`ARC`ARCScene[
                    {
                        {0, 0, 0, 0, 0, 0, 0, 0, 0},
                        {0, 0, 0, 0, 0, 0, 0, 0, 0},
                        {0, 4, 0, 4, 0, 0, 0, 0, 0},
                        {0, 0, 2, 0, 0, 0, 0, 0, 0},
                        {0, 4, 0, 4, 0, 0, 0, 0, 0},
                        {0, 0, 0, 0, 0, 0, 7, 0, 0},
                        {0, 0, 0, 0, 0, 7, 1, 7, 0},
                        {0, 0, 0, 0, 0, 0, 7, 0, 0},
                        {0, 0, 0, 0, 0, 0, 0, 0, 0}
                    }
                ]
            ],
            "ExpectedMessages" -> {},
            "ActualMessages" -> {},
            "AbsoluteTimeUsed" -> _Quantity,
            "CPUTimeUsed" -> _Quantity,
            "MemoryUsed" -> _Quantity
        |>
    ]
    ,
    TestID -> "ARCTestRules-20220722-0KB564"
]