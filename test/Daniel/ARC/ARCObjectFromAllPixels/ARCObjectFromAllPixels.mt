(*
    Tests for: Daniel`ARC`ARCObjectFromAllPixels
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCObjectFromAllPixels]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            DevTools`ERP`NormalizeOutput[
                Daniel`ARC`ARCObjectFromAllPixels[
                    Daniel`ARC`ARCParseFile["ed36ccf7"]["Train", 2, "Input"],
                    0
                ]
            ]
        ]
    ]
    ,
    <|
        "UUID" -> 0,
        "Image" -> Daniel`ARC`ARCScene[{{6, 6, 6}, {-1, -1, -1}, {6, 6, -1}}],
        "PixelPositions" -> {{1, 1}, {1, 2}, {1, 3}, {3, 1}, {3, 2}},
        "Shape" -> Daniel`ARC`ARCScene[{{10, 10, 10}, {-1, -1, -1}, {10, 10, -1}}],
        "Shapes" -> {
            <|"Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}, {-1, -1, -1}, {10, 10, -1}}]|>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{10, -1, 10}, {10, -1, 10}, {-1, -1, 10}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{-1, 10, 10}, {-1, -1, -1}, {10, 10, 10}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{10, -1, -1}, {10, -1, 10}, {10, -1, 10}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[
                    {
                        {10, 10, 10, 10, 10, 10},
                        {10, 10, 10, 10, 10, 10},
                        {-1, -1, -1, -1, -1, -1},
                        {-1, -1, -1, -1, -1, -1},
                        {10, 10, 10, 10, -1, -1},
                        {10, 10, 10, 10, -1, -1}
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
                        {-1, -1, -1, -1, -1, -1, -1, -1, -1},
                        {-1, -1, -1, -1, -1, -1, -1, -1, -1},
                        {-1, -1, -1, -1, -1, -1, -1, -1, -1},
                        {10, 10, 10, 10, 10, 10, -1, -1, -1},
                        {10, 10, 10, 10, 10, 10, -1, -1, -1},
                        {10, 10, 10, 10, 10, 10, -1, -1, -1}
                    }
                ],
                "Transform" -> <|"Type" -> "Scaled", "Factor" -> 0.3333333333333333|>
            |>
        },
        "Colors" -> {6},
        "Color" -> 6,
        "Position" -> {1, 1},
        "Y" -> 1,
        "X" -> 1,
        "YInverse" -> 3,
        "XInverse" -> 3,
        "Y2" -> 3,
        "X2" -> 3,
        "Y2Inverse" -> 1,
        "X2Inverse" -> 1,
        "ZOrder" -> 0,
        "YMiddle" -> 2,
        "XMiddle" -> 2,
        "Width" -> 3,
        "Height" -> 3,
        "Length" -> 3,
        "PrimarySizeDimension" -> "None",
        "AspectRatio" -> 1,
        "Area" -> 9,
        "FilledArea" -> 5,
        "FilledProportion" -> 0.5555555555555556,
        "SurfacePixelCount" -> 5,
        "VerticalLineSymmetry" -> False,
        "HorizontalLineSymmetry" -> False,
        "VerticalAndHorizontalLineSymmetry" -> False,
        "HollowCount" -> 0
    |>
    ,
    TestID -> "ARCObjectFromAllPixels-20220902-DYB839"
]