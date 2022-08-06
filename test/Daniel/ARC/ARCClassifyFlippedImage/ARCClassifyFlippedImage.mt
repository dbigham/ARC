(*
    Tests for: Daniel`ARC`ARCClassifyFlippedImage
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCClassifyFlippedImage]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCClassifyFlippedImage[
        {{1, 1, 1, 1}, {1, 0, 0, 0}, {1, 0, 0, 0}},
        Daniel`ARC`ARCClassifyL
    ]
    ,
    {<|"Name" -> "L", "Transform" -> "Flip", "Direction" -> "Vertical"|>}
    ,
    TestID -> "ARCClassifyFlippedImage-20220717-CUJQHA"
]

Test[
    Daniel`ARC`ARCClassifyFlippedImage[
        {{0, 0, 1}, {0, 0, 1}, {0, 0, 1}, {1, 1, 1}},
        Daniel`ARC`ARCClassifyL
    ]
    ,
    {<|"Name" -> "L", "Transform" -> "Flip", "Direction" -> "Horizontal"|>}
    ,
    TestID -> "ARCClassifyFlippedImage-20220717-MUUUAF"
]