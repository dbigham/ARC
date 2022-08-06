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
                "Background" -> "Black",
                "Width" -> 9,
                "Height" -> 9,
                "Objects" -> {
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
                        "Width" -> 1,
                        "Height" -> 1,
                        "Position" -> {4, 3},
                        "AspectRatio" -> 1,
                        "Area" -> 1,
                        "FilledArea" -> 1
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
                        "Width" -> 1,
                        "Height" -> 1,
                        "Position" -> {7, 7},
                        "AspectRatio" -> 1,
                        "Area" -> 1,
                        "FilledArea" -> 1
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
                "Background" -> "Black",
                "Width" -> 9,
                "Height" -> 9,
                "Objects" -> {
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{4, 0, 4}, {0, 2, 0}, {4, 0, 4}}],
                        "PixelPositions" -> {{3, 2}, {3, 4}, {4, 3}, {5, 2}, {5, 4}},
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{4, 0, 4}, {0, 2, 0}, {4, 0, 4}}
                                ]
                            |>
                        },
                        "Colors" -> {4, 2},
                        "Width" -> 3,
                        "Height" -> 3,
                        "Position" -> {3, 2},
                        "AspectRatio" -> 1,
                        "Area" -> 9,
                        "FilledArea" -> 5,
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
                                "Width" -> 1,
                                "Height" -> 1,
                                "Position" -> {3, 2},
                                "AspectRatio" -> 1,
                                "Area" -> 1,
                                "FilledArea" -> 1
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
                                "Width" -> 1,
                                "Height" -> 1,
                                "Position" -> {3, 4},
                                "AspectRatio" -> 1,
                                "Area" -> 1,
                                "FilledArea" -> 1
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
                                "Width" -> 1,
                                "Height" -> 1,
                                "Position" -> {4, 3},
                                "AspectRatio" -> 1,
                                "Area" -> 1,
                                "FilledArea" -> 1
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
                                "Width" -> 1,
                                "Height" -> 1,
                                "Position" -> {5, 2},
                                "AspectRatio" -> 1,
                                "Area" -> 1,
                                "FilledArea" -> 1
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
                                "Width" -> 1,
                                "Height" -> 1,
                                "Position" -> {5, 4},
                                "AspectRatio" -> 1,
                                "Area" -> 1,
                                "FilledArea" -> 1
                            |>
                        }
                    |>,
                    <|
                        "UUID" -> 0,
                        "Image" -> Daniel`ARC`ARCScene[{{0, 7, 0}, {7, 1, 7}, {0, 7, 0}}],
                        "PixelPositions" -> {{6, 7}, {7, 6}, {7, 7}, {7, 8}, {8, 7}},
                        "Shapes" -> {
                            <|
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{0, 7, 0}, {7, 1, 7}, {0, 7, 0}}
                                ]
                            |>
                        },
                        "Colors" -> {7, 1},
                        "Width" -> 3,
                        "Height" -> 3,
                        "Position" -> {6, 6},
                        "AspectRatio" -> 1,
                        "Area" -> 9,
                        "FilledArea" -> 5,
                        "Components" -> {
                            <|
                                "UUID" -> 0,
                                "Image" -> Daniel`ARC`ARCScene[
                                    {{0, 7, 0}, {7, 0, 7}, {0, 7, 0}}
                                ],
                                "PixelPositions" -> {{6, 7}, {7, 6}, {7, 8}, {8, 7}},
                                "Shapes" -> {
                                    <|
                                        "Image" -> Daniel`ARC`ARCScene[
                                            {{0, 7, 0}, {7, 0, 7}, {0, 7, 0}}
                                        ]
                                    |>
                                },
                                "Colors" -> {7},
                                "Width" -> 3,
                                "Height" -> 3,
                                "Position" -> {6, 6},
                                "AspectRatio" -> 1,
                                "Area" -> 9,
                                "FilledArea" -> 4
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
                                "Width" -> 1,
                                "Height" -> 1,
                                "Position" -> {7, 7},
                                "AspectRatio" -> 1,
                                "Area" -> 1,
                                "FilledArea" -> 1
                            |>
                        }
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