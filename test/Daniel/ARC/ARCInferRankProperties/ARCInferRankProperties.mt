(*
    Tests for: Daniel`ARC`ARCInferRankProperties
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCInferRankProperties]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCInferRankProperties[
            {<|"Length" -> 1|>, <|"Length" -> 5|>, <|"Length" -> 10|>}
        ]
    ]
    ,
    {
        <|"Length" -> 1, "LengthRank" -> 3, "LengthInverseRank" -> 1|>,
        <|"Length" -> 5, "LengthRank" -> 2, "LengthInverseRank" -> 2|>,
        <|"Length" -> 10, "LengthRank" -> 1, "LengthInverseRank" -> 3|>
    }
    ,
    TestID -> "ARCInferRankProperties-20220804-G0RK85"
]