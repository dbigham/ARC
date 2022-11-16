(*
    Tests for: Daniel`ARC`ARCInferDimensionalSequenceOrder
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCInferDimensionalSequenceOrder]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCInferDimensionalSequenceOrder[
        {<|"X" -> 1, "X2" -> 1|>, <|"X" -> 2, "X2" -> 2|>},
        "X"
    ]
    ,
    {
        <|"X" -> 1, "X2" -> 1, "X.InverseRank" -> 1|>,
        <|"X" -> 2, "X2" -> 2, "X.InverseRank" -> 2|>
    }
    ,
    TestID -> "ARCInferDimensionalSequenceOrder-20221113-MW2DON"
]

Test[
    Daniel`ARC`ARCInferDimensionalSequenceOrder[
        {<|"Y" -> 1, "Y2" -> 1|>, <|"Y" -> 2, "Y2" -> 2|>},
        "Y"
    ]
    ,
    {
        <|"Y" -> 1, "Y2" -> 1, "Y.InverseRank" -> 1|>,
        <|"Y" -> 2, "Y2" -> 2, "Y.InverseRank" -> 2|>
    }
    ,
    TestID -> "ARCInferDimensionalSequenceOrder-20221113-4GBNSN"
]

Test[
    Daniel`ARC`ARCInferDimensionalSequenceOrder[
        {<|"X" -> 1, "X2" -> 2|>, <|"X" -> 2, "X2" -> 2|>},
        "X"
    ]
    ,
    Missing["OverlappingObjects"]
    ,
    TestID -> "ARCInferDimensionalSequenceOrder-20221113-P5BSIK"
]

Test[
    Daniel`ARC`ARCInferDimensionalSequenceOrder[
        {<|"X" -> 2, "X2" -> 2|>, <|"X" -> 1, "X2" -> 1|>},
        "X"
    ]
    ,
    {
        <|"X" -> 1, "X2" -> 1, "X.InverseRank" -> 1|>,
        <|"X" -> 2, "X2" -> 2, "X.InverseRank" -> 2|>
    }
    ,
    TestID -> "ARCInferDimensionalSequenceOrder-20221113-S2YWMK"
]