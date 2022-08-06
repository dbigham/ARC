(*
    Tests for: Daniel`ARC`ARCFormCompositeObjects
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCFormCompositeObjects]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCFormCompositeObjects[
            Daniel`ARC`ARCScene[
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
            ],
            {
                <|
                    "UUID" -> "61038be5-ff0b-4127-ae12-53327fe3d08e",
                    "Image" -> Daniel`ARC`ARCScene[{{1}}],
                    "PixelPositions" -> {{7, 7}},
                    "Shape" -> {
                        <|"Name" -> "Pixel"|>,
                        <|"Name" -> "Square"|>,
                        <|"Name" -> "Rectangle"|>
                    },
                    "Color" -> 1,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {7, 7},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>,
                <|
                    "UUID" -> "6a8b514b-f10a-499b-8bca-fa4bd26d3093",
                    "Image" -> Daniel`ARC`ARCScene[{{2}}],
                    "PixelPositions" -> {{4, 3}},
                    "Shape" -> {<|"Name" -> "Pixel"|>},
                    "Color" -> 2,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {4, 3},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>,
                <|
                    "UUID" -> "c352b306-971b-4632-b5a0-a66a4c8e4b27",
                    "Image" -> Daniel`ARC`ARCScene[{{4}}],
                    "PixelPositions" -> {{3, 2}},
                    "Shape" -> {<|"Name" -> "Pixel"|>},
                    "Color" -> 4,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {3, 2},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>,
                <|
                    "UUID" -> "334e881a-c81d-4f55-b381-1ea1090a5ffc",
                    "Image" -> Daniel`ARC`ARCScene[{{4}}],
                    "PixelPositions" -> {{3, 4}},
                    "Shape" -> {<|"Name" -> "Pixel"|>},
                    "Color" -> 4,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {3, 4},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>,
                <|
                    "UUID" -> "b7049403-c19e-41e3-8edb-84ef0649a82b",
                    "Image" -> Daniel`ARC`ARCScene[{{4}}],
                    "PixelPositions" -> {{5, 2}},
                    "Shape" -> {<|"Name" -> "Pixel"|>},
                    "Color" -> 4,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {5, 2},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>,
                <|
                    "UUID" -> "6f024852-92f6-44db-978a-0716313e5b74",
                    "Image" -> Daniel`ARC`ARCScene[{{4}}],
                    "PixelPositions" -> {{5, 4}},
                    "Shape" -> {<|"Name" -> "Pixel"|>},
                    "Color" -> 4,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {5, 4},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>,
                <|
                    "UUID" -> "7ad70b35-3033-471b-85bf-17399c3e2a35",
                    "Image" -> Daniel`ARC`ARCScene[{{0, 7, 0}, {7, 0, 7}, {0, 7, 0}}],
                    "PixelPositions" -> {{6, 7}, {7, 6}, {7, 8}, {8, 7}},
                    "Color" -> 7,
                    "Width" -> 3,
                    "Height" -> 3,
                    "Position" -> {6, 6},
                    "AspectRatio" -> 1,
                    "Area" -> 4
                |>
            },
            {
                <|
                    "UUID" -> "89a9707c-edbe-4bf9-b0da-2fee6ba9b163",
                    "Image" -> Daniel`ARC`ARCScene[{{10, 0, 10}, {0, 10, 0}, {10, 0, 10}}],
                    "PixelPositions" -> {{3, 2}, {3, 4}, {4, 3}, {5, 2}, {5, 4}},
                    "Color" -> 10,
                    "Width" -> 3,
                    "Height" -> 3,
                    "Position" -> {3, 2},
                    "AspectRatio" -> 1,
                    "Area" -> 5
                |>,
                <|
                    "UUID" -> "0548a70a-33ec-42c5-b1c5-38e21b613ee1",
                    "Image" -> Daniel`ARC`ARCScene[{{0, 10, 0}, {10, 10, 10}, {0, 10, 0}}],
                    "PixelPositions" -> {{6, 7}, {7, 6}, {7, 7}, {7, 8}, {8, 7}},
                    "Color" -> 10,
                    "Width" -> 3,
                    "Height" -> 3,
                    "Position" -> {6, 6},
                    "AspectRatio" -> 1,
                    "Area" -> 5
                |>
            }
        ]
    ]
    ,
    {
        <|
            "UUID" -> "89a9707c-edbe-4bf9-b0da-2fee6ba9b163",
            "Image" -> Daniel`ARC`ARCScene[{{4, 0, 4}, {0, 2, 0}, {4, 0, 4}}],
            "PixelPositions" -> {{3, 2}, {3, 4}, {4, 3}, {5, 2}, {5, 4}},
            "Color" -> 10,
            "Width" -> 3,
            "Height" -> 3,
            "Position" -> {3, 2},
            "AspectRatio" -> 1,
            "Area" -> 5,
            "Components" -> {
                <|
                    "UUID" -> "c352b306-971b-4632-b5a0-a66a4c8e4b27",
                    "Image" -> Daniel`ARC`ARCScene[{{4}}],
                    "PixelPositions" -> {{3, 2}},
                    "Shape" -> {<|"Name" -> "Pixel"|>},
                    "Color" -> 4,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {3, 2},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>,
                <|
                    "UUID" -> "334e881a-c81d-4f55-b381-1ea1090a5ffc",
                    "Image" -> Daniel`ARC`ARCScene[{{4}}],
                    "PixelPositions" -> {{3, 4}},
                    "Shape" -> {<|"Name" -> "Pixel"|>},
                    "Color" -> 4,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {3, 4},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>,
                <|
                    "UUID" -> "6a8b514b-f10a-499b-8bca-fa4bd26d3093",
                    "Image" -> Daniel`ARC`ARCScene[{{2}}],
                    "PixelPositions" -> {{4, 3}},
                    "Shape" -> {<|"Name" -> "Pixel"|>},
                    "Color" -> 2,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {4, 3},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>,
                <|
                    "UUID" -> "b7049403-c19e-41e3-8edb-84ef0649a82b",
                    "Image" -> Daniel`ARC`ARCScene[{{4}}],
                    "PixelPositions" -> {{5, 2}},
                    "Shape" -> {<|"Name" -> "Pixel"|>},
                    "Color" -> 4,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {5, 2},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>,
                <|
                    "UUID" -> "6f024852-92f6-44db-978a-0716313e5b74",
                    "Image" -> Daniel`ARC`ARCScene[{{4}}],
                    "PixelPositions" -> {{5, 4}},
                    "Shape" -> {<|"Name" -> "Pixel"|>},
                    "Color" -> 4,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {5, 4},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>
            },
            "Colors" -> {Missing["KeyAbsent", "Colors"]},
            "Shapes" -> {
                <|"Image" -> Daniel`ARC`ARCScene[{{4, 0, 4}, {0, 2, 0}, {4, 0, 4}}]|>,
                Missing["KeyAbsent", "Shapes"]
            }
        |>,
        <|
            "UUID" -> "0548a70a-33ec-42c5-b1c5-38e21b613ee1",
            "Image" -> Daniel`ARC`ARCScene[{{0, 7, 0}, {7, 1, 7}, {0, 7, 0}}],
            "PixelPositions" -> {{6, 7}, {7, 6}, {7, 7}, {7, 8}, {8, 7}},
            "Color" -> 10,
            "Width" -> 3,
            "Height" -> 3,
            "Position" -> {6, 6},
            "AspectRatio" -> 1,
            "Area" -> 5,
            "Components" -> {
                <|
                    "UUID" -> "7ad70b35-3033-471b-85bf-17399c3e2a35",
                    "Image" -> Daniel`ARC`ARCScene[{{0, 7, 0}, {7, 0, 7}, {0, 7, 0}}],
                    "PixelPositions" -> {{6, 7}, {7, 6}, {7, 8}, {8, 7}},
                    "Color" -> 7,
                    "Width" -> 3,
                    "Height" -> 3,
                    "Position" -> {6, 6},
                    "AspectRatio" -> 1,
                    "Area" -> 4
                |>,
                <|
                    "UUID" -> "61038be5-ff0b-4127-ae12-53327fe3d08e",
                    "Image" -> Daniel`ARC`ARCScene[{{1}}],
                    "PixelPositions" -> {{7, 7}},
                    "Shape" -> {
                        <|"Name" -> "Pixel"|>,
                        <|"Name" -> "Square"|>,
                        <|"Name" -> "Rectangle"|>
                    },
                    "Color" -> 1,
                    "Width" -> 1,
                    "Height" -> 1,
                    "Position" -> {7, 7},
                    "AspectRatio" -> 1,
                    "Area" -> 1
                |>
            },
            "Colors" -> {Missing["KeyAbsent", "Colors"]},
            "Shapes" -> {
                <|"Image" -> Daniel`ARC`ARCScene[{{0, 7, 0}, {7, 1, 7}, {0, 7, 0}}]|>,
                Missing["KeyAbsent", "Shapes"]
            }
        |>
    }
    ,
    TestID -> "ARCFormCompositeObjects-20220718-XRHLHS"
]