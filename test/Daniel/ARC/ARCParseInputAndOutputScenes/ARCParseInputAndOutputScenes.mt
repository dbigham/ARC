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
        "Background" -> "Black",
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
                "Width" -> 3,
                "Height" -> 2,
                "Y" -> 6,
                "X" -> 2,
                "AspectRatio" -> 3/2,
                "Area" -> 6,
                "FilledArea" -> 6
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
                "Width" -> 3,
                "Height" -> 2,
                "Y" -> 6,
                "X" -> 5,
                "AspectRatio" -> 3/2,
                "Area" -> 6,
                "FilledArea" -> 6
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
                "Width" -> 3,
                "Height" -> 2,
                "Y" -> 6,
                "X" -> 8,
                "AspectRatio" -> 3/2,
                "Area" -> 6,
                "FilledArea" -> 6
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