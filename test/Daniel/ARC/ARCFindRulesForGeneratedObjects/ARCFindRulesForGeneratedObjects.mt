(*
    Tests for: Daniel`ARC`ARCFindRulesForGeneratedObjects
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCFindRulesForGeneratedObjects]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCSimplifyRules[
        Module[
            {example},
            examples = Utility`PrintIfFailure[
                Daniel`ARC`ARCParseInputAndOutputScenes[
                    Daniel`ARC`ARCParseFile["e5790162"]["Train"],
                    "FormMultiColorCompositeObjects" -> False
                ]
            ];
            Daniel`ARC`ARCFindRulesForGeneratedObjects[
                Map[
                    Function[
                        {example},
                        Append[
                            SelectFirst[
                                example[["Output", "Objects"]],
                                #1["Color"] === 3 & 
                            ],
                            "Scene" -> Replace[
                                example["Output", "Scene"],
                                0 -> Daniel`ARC`Private`$nonImageColor,
                                {3}
                            ]
                        ]
                    ],
                    examples
                ],
                examples
            ]
        ]
    ]
    ,
    {
        <|"ColorAhead" -> Missing["KeyAbsent", "ColorAhead"]|> -> <|
            "OutgoingDirection" -> {0, 1}
        |>,
        <|"ColorAhead" -> -1|> -> <|"TurnDegrees" -> 0|>,
        <|"ColorAhead" -> 6|> -> <|"TurnDegrees" -> 90|>,
        <|"ColorAhead" -> -2|> -> <|"Stop" -> True|>,
        <|"ColorAhead" -> 8|> -> <|"TurnDegrees" -> -90|>
    }
    ,
    TestID -> "ARCFindRulesForGeneratedObjects-20220922-J2ZQTL"
]