(*
    Tests for: Daniel`ARC`ARCGridOrDividerQ
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCGridOrDividerQ]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCGridOrDividerQ[
            {
                {-1, -1, 5, -1, -1, 5, -1, -1},
                {-1, -1, 5, -1, -1, 5, -1, -1},
                {5, 5, 5, 5, 5, 5, 5, 5},
                {-1, -1, 5, -1, -1, 5, -1, -1},
                {-1, -1, 5, -1, -1, 5, -1, -1},
                {5, 5, 5, 5, 5, 5, 5, 5},
                {-1, -1, 5, -1, -1, 5, -1, -1},
                {-1, -1, 5, -1, -1, 5, -1, -1}
            },
            1,
            1,
            8,
            8
        ]
    ]
    ,
    True
    ,
    TestID -> "ARCGridOrDividerQ-20220820-RQ5QYR"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCGridOrDividerQ[{{5}, {5}, {5}, {5}}, 1, 3, 5, 4]
    ]
    ,
    True
    ,
    TestID -> "ARCGridOrDividerQ-20220820-ORUTJS"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCGridOrDividerQ[{{5, 5, 5, 5, 5}}, 3, 1, 5, 4]
    ]
    ,
    True
    ,
    TestID -> "ARCGridOrDividerQ-20220820-BZLAT3"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCGridOrDividerQ[{{5}, {5}, {5}}, 1, 3, 5, 4]
    ]
    ,
    False
    ,
    TestID -> "ARCGridOrDividerQ-20220820-85JJ4T"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCGridOrDividerQ[{{5, 5, 5, 5}}, 3, 1, 5, 4]
    ]
    ,
    False
    ,
    TestID -> "ARCGridOrDividerQ-20220820-Y2TG05"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Counts[
                Daniel`ARC`ARCGridOrDividerQ[
                    "Objects" -> Daniel`ARC`ARCImageRegionToObject[
                        Utility`ReturnIfFailure[
                            Daniel`ARC`ARCContiguousImageRegions[
                                Daniel`ARC`ARCParseFile["363442ee"][[1, "Train", 1, "Input"]],
                                "Background" -> 0
                            ]
                        ]
                    ],
                    13,
                    9
                ][[
                    All,
                    "GridOrDivider"
                ]]
            ]
        ]
    ]
    ,
    <|Missing["KeyAbsent", "GridOrDivider"] -> 7, True -> 1|>
    ,
    TestID -> "ARCGridOrDividerQ-20220820-82AR2Q"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCGridOrDividerQ[{{5}, {5}, {5}, {5}}, 1, 1, 5, 4]
    ]
    ,
    False
    ,
    TestID -> "ARCGridOrDividerQ-20220821-DACML8"
]

Test[
    Daniel`ARC`ARCGridOrDividerQ[{{5, 5, 5, 5, 5}}, 1, 1, 5, 4]
    ,
    False
    ,
    TestID -> "ARCGridOrDividerQ-20220821-RHMMV3"
]