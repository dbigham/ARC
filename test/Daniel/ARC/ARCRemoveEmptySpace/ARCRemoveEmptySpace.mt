(*
    Tests for: Daniel`ARC`ARCRemoveEmptySpace
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCRemoveEmptySpace]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCRemoveEmptySpace[
        Daniel`ARC`ARCScene[{{1, 0, 0}, {2, 0, 0}, {1, 0, 0}}],
        0
    ]
    ,
    Daniel`ARC`ARCScene[{{1}, {2}, {1}}]
    ,
    TestID -> "ARCRemoveEmptySpace-20220828-FCA25A"
]

Test[
    Daniel`ARC`ARCRemoveEmptySpace[
        Daniel`ARC`ARCScene[{{3, 4, 6}, {0, 0, 0}, {0, 0, 0}}],
        0
    ]
    ,
    Daniel`ARC`ARCScene[{{3, 4, 6}}]
    ,
    TestID -> "ARCRemoveEmptySpace-20220828-6QR2OW"
]