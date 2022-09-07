(*
    Tests for: Daniel`ARC`ARCRuleToPattern
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCRuleToPattern]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRuleToPattern[<|"Width" -> 1|>]
    ]
    ,
    KeyValuePattern[{"Width" -> 1}]
    ,
    TestID -> "ARCRuleToPattern-20220812-N9QQI7"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRuleToPattern[<|"Shapes" -> <|"Name" -> "Square"|>|>]
    ]
    ,
    KeyValuePattern[{"Shapes" -> {___, KeyValuePattern[{"Name" -> "Square"}], ___}}]
    ,
    TestID -> "ARCRuleToPattern-20220812-IFR6QS"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRuleToPattern[<|"Width" -> 1|> -> <|"Colors" -> {1}|>]
    ]
    ,
    KeyValuePattern[{"Width" -> 1}]
    ,
    TestID -> "ARCRuleToPattern-20220812-DV02IG"
]

Test[
    Daniel`ARC`ARCRuleToPattern[<|"Width" -> 1, "Height" -> 3|>]
    ,
    KeyValuePattern[{"Width" -> 1, "Height" -> 3}]
    ,
    TestID -> "ARCRuleToPattern-20220812-9RDZ64"
]

Test[
    DevTools`ERP`NormalizeOutput[
        Daniel`ARC`ARCRuleToPattern[
            <|
                "Width" -> 1,
                "Components" -> {
                    Repeated[<|"Shape" -> "Pixel", "Image" -> "Same"|>, {2}]
                }
            |>
        ]
    ]
    ,
    KeyValuePattern[
        {
            "Width" -> 1,
            "Components" -> {
                Repeated[
                    KeyValuePattern[
                        {"Shape" -> "Pixel", "Image" -> Daniel`ARC`Private`patternSymbol$1_}
                    ],
                    {2}
                ]
            }
        }
    ]
    ,
    TestID -> "ARCRuleToPattern-20220827-VQWZFF"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`ERP`NormalizeOutput[
            With[
                {
                    pattern = Daniel`ARC`ARCRuleToPattern[
                        <|"Width" -> 1, "Shape" -> Missing["NotFound"]|>
                    ]
                },
                <|"Pattern" -> pattern, "Matches" -> MatchQ[<|"Width" -> 1|>, pattern]|>
            ]
        ]
    ]
    ,
    <|
        "Pattern" -> Condition[
            Daniel`ARC`Private`assoc:KeyValuePattern[{"Width" -> 1}],
            MissingQ[Daniel`ARC`Private`assoc["Shape"]]
        ],
        "Matches" -> True
    |>
    ,
    TestID -> "ARCRuleToPattern-20220905-8BG23J"
]

Test[
    Daniel`ARC`ARCRuleToPattern[<||>]
    ,
    _
    ,
    TestID -> "ARCRuleToPattern-20220906-YCJSGP"
]