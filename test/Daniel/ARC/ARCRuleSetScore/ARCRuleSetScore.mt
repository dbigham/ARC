(*
    Tests for: Daniel`ARC`ARCRuleSetScore
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCRuleSetScore]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRuleSetScore[
            {
                <|"Color" -> 1|> -> <|"X" -> 1, "Examples" -> {1, 2, 3}|>,
                <|"Color" -> 2|> -> <|"X" -> 2|>
            }
        ]
    ]
    ,
    -0.24054148833924005
    ,
    TestID -> "ARCRuleSetScore-20220825-YKR23C"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRuleSetScore[
            {<|"X" -> 1|> -> <|"Color" -> 1|>, <|"X" -> 2|> -> <|"Color" -> 2|>}
        ]
    ]
    ,
    -1.0268398122394748
    ,
    TestID -> "ARCRuleSetScore-20220826-6EL1X5"
]