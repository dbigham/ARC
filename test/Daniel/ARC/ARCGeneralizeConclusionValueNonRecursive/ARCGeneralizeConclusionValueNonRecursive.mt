(*
    Tests for: Daniel`ARC`ARCGeneralizeConclusionValueNonRecursive
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCGeneralizeConclusionValueNonRecursive]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCGeneralizeConclusionValueNonRecursive[
        {"Position", "Y"},
        <|"ObjectGet" -> (#1["Y"] & )|>,
        {
            <|
                "Value" -> 2,
                "Example" -> 1,
                "Input" -> <|
                    "UUID" -> "e633a1d5-8ad1-4262-9431-ac9f70c3a679",
                    "Image" -> Daniel`ARC`ARCScene[{{4, 4}, {4, 4}}],
                    "PixelPositions" -> {{3, 5}, {3, 6}, {4, 5}, {4, 6}},
                    "Shapes" -> {
                        <|"Image" -> Daniel`ARC`ARCScene[{{4, 4}, {4, 4}}]|>,
                        <|"Name" -> "Square"|>,
                        <|"Name" -> "Rectangle"|>
                    },
                    "Colors" -> {4},
                    "Width" -> 2,
                    "Height" -> 2,
                    "Position" -> {3, 5},
                    "Y" -> 3,
                    "X" -> 5,
                    "AspectRatio" -> 1,
                    "Area" -> 4,
                    "FilledArea" -> 4
                |>
            |>,
            <|
                "Value" -> 6,
                "Example" -> 2,
                "Input" -> <|
                    "UUID" -> "93a34fd3-d0fc-4833-bd90-9e980a68fd6a",
                    "Image" -> Daniel`ARC`ARCScene[{{4, 4, 4}, {4, 4, 4}}],
                    "PixelPositions" -> {{1, 8}, {1, 9}, {1, 10}, {2, 8}, {2, 9}, {2, 10}},
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
                    "Width" -> 3,
                    "Height" -> 2,
                    "Position" -> {1, 8},
                    "Y" -> 1,
                    "X" -> 8,
                    "AspectRatio" -> 3/2,
                    "Area" -> 6,
                    "FilledArea" -> 6
                |>
            |>,
            <|
                "Value" -> 3,
                "Example" -> 3,
                "Input" -> <|
                    "UUID" -> "655a2c7a-0e0c-4b69-94fb-23e12c649c85",
                    "Image" -> Daniel`ARC`ARCScene[{{4}, {4}}],
                    "PixelPositions" -> {{4, 7}, {5, 7}},
                    "Shapes" -> {
                        <|"Image" -> Daniel`ARC`ARCScene[{{4}, {4}}]|>,
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{4, 4}}],
                            "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                        |>,
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{4, 4}}],
                            "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                        |>,
                        <|"Name" -> "Line", "Angle" -> 90|>,
                        <|"Name" -> "Rectangle"|>
                    },
                    "Colors" -> {4},
                    "Width" -> 1,
                    "Height" -> 2,
                    "Position" -> {4, 7},
                    "Y" -> 4,
                    "X" -> 7,
                    "AspectRatio" -> 1/2,
                    "Area" -> 2,
                    "FilledArea" -> 2
                |>
            |>
        },
        <|
            Daniel`ARC`Object[<|"Colors" -> {1}|>] -> <|
                "Height" -> 2,
                "Shapes" -> {<|"Name" -> "Rectangle"|>}
            |>,
            Daniel`ARC`Object[<|"Colors" -> {2}|>] -> <|
                "Height" -> 2,
                "Shapes" -> {<|"Name" -> "Rectangle"|>}
            |>,
            Daniel`ARC`Object[<|"Colors" -> {4}|>] -> <|
                "Height" -> 2,
                "Shapes" -> {<|"Name" -> "Rectangle"|>}
            |>
        |>,
        Daniel`ARC`ARCParseExamples[file = "1caeab9d"]
    ]
    ,
    "Y" -> Daniel`ARC`ObjectValue[<|"Colors" -> {1}|>, "Y"]
    ,
    TestID -> "ARCGeneralizeConclusionValueNonRecursive-20220811-USXWH4"
]