(*
    Tests for: Daniel`ARC`ARCClassifySquare
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCClassifySquare]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCClassifySquare[{{1, 1}, {1, 1}}]
    ,
    <|"Name" -> "Square"|>
    ,
    TestID -> "ARCClassifySquare-20220717-XFH7SI"
]

Test[
    ToString[Daniel`ARC`ARCClassifySquare[{{1, 1}, {1, 0}}]]
    ,
    "Nothing"
    ,
    TestID -> "ARCClassifySquare-20220717-70B916"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        ToString[Daniel`ARC`ARCClassifySquare[{{1, 1}, {1, 1}, {1, 1}}]]
    ]
    ,
    "Nothing"
    ,
    TestID -> "ARCClassifySquare-20220717-WY3GMP"
]