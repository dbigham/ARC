(*
    Tests for: Daniel`ARC`ARCScoreRuleSets
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCScoreRuleSets]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCScoreRuleSets[
            {
                {<|"Color" -> 1|> -> <|"X" -> 1|>, <|"Color" -> 2|> -> <|"X" -> 2|>},
                {<|"X" -> 1|> -> <|"Color" -> 1|>, <|"X" -> 2|> -> <|"Color" -> 2|>}
            }
        ]
    ]
    ,
    <|
        {<|"Color" -> 1|> -> <|"X" -> 1|>, <|"Color" -> 2|> -> <|"X" -> 2|>} -> -0.24960215257064838,
        {<|"X" -> 1|> -> <|"Color" -> 1|>, <|"X" -> 2|> -> <|"Color" -> 2|>} -> -1.0268398122394748
    |>
    ,
    TestID -> "ARCScoreRuleSets-20220825-RFGVRT"
]