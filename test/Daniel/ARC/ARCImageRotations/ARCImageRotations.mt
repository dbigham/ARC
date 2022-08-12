(*
    Tests for: Daniel`ARC`ARCImageRotations
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCImageRotations]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCImageRotations[{{1, -1, 1}, {-1, 1, -1}, {-1, -1, 1}}]
    ]
    ,
    {
        <|"Image" -> Daniel`ARC`ARCScene[{{1, -1, 1}, {-1, 1, -1}, {-1, -1, 1}}]|>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{-1, -1, 1}, {-1, 1, -1}, {1, -1, 1}}],
            "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1, -1, -1}, {-1, 1, -1}, {1, -1, 1}}],
            "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1, -1, 1}, {-1, 1, -1}, {1, -1, -1}}],
            "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
        |>
    }
    ,
    TestID -> "ARCImageRotations-20220722-ATWYCZ"
]