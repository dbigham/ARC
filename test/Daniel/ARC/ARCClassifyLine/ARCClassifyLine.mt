(*
    Tests for: Daniel`ARC`ARCClassifyLine
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCClassifyLine]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCClassifyLine[{{1}, {1}}]
    ,
    <|"Name" -> "Line", "Angle" -> 90|>
    ,
    TestID -> "ARCClassifyLine-20220717-TBPGZF"
]

Test[
    Daniel`ARC`ARCClassifyLine[{{1, 1}}]
    ,
    <|"Name" -> "Line", "Angle" -> 0|>
    ,
    TestID -> "ARCClassifyLine-20220717-Y0EYRD"
]