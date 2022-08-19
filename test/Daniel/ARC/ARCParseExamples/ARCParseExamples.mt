(*
    Tests for: Daniel`ARC`ARCParseExamples
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCParseExamples]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            DevTools`ERP`NormalizeOutput[
                Daniel`ARC`ARCParseExamples[file = "0ca9ddb6"][[1 ;; 1]]
            ]
        ]
    ]
    ,
    {
        <|
            "Input" -> <|
                "Background" -> 0,
                "Width" -> 9,
                "Height" -> 9,
                "Objects" -> {
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{2}}],
                        "PixelPositions" -> {{4, 3}},
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
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
                        "FilledProportion" -> 1.,
                        "YRelative" -> 0,
                        "XRelative" -> 0,
                        "WidthRank" -> 1,
                        "WidthInverseRank" -> 1,
                        "HeightRank" -> 1,
                        "HeightInverseRank" -> 1,
                        "LengthRank" -> 1,
                        "LengthInverseRank" -> 1,
                        "YRank" -> 2,
                        "YInverseRank" -> 1,
                        "XRank" -> 2,
                        "XInverseRank" -> 1,
                        "Y2Rank" -> 2,
                        "Y2InverseRank" -> 1,
                        "X2Rank" -> 2,
                        "X2InverseRank" -> 1,
                        "PrimarySizeDimensionRank" -> 1,
                        "PrimarySizeDimensionInverseRank" -> 1,
                        "AspectRatioRank" -> 1,
                        "AspectRatioInverseRank" -> 1
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{1}}],
                        "PixelPositions" -> {{7, 7}},
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
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
                        "FilledProportion" -> 1.,
                        "YRelative" -> 0,
                        "XRelative" -> 0,
                        "WidthRank" -> 1,
                        "WidthInverseRank" -> 1,
                        "HeightRank" -> 1,
                        "HeightInverseRank" -> 1,
                        "LengthRank" -> 1,
                        "LengthInverseRank" -> 1,
                        "YRank" -> 1,
                        "YInverseRank" -> 2,
                        "XRank" -> 1,
                        "XInverseRank" -> 2,
                        "Y2Rank" -> 1,
                        "Y2InverseRank" -> 2,
                        "X2Rank" -> 1,
                        "X2InverseRank" -> 2,
                        "PrimarySizeDimensionRank" -> 1,
                        "PrimarySizeDimensionInverseRank" -> 1,
                        "AspectRatioRank" -> 1,
                        "AspectRatioInverseRank" -> 1
                    |>
                },
                "Scene" -> Daniel`ARC`ARCScene[
                    {
                        {0, 0, 0, 0, 0, 0, 0, 0, 0},
                        {0, 0, 0, 0, 0, 0, 0, 0, 0},
                        {0, 0, 0, 0, 0, 0, 0, 0, 0},
                        {0, 0, 2, 0, 0, 0, 0, 0, 0},
                        {0, 0, 0, 0, 0, 0, 0, 0, 0},
                        {0, 0, 0, 0, 0, 0, 0, 0, 0},
                        {0, 0, 0, 0, 0, 0, 1, 0, 0},
                        {0, 0, 0, 0, 0, 0, 0, 0, 0},
                        {0, 0, 0, 0, 0, 0, 0, 0, 0}
                    }
                ]
            |>,
            "Output" -> <|
                "Background" -> 0,
                "Width" -> 9,
                "Height" -> 9,
                "Objects" -> {
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{4, -1, 4}, {-1, 2, -1}, {4, -1, 4}}],
                        "PixelPositions" -> {{3, 2}, {3, 4}, {4, 3}, {5, 2}, {5, 4}},
                        "Shape" -> Daniel`ARC`ARCScene[
                            {{10, -1, 10}, {-1, 10, -1}, {10, -1, 10}}
                        ],
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{4, -1, 4}, {-1, 2, -1}, {4, -1, 4}}
                                ]
                            |>
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
                                "Shape" -> <|"Name" -> "Pixel"|>,
                                "Shapes" -> {
                                    <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                                    <|"Name" -> "Pixel"|>,
                                    <|"Name" -> "Square"|>,
                                    <|"Name" -> "Rectangle"|>,
                                    <|"Name" -> "Square", "Filled" -> True|>,
                                    <|"Name" -> "Rectangle", "Filled" -> True|>
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
                                "FilledProportion" -> 1.,
                                "YRelative" -> 0,
                                "XRelative" -> 0
                            |>,
                            <|
                                "UUID" -> 0,
                                "Image" -> Daniel`ARC`ARCScene[{{4}}],
                                "PixelPositions" -> {{3, 4}},
                                "Shape" -> <|"Name" -> "Pixel"|>,
                                "Shapes" -> {
                                    <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                                    <|"Name" -> "Pixel"|>,
                                    <|"Name" -> "Square"|>,
                                    <|"Name" -> "Rectangle"|>,
                                    <|"Name" -> "Square", "Filled" -> True|>,
                                    <|"Name" -> "Rectangle", "Filled" -> True|>
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
                                "FilledProportion" -> 1.,
                                "YRelative" -> 0,
                                "XRelative" -> 2
                            |>,
                            <|
                                "UUID" -> 0,
                                "Image" -> Daniel`ARC`ARCScene[{{2}}],
                                "PixelPositions" -> {{4, 3}},
                                "Shape" -> <|"Name" -> "Pixel"|>,
                                "Shapes" -> {
                                    <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                                    <|"Name" -> "Pixel"|>,
                                    <|"Name" -> "Square"|>,
                                    <|"Name" -> "Rectangle"|>,
                                    <|"Name" -> "Square", "Filled" -> True|>,
                                    <|"Name" -> "Rectangle", "Filled" -> True|>
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
                                "FilledProportion" -> 1.,
                                "YRelative" -> 1,
                                "XRelative" -> 1
                            |>,
                            <|
                                "UUID" -> 0,
                                "Image" -> Daniel`ARC`ARCScene[{{4}}],
                                "PixelPositions" -> {{5, 2}},
                                "Shape" -> <|"Name" -> "Pixel"|>,
                                "Shapes" -> {
                                    <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                                    <|"Name" -> "Pixel"|>,
                                    <|"Name" -> "Square"|>,
                                    <|"Name" -> "Rectangle"|>,
                                    <|"Name" -> "Square", "Filled" -> True|>,
                                    <|"Name" -> "Rectangle", "Filled" -> True|>
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
                                "FilledProportion" -> 1.,
                                "YRelative" -> 2,
                                "XRelative" -> 0
                            |>,
                            <|
                                "UUID" -> 0,
                                "Image" -> Daniel`ARC`ARCScene[{{4}}],
                                "PixelPositions" -> {{5, 4}},
                                "Shape" -> <|"Name" -> "Pixel"|>,
                                "Shapes" -> {
                                    <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                                    <|"Name" -> "Pixel"|>,
                                    <|"Name" -> "Square"|>,
                                    <|"Name" -> "Rectangle"|>,
                                    <|"Name" -> "Square", "Filled" -> True|>,
                                    <|"Name" -> "Rectangle", "Filled" -> True|>
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
                                "FilledProportion" -> 1.,
                                "YRelative" -> 2,
                                "XRelative" -> 2
                            |>
                        },
                        "WidthRank" -> 1,
                        "WidthInverseRank" -> 1,
                        "HeightRank" -> 1,
                        "HeightInverseRank" -> 1,
                        "LengthRank" -> 1,
                        "LengthInverseRank" -> 1,
                        "YRank" -> 2,
                        "YInverseRank" -> 1,
                        "XRank" -> 2,
                        "XInverseRank" -> 1,
                        "Y2Rank" -> 2,
                        "Y2InverseRank" -> 1,
                        "X2Rank" -> 2,
                        "X2InverseRank" -> 1,
                        "PrimarySizeDimensionRank" -> 1,
                        "PrimarySizeDimensionInverseRank" -> 1,
                        "AspectRatioRank" -> 1,
                        "AspectRatioInverseRank" -> 1
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{-1, 7, -1}, {7, 1, 7}, {-1, 7, -1}}],
                        "PixelPositions" -> {{6, 7}, {7, 6}, {7, 7}, {7, 8}, {8, 7}},
                        "Shape" -> Daniel`ARC`ARCScene[
                            {{-1, 10, -1}, {10, 10, 10}, {-1, 10, -1}}
                        ],
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{-1, 7, -1}, {7, 1, 7}, {-1, 7, -1}}
                                ]
                            |>
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
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{-1, 7, -1}, {7, -1, 7}, {-1, 7, -1}}
                                ],
                                "PixelPositions" -> {{6, 7}, {7, 6}, {7, 8}, {8, 7}},
                                "Shape" -> Daniel`ARC`ARCScene[
                                    {{-1, 10, -1}, {10, -1, 10}, {-1, 10, -1}}
                                ],
                                "Shapes" -> {
                                    <|
                                        "Image" -> Daniel`ARC`ARCScene[
                                            {{-1, 10, -1}, {10, -1, 10}, {-1, 10, -1}}
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
                                "FilledProportion" -> 0.4444444444444444,
                                "YRelative" -> 0,
                                "XRelative" -> 0
                            |>,
                            <|
                                "UUID" -> 0,
                                "Image" -> Daniel`ARC`ARCScene[{{1}}],
                                "PixelPositions" -> {{7, 7}},
                                "Shape" -> <|"Name" -> "Pixel"|>,
                                "Shapes" -> {
                                    <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                                    <|"Name" -> "Pixel"|>,
                                    <|"Name" -> "Square"|>,
                                    <|"Name" -> "Rectangle"|>,
                                    <|"Name" -> "Square", "Filled" -> True|>,
                                    <|"Name" -> "Rectangle", "Filled" -> True|>
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
                                "FilledProportion" -> 1.,
                                "YRelative" -> 1,
                                "XRelative" -> 1
                            |>
                        },
                        "WidthRank" -> 1,
                        "WidthInverseRank" -> 1,
                        "HeightRank" -> 1,
                        "HeightInverseRank" -> 1,
                        "LengthRank" -> 1,
                        "LengthInverseRank" -> 1,
                        "YRank" -> 1,
                        "YInverseRank" -> 2,
                        "XRank" -> 1,
                        "XInverseRank" -> 2,
                        "Y2Rank" -> 1,
                        "Y2InverseRank" -> 2,
                        "X2Rank" -> 1,
                        "X2InverseRank" -> 2,
                        "PrimarySizeDimensionRank" -> 1,
                        "PrimarySizeDimensionInverseRank" -> 1,
                        "AspectRatioRank" -> 1,
                        "AspectRatioInverseRank" -> 1
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
        |>
    }
    ,
    TestID -> "ARCParseExamples-20220723-UDW1J2"
]