(*
    Tests for: Daniel`ARC`ARCParseScene
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCParseScene]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            DevTools`ERP`NormalizeOutput[
                Daniel`ARC`ARCParseScene[
                    Daniel`ARC`ARCParseFile["9565186b"]["Train", 1, "Input"]
                ]
            ]
        ]
    ]
    ,
    <|
        "Background" -> 0,
        "Width" -> 3,
        "Height" -> 3,
        "Objects" -> {
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 1, 8}, {2, 8, 8}}],
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
                    <|"Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 1, 8}, {2, 8, 8}}]|>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {8, 1, 2}, {8, 8, 2}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{8, 8, 2}, {8, 1, 2}, {2, 2, 2}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{2, 8, 8}, {2, 1, 8}, {2, 2, 2}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                    |>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {1, 2, 8},
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
                "FilledProportion" -> 1.,
                "Components" -> {
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 0, 0}, {2, 0, 0}}],
                        "PixelPositions" -> {{1, 1}, {1, 2}, {1, 3}, {2, 1}, {3, 1}},
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{2, 2, 2}, {2, 0, 0}, {2, 0, 0}}
                                ]
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{2, 2, 2}, {0, 0, 2}, {0, 0, 2}}
                                ],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{0, 0, 2}, {0, 0, 2}, {2, 2, 2}}
                                ],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{2, 0, 0}, {2, 0, 0}, {2, 2, 2}}
                                ],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                            |>,
                            <|
                                "Name" -> "L",
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                            |>,
                            <|
                                "Name" -> "L",
                                "Transform" -> "Flip",
                                "Direction" -> "Vertical"
                            |>
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
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{1}}],
                        "PixelPositions" -> {{2, 2}},
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{1}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>
                        },
                        "Colors" -> {1},
                        "Position" -> {2, 2},
                        "Y" -> 2,
                        "X" -> 2,
                        "Y2" -> 2,
                        "X2" -> 2,
                        "Width" -> 1,
                        "Height" -> 1,
                        "Length" -> 1,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 1,
                        "FilledArea" -> 1,
                        "FilledProportion" -> 1.
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{0, 8}, {8, 8}}],
                        "PixelPositions" -> {{2, 3}, {3, 2}, {3, 3}},
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{0, 8}, {8, 8}}]|>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[{{8, 0}, {8, 8}}],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[{{8, 8}, {8, 0}}],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[{{8, 8}, {0, 8}}],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                            |>,
                            <|
                                "Name" -> "L",
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                            |>,
                            <|
                                "Name" -> "L",
                                "Transform" -> "Flip",
                                "Direction" -> "Horizontal"
                            |>
                        },
                        "Colors" -> {8},
                        "Position" -> {2, 2},
                        "Y" -> 2,
                        "X" -> 2,
                        "Y2" -> 3,
                        "X2" -> 3,
                        "Width" -> 2,
                        "Height" -> 2,
                        "Length" -> 2,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 4,
                        "FilledArea" -> 3,
                        "FilledProportion" -> 0.75
                    |>
                },
                "YRank" -> 1,
                "XRank" -> 1,
                "Y2Rank" -> 1,
                "X2Rank" -> 1,
                "WidthRank" -> 1,
                "HeightRank" -> 1,
                "LengthRank" -> 1,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>
        },
        "Scene" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 1, 8}, {2, 8, 8}}]
    |>
    ,
    TestID -> "ARCParseScene-20220717-RTEVHR"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            DevTools`ERP`NormalizeOutput[
                Daniel`ARC`ARCParseScene[
                    Daniel`ARC`ARCParseFile["0ca9ddb6"]["Train", 1, "Output"]
                ]
            ]
        ]
    ]
    ,
    <|
        "Background" -> 0,
        "Width" -> 9,
        "Height" -> 9,
        "Objects" -> {
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{4, 0, 4}, {0, 2, 0}, {4, 0, 4}}],
                "PixelPositions" -> {{3, 2}, {3, 4}, {4, 3}, {5, 2}, {5, 4}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{4, 0, 4}, {0, 2, 0}, {4, 0, 4}}]|>
                },
                "Colors" -> {2, 4},
                "Position" -> {3, 2},
                "Y" -> 3,
                "X" -> 2,
                "Y2" -> 5,
                "X2" -> 4,
                "Width" -> 3,
                "Height" -> 3,
                "Length" -> 3,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 9,
                "FilledArea" -> 5,
                "FilledProportion" -> 0.5555555555555556,
                "Components" -> {
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "PixelPositions" -> {{3, 2}},
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{4}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>
                        },
                        "Colors" -> {4},
                        "Position" -> {3, 2},
                        "Y" -> 3,
                        "X" -> 2,
                        "Y2" -> 3,
                        "X2" -> 2,
                        "Width" -> 1,
                        "Height" -> 1,
                        "Length" -> 1,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 1,
                        "FilledArea" -> 1,
                        "FilledProportion" -> 1.
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "PixelPositions" -> {{3, 4}},
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{4}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>
                        },
                        "Colors" -> {4},
                        "Position" -> {3, 4},
                        "Y" -> 3,
                        "X" -> 4,
                        "Y2" -> 3,
                        "X2" -> 4,
                        "Width" -> 1,
                        "Height" -> 1,
                        "Length" -> 1,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 1,
                        "FilledArea" -> 1,
                        "FilledProportion" -> 1.
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{2}}],
                        "PixelPositions" -> {{4, 3}},
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{2}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>
                        },
                        "Colors" -> {2},
                        "Position" -> {4, 3},
                        "Y" -> 4,
                        "X" -> 3,
                        "Y2" -> 4,
                        "X2" -> 3,
                        "Width" -> 1,
                        "Height" -> 1,
                        "Length" -> 1,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 1,
                        "FilledArea" -> 1,
                        "FilledProportion" -> 1.
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "PixelPositions" -> {{5, 2}},
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{4}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>
                        },
                        "Colors" -> {4},
                        "Position" -> {5, 2},
                        "Y" -> 5,
                        "X" -> 2,
                        "Y2" -> 5,
                        "X2" -> 2,
                        "Width" -> 1,
                        "Height" -> 1,
                        "Length" -> 1,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 1,
                        "FilledArea" -> 1,
                        "FilledProportion" -> 1.
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "PixelPositions" -> {{5, 4}},
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{4}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>
                        },
                        "Colors" -> {4},
                        "Position" -> {5, 4},
                        "Y" -> 5,
                        "X" -> 4,
                        "Y2" -> 5,
                        "X2" -> 4,
                        "Width" -> 1,
                        "Height" -> 1,
                        "Length" -> 1,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 1,
                        "FilledArea" -> 1,
                        "FilledProportion" -> 1.
                    |>
                },
                "YRank" -> 2,
                "XRank" -> 2,
                "Y2Rank" -> 2,
                "X2Rank" -> 2,
                "WidthRank" -> 1,
                "HeightRank" -> 1,
                "LengthRank" -> 1,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{0, 7, 0}, {7, 1, 7}, {0, 7, 0}}],
                "PixelPositions" -> {{6, 7}, {7, 6}, {7, 7}, {7, 8}, {8, 7}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{0, 7, 0}, {7, 1, 7}, {0, 7, 0}}]|>
                },
                "Colors" -> {1, 7},
                "Position" -> {6, 6},
                "Y" -> 6,
                "X" -> 6,
                "Y2" -> 8,
                "X2" -> 8,
                "Width" -> 3,
                "Height" -> 3,
                "Length" -> 3,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 9,
                "FilledArea" -> 5,
                "FilledProportion" -> 0.5555555555555556,
                "Components" -> {
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{0, 7, 0}, {7, 0, 7}, {0, 7, 0}}],
                        "PixelPositions" -> {{6, 7}, {7, 6}, {7, 8}, {8, 7}},
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{0, 7, 0}, {7, 0, 7}, {0, 7, 0}}
                                ]
                            |>
                        },
                        "Colors" -> {7},
                        "Position" -> {6, 6},
                        "Y" -> 6,
                        "X" -> 6,
                        "Y2" -> 8,
                        "X2" -> 8,
                        "Width" -> 3,
                        "Height" -> 3,
                        "Length" -> 3,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 9,
                        "FilledArea" -> 4,
                        "FilledProportion" -> 0.4444444444444444
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{1}}],
                        "PixelPositions" -> {{7, 7}},
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{1}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>
                        },
                        "Colors" -> {1},
                        "Position" -> {7, 7},
                        "Y" -> 7,
                        "X" -> 7,
                        "Y2" -> 7,
                        "X2" -> 7,
                        "Width" -> 1,
                        "Height" -> 1,
                        "Length" -> 1,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 1,
                        "FilledArea" -> 1,
                        "FilledProportion" -> 1.
                    |>
                },
                "YRank" -> 1,
                "XRank" -> 1,
                "Y2Rank" -> 1,
                "X2Rank" -> 1,
                "WidthRank" -> 1,
                "HeightRank" -> 1,
                "LengthRank" -> 1,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>
        },
        "Scene" -> Daniel`ARC`ARCScene[
            {
                {0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 4, 0, 4, 0, 0, 0, 0, 0},
                {0, 0, 2, 0, 0, 0, 0, 0, 0},
                {0, 4, 0, 4, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 7, 0, 0},
                {0, 0, 0, 0, 0, 7, 1, 7, 0},
                {0, 0, 0, 0, 0, 0, 7, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0, 0}
            }
        ]
    |>
    ,
    TestID -> "ARCParseScene-20220718-W0VVO9"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            DevTools`ERP`NormalizeOutput[
                Daniel`ARC`ARCParseScene[
                    Daniel`ARC`ARCParseFile["228f6490"]["Train", 1, "Input"]
                ]
            ]
        ]
    ]
    ,
    <|
        "Background" -> 0,
        "Width" -> 10,
        "Height" -> 10,
        "Objects" -> {
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[
                    {
                        {7, 0, 0, 0, 0, 0},
                        {0, 5, 5, 5, 5, 5},
                        {0, 5, 0, 0, 5, 5},
                        {0, 5, 0, 0, 5, 5},
                        {0, 5, 5, 5, 5, 5},
                        {0, 5, 5, 5, 5, 5}
                    }
                ],
                "PixelPositions" -> {
                    {1, 1},
                    {2, 2},
                    {2, 3},
                    {2, 4},
                    {2, 5},
                    {2, 6},
                    {3, 2},
                    {3, 5},
                    {3, 6},
                    {4, 2},
                    {4, 5},
                    {4, 6},
                    {5, 2},
                    {5, 3},
                    {5, 4},
                    {5, 5},
                    {5, 6},
                    {6, 2},
                    {6, 3},
                    {6, 4},
                    {6, 5},
                    {6, 6}
                },
                "Shapes" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[
                            {
                                {7, 0, 0, 0, 0, 0},
                                {0, 5, 5, 5, 5, 5},
                                {0, 5, 0, 0, 5, 5},
                                {0, 5, 0, 0, 5, 5},
                                {0, 5, 5, 5, 5, 5},
                                {0, 5, 5, 5, 5, 5}
                            }
                        ]
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[
                            {
                                {0, 0, 0, 0, 0, 7},
                                {5, 5, 5, 5, 5, 0},
                                {5, 5, 0, 0, 5, 0},
                                {5, 5, 0, 0, 5, 0},
                                {5, 5, 5, 5, 5, 0},
                                {5, 5, 5, 5, 5, 0}
                            }
                        ],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[
                            {
                                {5, 5, 5, 5, 5, 0},
                                {5, 5, 5, 5, 5, 0},
                                {5, 5, 0, 0, 5, 0},
                                {5, 5, 0, 0, 5, 0},
                                {5, 5, 5, 5, 5, 0},
                                {0, 0, 0, 0, 0, 7}
                            }
                        ],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[
                            {
                                {0, 5, 5, 5, 5, 5},
                                {0, 5, 5, 5, 5, 5},
                                {0, 5, 0, 0, 5, 5},
                                {0, 5, 0, 0, 5, 5},
                                {0, 5, 5, 5, 5, 5},
                                {7, 0, 0, 0, 0, 0}
                            }
                        ],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                    |>
                },
                "Colors" -> {5, 7},
                "Position" -> {1, 1},
                "Y" -> 1,
                "X" -> 1,
                "Y2" -> 6,
                "X2" -> 6,
                "Width" -> 6,
                "Height" -> 6,
                "Length" -> 6,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 36,
                "FilledArea" -> 22,
                "FilledProportion" -> 0.6111111111111112,
                "Components" -> {
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{7}}],
                        "PixelPositions" -> {{1, 1}},
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{7}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>
                        },
                        "Colors" -> {7},
                        "Position" -> {1, 1},
                        "Y" -> 1,
                        "X" -> 1,
                        "Y2" -> 1,
                        "X2" -> 1,
                        "Width" -> 1,
                        "Height" -> 1,
                        "Length" -> 1,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 1,
                        "FilledArea" -> 1,
                        "FilledProportion" -> 1.
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[
                            {
                                {5, 5, 5, 5, 5},
                                {5, 0, 0, 5, 5},
                                {5, 0, 0, 5, 5},
                                {5, 5, 5, 5, 5},
                                {5, 5, 5, 5, 5}
                            }
                        ],
                        "PixelPositions" -> {
                            {2, 2},
                            {2, 3},
                            {2, 4},
                            {2, 5},
                            {2, 6},
                            {3, 2},
                            {3, 5},
                            {3, 6},
                            {4, 2},
                            {4, 5},
                            {4, 6},
                            {5, 2},
                            {5, 3},
                            {5, 4},
                            {5, 5},
                            {5, 6},
                            {6, 2},
                            {6, 3},
                            {6, 4},
                            {6, 5},
                            {6, 6}
                        },
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {
                                        {5, 5, 5, 5, 5},
                                        {5, 0, 0, 5, 5},
                                        {5, 0, 0, 5, 5},
                                        {5, 5, 5, 5, 5},
                                        {5, 5, 5, 5, 5}
                                    }
                                ]
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {
                                        {5, 5, 5, 5, 5},
                                        {5, 5, 0, 0, 5},
                                        {5, 5, 0, 0, 5},
                                        {5, 5, 5, 5, 5},
                                        {5, 5, 5, 5, 5}
                                    }
                                ],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {
                                        {5, 5, 5, 5, 5},
                                        {5, 5, 5, 5, 5},
                                        {5, 5, 0, 0, 5},
                                        {5, 5, 0, 0, 5},
                                        {5, 5, 5, 5, 5}
                                    }
                                ],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {
                                        {5, 5, 5, 5, 5},
                                        {5, 5, 5, 5, 5},
                                        {5, 0, 0, 5, 5},
                                        {5, 0, 0, 5, 5},
                                        {5, 5, 5, 5, 5}
                                    }
                                ],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                            |>
                        },
                        "Colors" -> {5},
                        "Position" -> {2, 2},
                        "Y" -> 2,
                        "X" -> 2,
                        "Y2" -> 6,
                        "X2" -> 6,
                        "Width" -> 5,
                        "Height" -> 5,
                        "Length" -> 5,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 25,
                        "FilledArea" -> 21,
                        "FilledProportion" -> 0.84
                    |>
                },
                "YRank" -> 5,
                "XRank" -> 5,
                "Y2Rank" -> 2,
                "X2Rank" -> 3,
                "WidthRank" -> 1,
                "HeightRank" -> 1,
                "LengthRank" -> 1,
                "PrimarySizeDimensionRank" -> 2,
                "AspectRatioRank" -> 2
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{7, 7}}],
                "PixelPositions" -> {{1, 9}, {1, 10}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{7, 7}}]|>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{7}, {7}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{7}, {7}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                    |>,
                    <|"Name" -> "Line", "Angle" -> 0|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {7},
                "Position" -> {1, 9},
                "Y" -> 1,
                "X" -> 9,
                "Y2" -> 1,
                "X2" -> 10,
                "Width" -> 2,
                "Height" -> 1,
                "Length" -> 2,
                "PrimarySizeDimension" -> "X",
                "AspectRatio" -> 2,
                "Area" -> 2,
                "FilledArea" -> 2,
                "FilledProportion" -> 1.,
                "YRank" -> 5,
                "XRank" -> 1,
                "Y2Rank" -> 4,
                "X2Rank" -> 1,
                "WidthRank" -> 2,
                "HeightRank" -> 4,
                "LengthRank" -> 2,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{6, 6}}],
                "PixelPositions" -> {{3, 8}, {3, 9}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{6, 6}}]|>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{6}, {6}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{6}, {6}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                    |>,
                    <|"Name" -> "Line", "Angle" -> 0|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {6},
                "Position" -> {3, 8},
                "Y" -> 3,
                "X" -> 8,
                "Y2" -> 3,
                "X2" -> 9,
                "Width" -> 2,
                "Height" -> 1,
                "Length" -> 2,
                "PrimarySizeDimension" -> "X",
                "AspectRatio" -> 2,
                "Area" -> 2,
                "FilledArea" -> 2,
                "FilledProportion" -> 1.,
                "YRank" -> 4,
                "XRank" -> 2,
                "Y2Rank" -> 3,
                "X2Rank" -> 2,
                "WidthRank" -> 2,
                "HeightRank" -> 4,
                "LengthRank" -> 2,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{7}}],
                "PixelPositions" -> {{6, 9}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{7}}]|>,
                    <|"Name" -> "Pixel"|>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {7},
                "Position" -> {6, 9},
                "Y" -> 6,
                "X" -> 9,
                "Y2" -> 6,
                "X2" -> 9,
                "Width" -> 1,
                "Height" -> 1,
                "Length" -> 1,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 1,
                "FilledArea" -> 1,
                "FilledProportion" -> 1.,
                "YRank" -> 3,
                "XRank" -> 1,
                "Y2Rank" -> 2,
                "X2Rank" -> 2,
                "WidthRank" -> 3,
                "HeightRank" -> 4,
                "LengthRank" -> 3,
                "PrimarySizeDimensionRank" -> 2,
                "AspectRatioRank" -> 2
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[
                    {{7, 5, 5, 5, 5, 5}, {0, 5, 5, 0, 0, 5}, {0, 5, 5, 5, 5, 5}}
                ],
                "PixelPositions" -> {
                    {8, 5},
                    {8, 6},
                    {8, 7},
                    {8, 8},
                    {8, 9},
                    {8, 10},
                    {9, 6},
                    {9, 7},
                    {9, 10},
                    {10, 6},
                    {10, 7},
                    {10, 8},
                    {10, 9},
                    {10, 10}
                },
                "Shapes" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[
                            {{7, 5, 5, 5, 5, 5}, {0, 5, 5, 0, 0, 5}, {0, 5, 5, 5, 5, 5}}
                        ]
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[
                            {
                                {0, 0, 7},
                                {5, 5, 5},
                                {5, 5, 5},
                                {5, 0, 5},
                                {5, 0, 5},
                                {5, 5, 5}
                            }
                        ],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[
                            {{5, 5, 5, 5, 5, 0}, {5, 0, 0, 5, 5, 0}, {5, 5, 5, 5, 5, 7}}
                        ],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[
                            {
                                {5, 5, 5},
                                {5, 0, 5},
                                {5, 0, 5},
                                {5, 5, 5},
                                {5, 5, 5},
                                {7, 0, 0}
                            }
                        ],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                    |>
                },
                "Colors" -> {5, 7},
                "Position" -> {8, 5},
                "Y" -> 8,
                "X" -> 5,
                "Y2" -> 10,
                "X2" -> 10,
                "Width" -> 6,
                "Height" -> 3,
                "Length" -> 6,
                "PrimarySizeDimension" -> "X",
                "AspectRatio" -> 2,
                "Area" -> 18,
                "FilledArea" -> 14,
                "FilledProportion" -> 0.7777777777777778,
                "Components" -> {
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{7}}],
                        "PixelPositions" -> {{8, 5}},
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{7}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>
                        },
                        "Colors" -> {7},
                        "Position" -> {8, 5},
                        "Y" -> 8,
                        "X" -> 5,
                        "Y2" -> 8,
                        "X2" -> 5,
                        "Width" -> 1,
                        "Height" -> 1,
                        "Length" -> 1,
                        "PrimarySizeDimension" -> "None",
                        "AspectRatio" -> 1,
                        "Area" -> 1,
                        "FilledArea" -> 1,
                        "FilledProportion" -> 1.
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[
                            {{5, 5, 5, 5, 5}, {5, 5, 0, 0, 5}, {5, 5, 5, 5, 5}}
                        ],
                        "PixelPositions" -> {
                            {8, 6},
                            {8, 7},
                            {8, 8},
                            {8, 9},
                            {8, 10},
                            {9, 6},
                            {9, 7},
                            {9, 10},
                            {10, 6},
                            {10, 7},
                            {10, 8},
                            {10, 9},
                            {10, 10}
                        },
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{5, 5, 5, 5, 5}, {5, 5, 0, 0, 5}, {5, 5, 5, 5, 5}}
                                ]
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{5, 5, 5}, {5, 5, 5}, {5, 0, 5}, {5, 0, 5}, {5, 5, 5}}
                                ],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{5, 5, 5, 5, 5}, {5, 0, 0, 5, 5}, {5, 5, 5, 5, 5}}
                                ],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
                            |>,
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{5, 5, 5}, {5, 0, 5}, {5, 0, 5}, {5, 5, 5}, {5, 5, 5}}
                                ],
                                "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                            |>
                        },
                        "Colors" -> {5},
                        "Position" -> {8, 6},
                        "Y" -> 8,
                        "X" -> 6,
                        "Y2" -> 10,
                        "X2" -> 10,
                        "Width" -> 5,
                        "Height" -> 3,
                        "Length" -> 5,
                        "PrimarySizeDimension" -> "X",
                        "AspectRatio" -> 5/3,
                        "Area" -> 15,
                        "FilledArea" -> 13,
                        "FilledProportion" -> 0.8666666666666667
                    |>
                },
                "YRank" -> 2,
                "XRank" -> 3,
                "Y2Rank" -> 1,
                "X2Rank" -> 1,
                "WidthRank" -> 1,
                "HeightRank" -> 2,
                "LengthRank" -> 1,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{8, 8}, {8, 8}}],
                "PixelPositions" -> {{9, 2}, {9, 3}, {10, 2}, {10, 3}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{8, 8}, {8, 8}}]|>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {8},
                "Position" -> {9, 2},
                "Y" -> 9,
                "X" -> 2,
                "Y2" -> 10,
                "X2" -> 3,
                "Width" -> 2,
                "Height" -> 2,
                "Length" -> 2,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 4,
                "FilledArea" -> 4,
                "FilledProportion" -> 1.,
                "YRank" -> 1,
                "XRank" -> 4,
                "Y2Rank" -> 1,
                "X2Rank" -> 4,
                "WidthRank" -> 2,
                "HeightRank" -> 3,
                "LengthRank" -> 2,
                "PrimarySizeDimensionRank" -> 2,
                "AspectRatioRank" -> 2
            |>
        },
        "Scene" -> Daniel`ARC`ARCScene[
            {
                {7, 0, 0, 0, 0, 0, 0, 0, 7, 7},
                {0, 5, 5, 5, 5, 5, 0, 0, 0, 0},
                {0, 5, 0, 0, 5, 5, 0, 6, 6, 0},
                {0, 5, 0, 0, 5, 5, 0, 0, 0, 0},
                {0, 5, 5, 5, 5, 5, 0, 0, 0, 0},
                {0, 5, 5, 5, 5, 5, 0, 0, 7, 0},
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 7, 5, 5, 5, 5, 5},
                {0, 8, 8, 0, 0, 5, 5, 0, 0, 5},
                {0, 8, 8, 0, 0, 5, 5, 5, 5, 5}
            }
        ]
    |>
    ,
    TestID -> "ARCParseScene-20220718-9SB5XL"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            DevTools`ERP`NormalizeOutput[
                Daniel`ARC`ARCParseScene[
                    Daniel`ARC`ARCParseFile["9565186b"]["Train", 1, "Input"],
                    "FormMultiColorCompositeObjects" -> False
                ]
            ]
        ]
    ]
    ,
    <|
        "Background" -> 0,
        "Width" -> 3,
        "Height" -> 3,
        "Objects" -> {
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{1}}],
                "PixelPositions" -> {{2, 2}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{1}}]|>,
                    <|"Name" -> "Pixel"|>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {1},
                "Position" -> {2, 2},
                "Y" -> 2,
                "X" -> 2,
                "Y2" -> 2,
                "X2" -> 2,
                "Width" -> 1,
                "Height" -> 1,
                "Length" -> 1,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 1,
                "FilledArea" -> 1,
                "FilledProportion" -> 1.,
                "YRank" -> 1,
                "XRank" -> 1,
                "Y2Rank" -> 2,
                "X2Rank" -> 2,
                "WidthRank" -> 3,
                "HeightRank" -> 3,
                "LengthRank" -> 3,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>,
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
                    <|
                        "Name" -> "L",
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                    |>,
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
                "FilledProportion" -> 0.5555555555555556,
                "YRank" -> 2,
                "XRank" -> 2,
                "Y2Rank" -> 1,
                "X2Rank" -> 1,
                "WidthRank" -> 1,
                "HeightRank" -> 1,
                "LengthRank" -> 1,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{0, 8}, {8, 8}}],
                "PixelPositions" -> {{2, 3}, {3, 2}, {3, 3}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{0, 8}, {8, 8}}]|>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{8, 0}, {8, 8}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{8, 8}, {8, 0}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{8, 8}, {0, 8}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                    |>,
                    <|
                        "Name" -> "L",
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                    |>,
                    <|"Name" -> "L", "Transform" -> "Flip", "Direction" -> "Horizontal"|>
                },
                "Colors" -> {8},
                "Position" -> {2, 2},
                "Y" -> 2,
                "X" -> 2,
                "Y2" -> 3,
                "X2" -> 3,
                "Width" -> 2,
                "Height" -> 2,
                "Length" -> 2,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 4,
                "FilledArea" -> 3,
                "FilledProportion" -> 0.75,
                "YRank" -> 1,
                "XRank" -> 1,
                "Y2Rank" -> 1,
                "X2Rank" -> 1,
                "WidthRank" -> 2,
                "HeightRank" -> 2,
                "LengthRank" -> 2,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>
        },
        "Scene" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 1, 8}, {2, 8, 8}}]
    |>
    ,
    TestID -> "ARCParseScene-20220724-3ZJ2P8"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects[
                DevTools`ERP`NormalizeOutput[
                    Daniel`ARC`ARCParseScene[
                        Daniel`ARC`ARCParseFile["b60334d2"]["Test", 1, "Output"]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        "Background" -> 0,
        "Width" -> 9,
        "Height" -> 9,
        "Objects" -> {
            <|
                "Image" -> Daniel`ARC`ARCScene[{{5, 1, 5}, {1, 0, 1}, {5, 1, 5}}],
                "Position" -> {1, 1}
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{5, 1, 5}, {1, 0, 1}, {5, 1, 5}}],
                "Position" -> {3, 4}
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{5, 1, 5}, {1, 0, 1}, {5, 1, 5}}],
                "Position" -> {5, 7}
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{5, 1, 5}, {1, 0, 1}, {5, 1, 5}}],
                "Position" -> {7, 2}
            |>
        },
        "Scene" -> Daniel`ARC`ARCScene[
            {
                {5, 1, 5, 0, 0, 0, 0, 0, 0},
                {1, 0, 1, 0, 0, 0, 0, 0, 0},
                {5, 1, 5, 5, 1, 5, 0, 0, 0},
                {0, 0, 0, 1, 0, 1, 0, 0, 0},
                {0, 0, 0, 5, 1, 5, 5, 1, 5},
                {0, 0, 0, 0, 0, 0, 1, 0, 1},
                {0, 5, 1, 5, 0, 0, 5, 1, 5},
                {0, 1, 0, 1, 0, 0, 0, 0, 0},
                {0, 5, 1, 5, 0, 0, 0, 0, 0}
            }
        ]
    |>
    ,
    TestID -> "ARCParseScene-20220725-1VFZWR"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects[
                DevTools`ERP`NormalizeOutput[
                    Daniel`ARC`ARCParseScene[
                        Daniel`ARC`ARCParseFile["321b1fc6"]["Train", 2, "Input"]
                    ]
                ]
            ]
        ]
    ]
    ,
    <|
        "Background" -> 0,
        "Width" -> 10,
        "Height" -> 10,
        "Objects" -> {
            <|"Image" -> Daniel`ARC`ARCScene[{{8, 8, 0}, {8, 8, 8}}], "Position" -> {2, 2}|>,
            <|"Image" -> Daniel`ARC`ARCScene[{{8, 8, 0}, {8, 8, 8}}], "Position" -> {3, 7}|>,
            <|"Image" -> Daniel`ARC`ARCScene[{{8, 8, 0}, {8, 8, 8}}], "Position" -> {8, 4}|>,
            <|"Image" -> Daniel`ARC`ARCScene[{{7, 7, 0}, {6, 6, 6}}], "Position" -> {6, 6}|>
        },
        "Scene" -> Daniel`ARC`ARCScene[
            {
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 8, 8, 0, 0, 0, 0, 0, 0, 0},
                {0, 8, 8, 8, 0, 0, 8, 8, 0, 0},
                {0, 0, 0, 0, 0, 0, 8, 8, 8, 0},
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 7, 7, 0, 0, 0},
                {0, 0, 0, 0, 0, 6, 6, 6, 0, 0},
                {0, 0, 0, 8, 8, 0, 0, 0, 0, 0},
                {0, 0, 0, 8, 8, 8, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
            }
        ]
    |>
    ,
    TestID -> "ARCParseScene-20220725-ACIGXC"
]

Test[
    DevTools`ERP`NormalizeOutput[
        Daniel`ARC`ARCParseScene[Daniel`ARC`ARCParseFile["ihiz27k2n"]["Train", 1, "Output"]]
    ]
    ,
    <|
        "Background" -> 5,
        "Width" -> 10,
        "Height" -> 10,
        "Objects" -> {
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{1}}],
                "PixelPositions" -> {{2, 2}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{1}}]|>,
                    <|"Name" -> "Pixel"|>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {1},
                "Position" -> {2, 2},
                "Y" -> 2,
                "X" -> 2,
                "Y2" -> 2,
                "X2" -> 2,
                "Width" -> 1,
                "Height" -> 1,
                "Length" -> 1,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 1,
                "FilledArea" -> 1,
                "FilledProportion" -> 1.,
                "YRank" -> 2,
                "XRank" -> 2,
                "Y2Rank" -> 2,
                "X2Rank" -> 2,
                "WidthRank" -> 1,
                "HeightRank" -> 1,
                "LengthRank" -> 1,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{3}}],
                "PixelPositions" -> {{2, 9}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{3}}]|>,
                    <|"Name" -> "Pixel"|>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {3},
                "Position" -> {2, 9},
                "Y" -> 2,
                "X" -> 9,
                "Y2" -> 2,
                "X2" -> 9,
                "Width" -> 1,
                "Height" -> 1,
                "Length" -> 1,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 1,
                "FilledArea" -> 1,
                "FilledProportion" -> 1.,
                "YRank" -> 2,
                "XRank" -> 1,
                "Y2Rank" -> 2,
                "X2Rank" -> 1,
                "WidthRank" -> 1,
                "HeightRank" -> 1,
                "LengthRank" -> 1,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{3}}],
                "PixelPositions" -> {{9, 2}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{3}}]|>,
                    <|"Name" -> "Pixel"|>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {3},
                "Position" -> {9, 2},
                "Y" -> 9,
                "X" -> 2,
                "Y2" -> 9,
                "X2" -> 2,
                "Width" -> 1,
                "Height" -> 1,
                "Length" -> 1,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 1,
                "FilledArea" -> 1,
                "FilledProportion" -> 1.,
                "YRank" -> 1,
                "XRank" -> 2,
                "Y2Rank" -> 1,
                "X2Rank" -> 2,
                "WidthRank" -> 1,
                "HeightRank" -> 1,
                "LengthRank" -> 1,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{1}}],
                "PixelPositions" -> {{9, 9}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{1}}]|>,
                    <|"Name" -> "Pixel"|>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {1},
                "Position" -> {9, 9},
                "Y" -> 9,
                "X" -> 9,
                "Y2" -> 9,
                "X2" -> 9,
                "Width" -> 1,
                "Height" -> 1,
                "Length" -> 1,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 1,
                "FilledArea" -> 1,
                "FilledProportion" -> 1.,
                "YRank" -> 1,
                "XRank" -> 1,
                "Y2Rank" -> 1,
                "X2Rank" -> 1,
                "WidthRank" -> 1,
                "HeightRank" -> 1,
                "LengthRank" -> 1,
                "PrimarySizeDimensionRank" -> 1,
                "AspectRatioRank" -> 1
            |>
        },
        "Scene" -> Daniel`ARC`ARCScene[
            {
                {5, 5, 5, 5, 5, 5, 5, 5, 5, 5},
                {5, 1, 5, 5, 5, 5, 5, 5, 3, 5},
                {5, 5, 5, 5, 5, 5, 5, 5, 5, 5},
                {5, 5, 5, 5, 5, 5, 5, 5, 5, 5},
                {5, 5, 5, 5, 5, 5, 5, 5, 5, 5},
                {5, 5, 5, 5, 5, 5, 5, 5, 5, 5},
                {5, 5, 5, 5, 5, 5, 5, 5, 5, 5},
                {5, 5, 5, 5, 5, 5, 5, 5, 5, 5},
                {5, 3, 5, 5, 5, 5, 5, 5, 1, 5},
                {5, 5, 5, 5, 5, 5, 5, 5, 5, 5}
            }
        ]
    |>
    ,
    TestID -> "ARCParseScene-20220806-1M38YL"
]