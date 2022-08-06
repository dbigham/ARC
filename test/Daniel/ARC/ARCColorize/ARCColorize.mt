(*
    Tests for: Daniel`ARC`ARCColorize
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCColorize]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCColorize[Daniel`ARC`ARCScene[{{1, 0}, {0, 1}}], 2]
    ,
    Daniel`ARC`ARCScene[{{2, 0}, {0, 2}}]
    ,
    TestID -> "ARCColorize-20220725-QRNPB0"
]