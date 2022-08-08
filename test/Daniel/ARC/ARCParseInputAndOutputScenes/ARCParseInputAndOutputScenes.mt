(*
    Tests for: Daniel`ARC`ARCParseInputAndOutputScenes
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCParseInputAndOutputScenes]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            DevTools`ERP`NormalizeOutput[
                With[
                    {parsedFile = Daniel`ARC`ARCParseFile["1caeab9d"]},
                    Daniel`ARC`ARCParseInputAndOutputScenes[
                        parsedFile["Train", 2, "Input"],
                        parsedFile["Train", 2, "Output"]
                    ]
                ]["Output"]
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
                "Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 2, 2}}],
                "PixelPositions" -> {{6, 2}, {6, 3}, {6, 4}, {7, 2}, {7, 3}, {7, 4}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{2, 2, 2}, {2, 2, 2}}]|>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{2, 2}, {2, 2}, {2, 2}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{2, 2}, {2, 2}, {2, 2}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                    |>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {2},
                "Position" -> {6, 2},
                "Y" -> 6,
                "X" -> 2,
                "Y2" -> 7,
                "X2" -> 4,
                "Width" -> 3,
                "Height" -> 2,
                "Length" -> 3,
                "PrimarySizeDimension" -> "X",
                "AspectRatio" -> 3/2,
                "Area" -> 6,
                "FilledArea" -> 6,
                "FilledProportion" -> 1.,
                "WidthRank" -> 1,
                "WidthInverseRank" -> 1,
                "HeightRank" -> 1,
                "HeightInverseRank" -> 1,
                "LengthRank" -> 1,
                "LengthInverseRank" -> 1,
                "YRank" -> 1,
                "YInverseRank" -> 1,
                "XRank" -> 3,
                "XInverseRank" -> 1,
                "Y2Rank" -> 1,
                "Y2InverseRank" -> 1,
                "X2Rank" -> 3,
                "X2InverseRank" -> 1,
                "PrimarySizeDimensionRank" -> 1,
                "PrimarySizeDimensionInverseRank" -> 1,
                "AspectRatioRank" -> 1,
                "AspectRatioInverseRank" -> 1
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{1, 1, 1}, {1, 1, 1}}],
                "PixelPositions" -> {{6, 5}, {6, 6}, {6, 7}, {7, 5}, {7, 6}, {7, 7}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{1, 1, 1}, {1, 1, 1}}]|>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{1, 1}, {1, 1}, {1, 1}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{1, 1}, {1, 1}, {1, 1}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                    |>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {1},
                "Position" -> {6, 5},
                "Y" -> 6,
                "X" -> 5,
                "Y2" -> 7,
                "X2" -> 7,
                "Width" -> 3,
                "Height" -> 2,
                "Length" -> 3,
                "PrimarySizeDimension" -> "X",
                "AspectRatio" -> 3/2,
                "Area" -> 6,
                "FilledArea" -> 6,
                "FilledProportion" -> 1.,
                "WidthRank" -> 1,
                "WidthInverseRank" -> 1,
                "HeightRank" -> 1,
                "HeightInverseRank" -> 1,
                "LengthRank" -> 1,
                "LengthInverseRank" -> 1,
                "YRank" -> 1,
                "YInverseRank" -> 1,
                "XRank" -> 2,
                "XInverseRank" -> 2,
                "Y2Rank" -> 1,
                "Y2InverseRank" -> 1,
                "X2Rank" -> 2,
                "X2InverseRank" -> 2,
                "PrimarySizeDimensionRank" -> 1,
                "PrimarySizeDimensionInverseRank" -> 1,
                "AspectRatioRank" -> 1,
                "AspectRatioInverseRank" -> 1
            |>,
            <|
                "UUID" -> 0,
                "Image" -> Daniel`ARC`ARCScene[{{4, 4, 4}, {4, 4, 4}}],
                "PixelPositions" -> {{6, 8}, {6, 9}, {6, 10}, {7, 8}, {7, 9}, {7, 10}},
                "Shapes" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{4, 4, 4}, {4, 4, 4}}]|>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4, 4}, {4, 4}, {4, 4}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4, 4}, {4, 4}, {4, 4}}],
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                    |>,
                    <|"Name" -> "Rectangle"|>
                },
                "Colors" -> {4},
                "Position" -> {6, 8},
                "Y" -> 6,
                "X" -> 8,
                "Y2" -> 7,
                "X2" -> 10,
                "Width" -> 3,
                "Height" -> 2,
                "Length" -> 3,
                "PrimarySizeDimension" -> "X",
                "AspectRatio" -> 3/2,
                "Area" -> 6,
                "FilledArea" -> 6,
                "FilledProportion" -> 1.,
                "WidthRank" -> 1,
                "WidthInverseRank" -> 1,
                "HeightRank" -> 1,
                "HeightInverseRank" -> 1,
                "LengthRank" -> 1,
                "LengthInverseRank" -> 1,
                "YRank" -> 1,
                "YInverseRank" -> 1,
                "XRank" -> 1,
                "XInverseRank" -> 3,
                "Y2Rank" -> 1,
                "Y2InverseRank" -> 1,
                "X2Rank" -> 1,
                "X2InverseRank" -> 3,
                "PrimarySizeDimensionRank" -> 1,
                "PrimarySizeDimensionInverseRank" -> 1,
                "AspectRatioRank" -> 1,
                "AspectRatioInverseRank" -> 1
            |>
        },
        "Scene" -> Daniel`ARC`ARCScene[
            {
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 2, 2, 2, 1, 1, 1, 4, 4, 4},
                {0, 2, 2, 2, 1, 1, 1, 4, 4, 4},
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
            }
        ]
    |>
    ,
    TestID -> "ARCParseInputAndOutputScenes-20220724-BK2FLS"
]

Test[
    Length[
        DevTools`ERP`NormalizeOutput[
            With[
                {parsedFile = Daniel`ARC`ARCParseFile["0ca9ddb6"]},
                Daniel`ARC`ARCParseInputAndOutputScenes[
                    parsedFile["Train", 1, "Input"],
                    parsedFile["Train", 1, "Output"]
                ]
            ]["Output", "Objects"]
        ]
    ]
    ,
    2
    ,
    TestID -> "ARCParseInputAndOutputScenes-20220724-1VOP6G"
]