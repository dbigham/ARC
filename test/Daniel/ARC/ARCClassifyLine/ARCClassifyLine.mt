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

Test[
    Daniel`ARC`ARCClassifyLine[{{1, -1, -1}, {-1, 1, -1}, {-1, -1, 1}}]
    ,
    <|"Name" -> "Line", "Angle" -> 135|>
    ,
    TestID -> "ARCClassifyLine-20220827-H7DPP5"
]

Test[
    Daniel`ARC`ARCClassifyLine[{{-1, -1, 1}, {-1, 1, -1}, {1, -1, -1}}]
    ,
    <|"Name" -> "Line", "Angle" -> 45|>
    ,
    TestID -> "ARCClassifyLine-20220827-XDDHR7"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyLine[{{1}}]
    ]
    ,
    {
        <|"Name" -> "Line", "Angle" -> 0|>,
        <|"Name" -> "Line", "Angle" -> 90|>,
        <|"Name" -> "Line", "Angle" -> 135|>,
        <|"Name" -> "Line", "Angle" -> 45|>
    }
    ,
    TestID -> "ARCClassifyLine-20220827-IFL8DR"
]