(*
    Tests for: Daniel`ARC`ARCPruneOutputsForRuleFinding
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCPruneOutputsForRuleFinding]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            DevTools`ERP`NormalizeOutput[
                DevTools`ERP`NormalizeOutput["Key" -> "OutputComponentUUID"][
                    Daniel`ARC`ARCPruneOutputsForRuleFinding[
                        Utility`ReturnIfFailure[
                            Daniel`ARC`ARCFindObjectMapping[
                                Daniel`ARC`ARCParseFile[file = "0ca9ddb6"]["Train", 2]
                            ]
                        ],
                        1
                    ]
                ]
            ]
        ]
    ]
    ,
    {
        <|
            "Image" -> Daniel`ARC`ARCScene[{{8}}],
            "PixelPositions" -> {{1, 4}},
            "Shapes" -> {
                <|"Image" -> Daniel`ARC`ARCScene[{{8}}]|>,
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Square"|>,
                <|"Name" -> "Rectangle"|>
            },
            "Colors" -> {8},
            "Position" -> {1, 4},
            "Y" -> 1,
            "X" -> 4,
            "Y2" -> 1,
            "X2" -> 4,
            "Width" -> 1,
            "Height" -> 1,
            "Length" -> 1,
            "PrimarySizeDimension" -> "None",
            "AspectRatio" -> 1,
            "Area" -> 1,
            "FilledArea" -> 1,
            "FilledProportion" -> 1.,
            "WidthRank" -> 1,
            "WidthInverseRank" -> 1,
            "HeightRank" -> 1,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 1,
            "YRank" -> 5,
            "YInverseRank" -> 1,
            "XRank" -> 2,
            "XInverseRank" -> 3,
            "Y2Rank" -> 5,
            "Y2InverseRank" -> 1,
            "X2Rank" -> 2,
            "X2InverseRank" -> 3,
            "PrimarySizeDimensionRank" -> 1,
            "PrimarySizeDimensionInverseRank" -> 1,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 1
        |> -> <|
            "Same" -> True,
            "Example" -> 1,
            "Input" -> <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{8}}],
                "PixelPositions" -> {{1, 4}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{8}}]|>,
                    <|"Name" -> "Pixel"|>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {8},
                "Position" -> {1, 4},
                "Y" -> 1,
                "X" -> 4,
                "Y2" -> 1,
                "X2" -> 4,
                "Width" -> 1,
                "Height" -> 1,
                "Length" -> 1,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 1,
                "FilledArea" -> 1,
                "FilledProportion" -> 1.,
                "WidthRank" -> 1,
                "WidthInverseRank" -> 1,
                "HeightRank" -> 1,
                "HeightInverseRank" -> 1,
                "LengthRank" -> 1,
                "LengthInverseRank" -> 1,
                "YRank" -> 5,
                "YInverseRank" -> 1,
                "XRank" -> 2,
                "XInverseRank" -> 3,
                "Y2Rank" -> 5,
                "Y2InverseRank" -> 1,
                "X2Rank" -> 2,
                "X2InverseRank" -> 3,
                "PrimarySizeDimensionRank" -> 1,
                "PrimarySizeDimensionInverseRank" -> 1,
                "AspectRatioRank" -> 1,
                "AspectRatioInverseRank" -> 1
            |>
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{2}}],
            "PixelPositions" -> {{3, 7}},
            "Shapes" -> {
                <|"Image" -> Daniel`ARC`ARCScene[{{2}}]|>,
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Square"|>,
                <|"Name" -> "Rectangle"|>
            },
            "Colors" -> {2},
            "Position" -> {3, 7},
            "Y" -> 3,
            "X" -> 7,
            "Y2" -> 3,
            "X2" -> 7,
            "Width" -> 1,
            "Height" -> 1,
            "Length" -> 1,
            "PrimarySizeDimension" -> "None",
            "AspectRatio" -> 1,
            "Area" -> 1,
            "FilledArea" -> 1,
            "FilledProportion" -> 1.,
            "WidthRank" -> 1,
            "WidthInverseRank" -> 1,
            "HeightRank" -> 1,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 1,
            "YRank" -> 4,
            "YInverseRank" -> 2,
            "XRank" -> 1,
            "XInverseRank" -> 4,
            "Y2Rank" -> 4,
            "Y2InverseRank" -> 2,
            "X2Rank" -> 1,
            "X2InverseRank" -> 4,
            "PrimarySizeDimensionRank" -> 1,
            "PrimarySizeDimensionInverseRank" -> 1,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 1,
            "OutputComponentUUID" -> _String
        |> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{4, -1, 4}, {-1, 2, -1}, {4, -1, 4}}],
            "Position" -> {2, 6},
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> -1,
                                "X" -> -1,
                                "YInverse" -> -1,
                                "XInverse" -> -1
                            |>
                        |>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> -1,
                                "X" -> 1,
                                "YInverse" -> -1,
                                "XInverse" -> 1
                            |>
                        |>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> 1,
                                "X" -> -1,
                                "YInverse" -> 1,
                                "XInverse" -> -1
                            |>
                        |>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> 1,
                                "X" -> 1,
                                "YInverse" -> 1,
                                "XInverse" -> 1
                            |>
                        |>
                    |>
                }
            |>,
            "Example" -> 1,
            "Input" -> <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{2}}],
                "PixelPositions" -> {{3, 7}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{2}}]|>,
                    <|"Name" -> "Pixel"|>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {2},
                "Position" -> {3, 7},
                "Y" -> 3,
                "X" -> 7,
                "Y2" -> 3,
                "X2" -> 7,
                "Width" -> 1,
                "Height" -> 1,
                "Length" -> 1,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 1,
                "FilledArea" -> 1,
                "FilledProportion" -> 1.,
                "WidthRank" -> 1,
                "WidthInverseRank" -> 1,
                "HeightRank" -> 1,
                "HeightInverseRank" -> 1,
                "LengthRank" -> 1,
                "LengthInverseRank" -> 1,
                "YRank" -> 4,
                "YInverseRank" -> 2,
                "XRank" -> 1,
                "XInverseRank" -> 4,
                "Y2Rank" -> 4,
                "Y2InverseRank" -> 2,
                "X2Rank" -> 1,
                "X2InverseRank" -> 4,
                "PrimarySizeDimensionRank" -> 1,
                "PrimarySizeDimensionInverseRank" -> 1,
                "AspectRatioRank" -> 1,
                "AspectRatioInverseRank" -> 1,
                "OutputComponentUUID" -> _String
            |>
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "PixelPositions" -> {{4, 3}},
            "Shapes" -> {
                <|"Image" -> Daniel`ARC`ARCScene[{{1}}]|>,
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Square"|>,
                <|"Name" -> "Rectangle"|>
            },
            "Colors" -> {1},
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
            "WidthRank" -> 1,
            "WidthInverseRank" -> 1,
            "HeightRank" -> 1,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 1,
            "YRank" -> 3,
            "YInverseRank" -> 3,
            "XRank" -> 3,
            "XInverseRank" -> 2,
            "Y2Rank" -> 3,
            "Y2InverseRank" -> 3,
            "X2Rank" -> 3,
            "X2InverseRank" -> 2,
            "PrimarySizeDimensionRank" -> 1,
            "PrimarySizeDimensionInverseRank" -> 1,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 1,
            "OutputComponentUUID" -> _String
        |> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{-1, 7, -1}, {7, 1, 7}, {-1, 7, -1}}],
            "Position" -> {3, 2},
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{-1, 7, -1}, {7, -1, 7}, {-1, 7, -1}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> -1,
                                "X" -> -1,
                                "YInverse" -> -1,
                                "XInverse" -> -1
                            |>
                        |>
                    |>
                }
            |>,
            "Example" -> 1,
            "Input" -> <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{1}}],
                "PixelPositions" -> {{4, 3}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{1}}]|>,
                    <|"Name" -> "Pixel"|>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {1},
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
                "WidthRank" -> 1,
                "WidthInverseRank" -> 1,
                "HeightRank" -> 1,
                "HeightInverseRank" -> 1,
                "LengthRank" -> 1,
                "LengthInverseRank" -> 1,
                "YRank" -> 3,
                "YInverseRank" -> 3,
                "XRank" -> 3,
                "XInverseRank" -> 2,
                "Y2Rank" -> 3,
                "Y2InverseRank" -> 3,
                "X2Rank" -> 3,
                "X2InverseRank" -> 2,
                "PrimarySizeDimensionRank" -> 1,
                "PrimarySizeDimensionInverseRank" -> 1,
                "AspectRatioRank" -> 1,
                "AspectRatioInverseRank" -> 1,
                "OutputComponentUUID" -> _String
            |>
        |>,
        <|
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
            "FilledProportion" -> 1.,
            "WidthRank" -> 1,
            "WidthInverseRank" -> 1,
            "HeightRank" -> 1,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 1,
            "YRank" -> 2,
            "YInverseRank" -> 4,
            "XRank" -> 1,
            "XInverseRank" -> 4,
            "Y2Rank" -> 2,
            "Y2InverseRank" -> 4,
            "X2Rank" -> 1,
            "X2InverseRank" -> 4,
            "PrimarySizeDimensionRank" -> 1,
            "PrimarySizeDimensionInverseRank" -> 1,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 1,
            "OutputComponentUUID" -> _String
        |> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{-1, 7, -1}, {7, 1, 7}, {-1, 7, -1}}],
            "Position" -> {6, 6},
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{-1, 7, -1}, {7, -1, 7}, {-1, 7, -1}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> -1,
                                "X" -> -1,
                                "YInverse" -> -1,
                                "XInverse" -> -1
                            |>
                        |>
                    |>
                }
            |>,
            "Example" -> 1,
            "Input" -> <|
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
                "FilledProportion" -> 1.,
                "WidthRank" -> 1,
                "WidthInverseRank" -> 1,
                "HeightRank" -> 1,
                "HeightInverseRank" -> 1,
                "LengthRank" -> 1,
                "LengthInverseRank" -> 1,
                "YRank" -> 2,
                "YInverseRank" -> 4,
                "XRank" -> 1,
                "XInverseRank" -> 4,
                "Y2Rank" -> 2,
                "Y2InverseRank" -> 4,
                "X2Rank" -> 1,
                "X2InverseRank" -> 4,
                "PrimarySizeDimensionRank" -> 1,
                "PrimarySizeDimensionInverseRank" -> 1,
                "AspectRatioRank" -> 1,
                "AspectRatioInverseRank" -> 1,
                "OutputComponentUUID" -> _String
            |>
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{2}}],
            "PixelPositions" -> {{8, 2}},
            "Shapes" -> {
                <|"Image" -> Daniel`ARC`ARCScene[{{2}}]|>,
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Square"|>,
                <|"Name" -> "Rectangle"|>
            },
            "Colors" -> {2},
            "Position" -> {8, 2},
            "Y" -> 8,
            "X" -> 2,
            "Y2" -> 8,
            "X2" -> 2,
            "Width" -> 1,
            "Height" -> 1,
            "Length" -> 1,
            "PrimarySizeDimension" -> "None",
            "AspectRatio" -> 1,
            "Area" -> 1,
            "FilledArea" -> 1,
            "FilledProportion" -> 1.,
            "WidthRank" -> 1,
            "WidthInverseRank" -> 1,
            "HeightRank" -> 1,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 5,
            "XRank" -> 4,
            "XInverseRank" -> 1,
            "Y2Rank" -> 1,
            "Y2InverseRank" -> 5,
            "X2Rank" -> 4,
            "X2InverseRank" -> 1,
            "PrimarySizeDimensionRank" -> 1,
            "PrimarySizeDimensionInverseRank" -> 1,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 1,
            "OutputComponentUUID" -> _String
        |> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{4, -1, 4}, {-1, 2, -1}, {4, -1, 4}}],
            "Position" -> {7, 1},
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> -1,
                                "X" -> -1,
                                "YInverse" -> -1,
                                "XInverse" -> -1
                            |>
                        |>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> -1,
                                "X" -> 1,
                                "YInverse" -> -1,
                                "XInverse" -> 1
                            |>
                        |>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> 1,
                                "X" -> -1,
                                "YInverse" -> 1,
                                "XInverse" -> -1
                            |>
                        |>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|
                            "RelativePosition" -> <|
                                "Y" -> 1,
                                "X" -> 1,
                                "YInverse" -> 1,
                                "XInverse" -> 1
                            |>
                        |>
                    |>
                }
            |>,
            "Example" -> 1,
            "Input" -> <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{2}}],
                "PixelPositions" -> {{8, 2}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{2}}]|>,
                    <|"Name" -> "Pixel"|>,
                    <|"Name" -> "Square"|>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {2},
                "Position" -> {8, 2},
                "Y" -> 8,
                "X" -> 2,
                "Y2" -> 8,
                "X2" -> 2,
                "Width" -> 1,
                "Height" -> 1,
                "Length" -> 1,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 1,
                "FilledArea" -> 1,
                "FilledProportion" -> 1.,
                "WidthRank" -> 1,
                "WidthInverseRank" -> 1,
                "HeightRank" -> 1,
                "HeightInverseRank" -> 1,
                "LengthRank" -> 1,
                "LengthInverseRank" -> 1,
                "YRank" -> 1,
                "YInverseRank" -> 5,
                "XRank" -> 4,
                "XInverseRank" -> 1,
                "Y2Rank" -> 1,
                "Y2InverseRank" -> 5,
                "X2Rank" -> 4,
                "X2InverseRank" -> 1,
                "PrimarySizeDimensionRank" -> 1,
                "PrimarySizeDimensionInverseRank" -> 1,
                "AspectRatioRank" -> 1,
                "AspectRatioInverseRank" -> 1,
                "OutputComponentUUID" -> _String
            |>
        |>
    }
    ,
    TestID -> "ARCPruneOutputsForRuleFinding-20220719-L90VO7"
]