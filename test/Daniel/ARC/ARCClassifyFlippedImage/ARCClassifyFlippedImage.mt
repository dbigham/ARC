(*
    Tests for: Daniel`ARC`ARCClassifyFlippedImage
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCClassifyFlippedImage]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyFlippedImage[
            {{1, 1, 1, 1}, {1, -1, -1, -1}, {1, -1, -1, -1}},
            Daniel`ARC`ARCClassifyL
        ]
    ]
    ,
    {
        {
            <|"Name" -> "L"|>,
            <|"Name" -> "L", "Transform" -> "Flip", "Direction" -> "Vertical"|>
        }
    }
    ,
    TestID -> "ARCClassifyFlippedImage-20220717-CUJQHA"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyFlippedImage[
            {{-1, -1, 1}, {-1, -1, 1}, {-1, -1, 1}, {1, 1, 1}},
            Daniel`ARC`ARCClassifyL
        ]
    ]
    ,
    {
        {
            <|"Name" -> "L"|>,
            <|"Name" -> "L", "Transform" -> "Flip", "Direction" -> "Horizontal"|>
        }
    }
    ,
    TestID -> "ARCClassifyFlippedImage-20220717-MUUUAF"
]