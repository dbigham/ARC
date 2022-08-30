(*
    Tests for: Daniel`ARC`ARCConditionsScore
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCConditionsScore]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCConditionsScore[<|"Color" -> 1|>]
    ]
    ,
    -0.10462669622104188
    ,
    TestID -> "ARCConditionsScore-20220825-IHY3H7"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCConditionsScore[<|"Shape" -> <|"Name" -> "Square"|>|>]
    ]
    ,
    0.13228756555322946
    ,
    TestID -> "ARCConditionsScore-20220825-CWZNUU"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCConditionsScore[<|"X" -> 1|>]
    ]
    ,
    -0.5035871324805669
    ,
    TestID -> "ARCConditionsScore-20220825-GWXD0K"
]