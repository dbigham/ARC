(*
    Tests for: Daniel`ARC`ARCClassifyShape
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCClassifyShape]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyShape[{{1, 1}, {1, 1}}]
    ]
    ,
    {
        <|"Name" -> "Square"|>,
        <|"Name" -> "Rectangle"|>,
        <|"Name" -> "Square", "Filled" -> True|>,
        <|"Name" -> "Rectangle", "Filled" -> True|>
    }
    ,
    TestID -> "ARCClassifyShape-20220717-FUY20Y"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyShape[{{-1, -1}, {-1, -1}}]
    ]
    ,
    {}
    ,
    TestID -> "ARCClassifyShape-20220717-1LA5BB"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyShape[{{1}}]
    ]
    ,
    {
        <|"Name" -> "Pixel"|>,
        <|"Name" -> "Square"|>,
        <|"Name" -> "Rectangle"|>,
        <|"Name" -> "Square", "Filled" -> True|>,
        <|"Name" -> "Rectangle", "Filled" -> True|>
    }
    ,
    TestID -> "ARCClassifyShape-20220717-RFJHHZ"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyShape[{{1, -1, -1}, {1, -1, -1}, {1, 1, 1}}]
    ]
    ,
    {<|"Name" -> "L"|>}
    ,
    TestID -> "ARCClassifyShape-20220717-0R6OB7"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyShape[{{1, 1, 1}, {1, -1, -1}, {1, -1, -1}}]
    ]
    ,
    {
        <|"Name" -> "L"|>,
        <|"Name" -> "L", "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>|>,
        <|"Name" -> "L", "Transform" -> "Flip", "Direction" -> "Vertical"|>
    }
    ,
    TestID -> "ARCClassifyShape-20220717-R15V60"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyShape[{{1, 1, 1}}]
    ]
    ,
    {
        <|"Name" -> "Line"|>,
        <|"Name" -> "Rectangle"|>,
        <|"Name" -> "Line", "Angle" -> 0|>,
        <|"Name" -> "Rectangle", "Filled" -> True|>
    }
    ,
    TestID -> "ARCClassifyShape-20220717-2BXB00"
]