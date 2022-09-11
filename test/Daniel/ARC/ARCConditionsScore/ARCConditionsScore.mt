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
    -0.07303442871535162
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
    -0.5008991914547277
    ,
    TestID -> "ARCConditionsScore-20220825-GWXD0K"
]