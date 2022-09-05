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
        {<|"Color" -> 1|> -> <|"X" -> 1|>, <|"Color" -> 2|> -> <|"X" -> 2|>} -> -0.23804951942010957,
        {<|"X" -> 1|> -> <|"Color" -> 1|>, <|"X" -> 2|> -> <|"Color" -> 2|>} -> -1.0268398122394748
    |>
    ,
    TestID -> "ARCScoreRuleSets-20220825-RFGVRT"
]

Test[
    Daniel`ARC`ARCScoreRuleSets[
        {
            <|
                "Rules" -> {<|"Color" -> 1|> -> <|"X" -> 1|>, <|"Color" -> 2|> -> <|"X" -> 2|>}
            |>,
            <|
                "Rules" -> {<|"X" -> 1|> -> <|"Color" -> 1|>, <|"X" -> 2|> -> <|"Color" -> 2|>}
            |>
        }
    ]
    ,
    <|
        <|"Rules" -> {<|"Color" -> 1|> -> <|"X" -> 1|>, <|"Color" -> 2|> -> <|"X" -> 2|>}|> -> -0.23804951942010957,
        <|"Rules" -> {<|"X" -> 1|> -> <|"Color" -> 1|>, <|"X" -> 2|> -> <|"Color" -> 2|>}|> -> -1.0268398122394748
    |>
    ,
    TestID -> "ARCScoreRuleSets-20220905-HCS1LX"
]