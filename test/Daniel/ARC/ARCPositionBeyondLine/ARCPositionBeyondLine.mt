(*
    Tests for: Daniel`ARC`ARCPositionBeyondLine
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCPositionBeyondLine]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCPositionBeyondLine[<|"Y" -> 3, "X2" -> 5|>, {0, 1}]
    ,
    {3, 6}
    ,
    TestID -> "ARCPositionBeyondLine-20220826-6CT9YU"
]

Test[
    Daniel`ARC`ARCPositionBeyondLine[<|"Y" -> 3, "X" -> 3|>, {0, -1}]
    ,
    {3, 2}
    ,
    TestID -> "ARCPositionBeyondLine-20220826-2FJQQR"
]

Test[
    Daniel`ARC`ARCPositionBeyondLine[<|"Y" -> 3, "X" -> 3|>, {-1, 0}]
    ,
    {2, 3}
    ,
    TestID -> "ARCPositionBeyondLine-20220826-YPD44N"
]

Test[
    Daniel`ARC`ARCPositionBeyondLine[<|"Y2" -> 5, "X" -> 3|>, {1, 0}]
    ,
    {6, 3}
    ,
    TestID -> "ARCPositionBeyondLine-20220826-HFZU72"
]