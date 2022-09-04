(*
    Tests for: Daniel`ARC`ARCInferShapeAndShapes
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCInferShapeAndShapes]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCInferShapeAndShapes[{{2, 2, 2}, {2, -1, -1}, {2, -1, -1}}, {1}]
    ]
    ,
    <|
        "Shape" -> <|"Name" -> "L", "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>|>,
        "Shapes" -> {
            <|"Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}, {10, -1, -1}, {10, -1, -1}}]|>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}, {-1, -1, 10}, {-1, -1, 10}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{-1, -1, 10}, {-1, -1, 10}, {10, 10, 10}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{10, -1, -1}, {10, -1, -1}, {10, 10, 10}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[
                    {
                        {10, 10, 10, 10, 10, 10},
                        {10, 10, 10, 10, 10, 10},
                        {10, 10, -1, -1, -1, -1},
                        {10, 10, -1, -1, -1, -1},
                        {10, 10, -1, -1, -1, -1},
                        {10, 10, -1, -1, -1, -1}
                    }
                ],
                "Transform" -> <|"Type" -> "Scaled", "Factor" -> 0.5|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[
                    {
                        {10, 10, 10, 10, 10, 10, 10, 10, 10},
                        {10, 10, 10, 10, 10, 10, 10, 10, 10},
                        {10, 10, 10, 10, 10, 10, 10, 10, 10},
                        {10, 10, 10, -1, -1, -1, -1, -1, -1},
                        {10, 10, 10, -1, -1, -1, -1, -1, -1},
                        {10, 10, 10, -1, -1, -1, -1, -1, -1},
                        {10, 10, 10, -1, -1, -1, -1, -1, -1},
                        {10, 10, 10, -1, -1, -1, -1, -1, -1},
                        {10, 10, 10, -1, -1, -1, -1, -1, -1}
                    }
                ],
                "Transform" -> <|"Type" -> "Scaled", "Factor" -> 0.3333333333333333|>
            |>,
            <|"Name" -> "L"|>,
            <|"Name" -> "L", "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>|>,
            <|
                "Name" -> "L",
                "Transform" -> <|"Type" -> "Flip", "Direction" -> "Vertical"|>
            |>
        }
    |>
    ,
    TestID -> "ARCInferShapeAndShapes-20220816-0MH7C6"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCInferShapeAndShapes[{{1, 1, 1}, {2, -1, -1}, {2, -1, -1}}, {1, 2}]
    ]
    ,
    <|
        "Shape" -> <|
            "Name" -> "L",
            "Transform" -> <|"Type" -> "Flip", "Direction" -> "Vertical"|>
        |>,
        "Shapes" -> {
            <|"Image" -> Daniel`ARC`ARCScene[{{1, 1, 1}, {2, -1, -1}, {2, -1, -1}}]|>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{2, 2, 1}, {-1, -1, 1}, {-1, -1, 1}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{-1, -1, 2}, {-1, -1, 2}, {1, 1, 1}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{1, -1, -1}, {1, -1, -1}, {1, 2, 2}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[
                    {
                        {1, 1, 1, 1, 1, 1},
                        {1, 1, 1, 1, 1, 1},
                        {2, 2, -1, -1, -1, -1},
                        {2, 2, -1, -1, -1, -1},
                        {2, 2, -1, -1, -1, -1},
                        {2, 2, -1, -1, -1, -1}
                    }
                ],
                "Transform" -> <|"Type" -> "Scaled", "Factor" -> 0.5|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[
                    {
                        {1, 1, 1, 1, 1, 1, 1, 1, 1},
                        {1, 1, 1, 1, 1, 1, 1, 1, 1},
                        {1, 1, 1, 1, 1, 1, 1, 1, 1},
                        {2, 2, 2, -1, -1, -1, -1, -1, -1},
                        {2, 2, 2, -1, -1, -1, -1, -1, -1},
                        {2, 2, 2, -1, -1, -1, -1, -1, -1},
                        {2, 2, 2, -1, -1, -1, -1, -1, -1},
                        {2, 2, 2, -1, -1, -1, -1, -1, -1},
                        {2, 2, 2, -1, -1, -1, -1, -1, -1}
                    }
                ],
                "Transform" -> <|"Type" -> "Scaled", "Factor" -> 0.3333333333333333|>
            |>,
            <|"Name" -> "L"|>,
            <|
                "Name" -> "L",
                "Transform" -> <|"Type" -> "Flip", "Direction" -> "Vertical"|>
            |>
        }
    |>
    ,
    TestID -> "ARCInferShapeAndShapes-20220904-SEMU6N"
]