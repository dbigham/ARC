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