(*
    Tests for: Daniel`ARC`ARCInferPropertiesThatRequireFullObjectList
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCInferPropertiesThatRequireFullObjectList]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCInferPropertiesThatRequireFullObjectList[
        {<|"Height" -> 1|>, <|"Height" -> 2|>}
    ]
    ,
    {
        <|"Height" -> 1, "HeightRank" -> 2, "HeightInverseRank" -> 1|>,
        <|"Height" -> 2, "HeightRank" -> 1, "HeightInverseRank" -> 2|>
    }
    ,
    TestID -> "ARCInferPropertiesThatRequireFullObjectList-20220820-2OXRIV"
]