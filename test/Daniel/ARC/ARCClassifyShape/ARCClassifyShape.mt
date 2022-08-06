(*
    Tests for: Daniel`ARC`ARCClassifyShape
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCClassifyShape]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCClassifyShape[{{1, 1}, {1, 1}}]
    ,
    {<|"Name" -> "Square"|>, <|"Name" -> "Rectangle"|>}
    ,
    TestID -> "ARCClassifyShape-20220717-FUY20Y"
]

Test[
    Daniel`ARC`ARCClassifyShape[{{0, 0}, {0, 0}}]
    ,
    {}
    ,
    TestID -> "ARCClassifyShape-20220717-1LA5BB"
]

Test[
    Daniel`ARC`ARCClassifyShape[{{1}}]
    ,
    {<|"Name" -> "Pixel"|>, <|"Name" -> "Square"|>, <|"Name" -> "Rectangle"|>}
    ,
    TestID -> "ARCClassifyShape-20220717-RFJHHZ"
]

Test[
    Daniel`ARC`ARCClassifyShape[{{1, 0, 0}, {1, 0, 0}, {1, 1, 1}}]
    ,
    {<|"Name" -> "L"|>}
    ,
    TestID -> "ARCClassifyShape-20220717-0R6OB7"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyShape[{{1, 1, 1}, {1, 0, 0}, {1, 0, 0}}]
    ]
    ,
    {
        <|"Name" -> "L", "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>|>,
        <|"Name" -> "L", "Transform" -> "Flip", "Direction" -> "Vertical"|>
    }
    ,
    TestID -> "ARCClassifyShape-20220717-R15V60"
]

Test[
    Daniel`ARC`ARCClassifyShape[{{1, 1, 1}}]
    ,
    {<|"Name" -> "Line", "Angle" -> 0|>, <|"Name" -> "Rectangle"|>}
    ,
    TestID -> "ARCClassifyShape-20220717-2BXB00"
]