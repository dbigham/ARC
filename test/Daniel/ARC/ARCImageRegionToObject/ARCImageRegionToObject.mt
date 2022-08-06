(*
    Tests for: Daniel`ARC`ARCImageRegionToObject
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCImageRegionToObject]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`ERP`NormalizeOutput[
            Daniel`ARC`ARCImageRegionToObject[
                <|
                    "Color" -> 2,
                    "Position" -> {1, 1},
                    "Image" -> {{2, 2, 2}, {2, 0, 0}, {2, 0, 0}},
                    "PixelPositions" -> {{1, 1}, {1, 2}, {1, 3}, {2, 1}, {3, 1}}
                |>
            ]
        ]
    ]
    ,
    <|
        "UUID" -> 0,
        "Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 0, 0}, {2, 0, 0}}],
        "PixelPositions" -> {{1, 1}, {1, 2}, {1, 3}, {2, 1}, {3, 1}},
        "Shapes" -> {
            <|"Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 0, 0}, {2, 0, 0}}]|>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {0, 0, 2}, {0, 0, 2}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{0, 0, 2}, {0, 0, 2}, {2, 2, 2}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{2, 0, 0}, {2, 0, 0}, {2, 2, 2}}],
                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
            |>,
            <|"Name" -> "L", "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>|>,
            <|"Name" -> "L", "Transform" -> "Flip", "Direction" -> "Vertical"|>
        },
        "Colors" -> {2},
        "Position" -> {1, 1},
        "Y" -> 1,
        "X" -> 1,
        "Y2" -> 3,
        "X2" -> 3,
        "Width" -> 3,
        "Height" -> 3,
        "Length" -> 3,
        "PrimarySizeDimension" -> "None",
        "AspectRatio" -> 1,
        "Area" -> 9,
        "FilledArea" -> 5,
        "FilledProportion" -> 0.5555555555555556
    |>
    ,
    TestID -> "ARCImageRegionToObject-20220717-LUDS9W"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`ERP`NormalizeOutput[
            Daniel`ARC`ARCImageRegionToObject[
                <|
                    "Color" -> 2,
                    "Position" -> {1, 1},
                    "Image" -> {{2, 2, 2}, {2, 2, 2}, {2, 2, 2}},
                    "PixelPositions" -> {
                        {1, 1},
                        {1, 2},
                        {1, 3},
                        {2, 1},
                        {2, 2},
                        {2, 3},
                        {3, 1},
                        {3, 2},
                        {3, 3}
                    }
                |>
            ]
        ]
    ]
    ,
    <|
        "UUID" -> 0,
        "Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 2, 2}, {2, 2, 2}}],
        "PixelPositions" -> {
            {1, 1},
            {1, 2},
            {1, 3},
            {2, 1},
            {2, 2},
            {2, 3},
            {3, 1},
            {3, 2},
            {3, 3}
        },
        "Shapes" -> {
            <|"Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 2, 2}, {2, 2, 2}}]|>,
            <|"Name" -> "Square"|>,
            <|"Name" -> "Rectangle"|>
        },
        "Colors" -> {2},
        "Position" -> {1, 1},
        "Y" -> 1,
        "X" -> 1,
        "Y2" -> 3,
        "X2" -> 3,
        "Width" -> 3,
        "Height" -> 3,
        "Length" -> 3,
        "PrimarySizeDimension" -> "None",
        "AspectRatio" -> 1,
        "Area" -> 9,
        "FilledArea" -> 9,
        "FilledProportion" -> 1.
    |>
    ,
    TestID -> "ARCImageRegionToObject-20220717-56GZCQ"
]