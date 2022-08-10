(*
    Tests for: Daniel`ARC`ARCClassifySquare
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCClassifySquare]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifySquare[{{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}]
    ]
    ,
    <|"Name" -> "Square", "Filled" -> True|>
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

Test[
    Daniel`ARC`ARCClassifySquare[{{1, 1, 1}, {1, -1, 1}, {1, 1, 1}}]
    ,
    <|"Name" -> "Square", "Filled" -> False|>
    ,
    TestID -> "ARCClassifySquare-20220810-BZZNHY"
]

Test[
    Daniel`ARC`ARCClassifySquare[{{1, 1, 1}, {1, 2, 1}, {1, 1, 1}}]
    ,
    <|"Name" -> "Square"|>
    ,
    TestID -> "ARCClassifySquare-20220810-NKIOTJ"
]