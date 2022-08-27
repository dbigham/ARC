(*
    Tests for: Daniel`ARC`ARCFormGroupsWhenApplyingRules
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCFormGroupsWhenApplyingRules]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`SimplifyObjects[
            Daniel`ARC`ARCFormGroupsWhenApplyingRules[
                {
                    <|
                        "UUID" -> "afd40a2f-b40c-49a3-91f4-168d636c1ded",
                        "Image" -> Daniel`ARC`ARCScene[{{8}}],
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
                        "Colors" -> {8},
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
                        "YRank" -> 1,
                        "YInverseRank" -> 1,
                        "XRank" -> 2,
                        "XInverseRank" -> 1,
                        "Y2Rank" -> 1,
                        "Y2InverseRank" -> 1,
                        "X2Rank" -> 2,
                        "X2InverseRank" -> 1,
                        "PrimarySizeDimensionRank" -> 1,
                        "PrimarySizeDimensionInverseRank" -> 1,
                        "AspectRatioRank" -> 1,
                        "AspectRatioInverseRank" -> 1
                    |>,
                    <|
                        "UUID" -> "e4b601e3-7d7b-48ef-9cab-c1cdf5a8b2a2",
                        "Image" -> Daniel`ARC`ARCScene[{{8}}],
                        "PixelPositions" -> {{4, 10}},
                        "Shape" -> <|"Name" -> "Pixel"|>,
                        "Shapes" -> {
                            <|"Image" -> Daniel`ARC`ARCScene[{{10}}]|>,
                            <|"Name" -> "Pixel"|>,
                            <|"Name" -> "Square"|>,
                            <|"Name" -> "Rectangle"|>,
                            <|"Name" -> "Square", "Filled" -> True|>,
                            <|"Name" -> "Rectangle", "Filled" -> True|>
                        },
                        "Colors" -> {8},
                        "Position" -> {4, 10},
                        "Y" -> 4,
                        "X" -> 10,
                        "Y2" -> 4,
                        "X2" -> 10,
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
                        "YInverseRank" -> 1,
                        "XRank" -> 1,
                        "XInverseRank" -> 2,
                        "Y2Rank" -> 1,
                        "Y2InverseRank" -> 1,
                        "X2Rank" -> 1,
                        "X2InverseRank" -> 2,
                        "PrimarySizeDimensionRank" -> 1,
                        "PrimarySizeDimensionInverseRank" -> 1,
                        "AspectRatioRank" -> 1,
                        "AspectRatioInverseRank" -> 1
                    |>
                },
                {
                    <|
                        "Type" -> "Group",
                        "Colors" -> {8},
                        "Height" -> 1,
                        "PrimarySizeDimension" -> "X",
                        "FilledArea" -> 2
                    |> -> <|
                        "Transform" -> <|
                            "Type" -> "AddComponents",
                            "Components" -> {
                                <|
                                    "Shapes" -> {
                                        <|"Name" -> "Line", "Angle" -> 0|>,
                                        <|"Name" -> "Rectangle", "Filled" -> True|>
                                    },
                                    "Width" -> Inactive[Plus][
                                        Daniel`ARC`ObjectValue["InputObject", "Width"],
                                        -2
                                    ],
                                    "Height" -> 1,
                                    "Color" -> 3,
                                    "Position" -> <|
                                        "RelativePosition" -> <|"Y" -> 0, "X" -> 1|>
                                    |>
                                |>
                            }
                        |>,
                        "Examples" -> {1, 3, 8},
                        "ExampleCount" -> 3,
                        "UseCount" -> 4,
                        "InputObjects" -> {
                            "5ab34cca-0410-42b1-8e75-38119ab16f81",
                            "e87e0cf5-c68a-4044-b865-26a7e6e2db62",
                            "d14e3cfc-fed6-440e-8946-0d8184dd2131",
                            "1c93b306-3d3f-4d1e-8a5b-d9508b4324e5"
                        }
                    |>,
                    <|
                        "Type" -> "Group",
                        "Colors" -> {8},
                        "Width" -> 1,
                        "PrimarySizeDimension" -> "Y",
                        "FilledArea" -> 2
                    |> -> <|
                        "Transform" -> <|
                            "Type" -> "AddComponents",
                            "Components" -> {
                                <|
                                    "Shapes" -> {
                                        <|"Name" -> "Line", "Angle" -> 90|>,
                                        <|"Name" -> "Rectangle", "Filled" -> True|>
                                    },
                                    "Width" -> 1,
                                    "Height" -> Inactive[Plus][
                                        Daniel`ARC`ObjectValue["InputObject", "Height"],
                                        -2
                                    ],
                                    "Color" -> 3,
                                    "Position" -> <|
                                        "RelativePosition" -> <|"Y" -> 1, "X" -> 0|>
                                    |>
                                |>
                            }
                        |>,
                        "Examples" -> {2, 4, 7, 8},
                        "ExampleCount" -> 4,
                        "UseCount" -> 5,
                        "InputObjects" -> {
                            "3c52b6e8-07c6-4387-b7da-396e66f76ceb",
                            "dfd855eb-028d-47e3-b585-969d35dbb4f8",
                            "88a3c237-8de9-486d-bdb0-1429c6595811",
                            "30f185e5-aa16-457a-a320-742c7adfba2a",
                            "fe5e4183-1c0e-4cd7-9f65-51409e256e4f"
                        }
                    |>,
                    <|"PrimarySizeDimension" -> "None"|> -> <|
                        "Same" -> True,
                        "Examples" -> {5, 6, 7, 8},
                        "ExampleCount" -> 4,
                        "UseCount" -> 5,
                        "InputObjects" -> {
                            "b8322208-918a-4e96-a681-807e2a4b6496",
                            "66b730e6-4d0c-4df8-9acd-8e54a7eb0c27",
                            "dfdbc3f9-3cc6-4351-9353-7c6413a22365",
                            "89cd4a92-384b-45b8-8434-fec2623baa12",
                            "5754b3f4-0fd6-49ea-977b-ee89270e49ca"
                        }
                    |>
                },
                10,
                10
            ]
        ]
    ]
    ,
    {
        <|
            "Image" -> Daniel`ARC`ARCScene[{{8, -1, -1, -1, -1, -1, -1, 8}}],
            "Position" -> {4, 3}
        |>
    }
    ,
    TestID -> "ARCFormGroupsWhenApplyingRules-20220812-0PAYA9"
]

Test[
    Daniel`ARC`SimplifyObjects["ExtraKeys" -> {"Type"}][
        Daniel`ARC`ARCFormGroupsWhenApplyingRules[
            {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{1}}],
                    "PixelPositions" -> {{1, 1}},
                    "Shape" -> <|"Name" -> "Pixel"|>,
                    "Colors" -> {1},
                    "Color" -> 1,
                    "Position" -> {1, 1},
                    "Y" -> 1,
                    "X" -> 1,
                    "Width" -> 1,
                    "Height" -> 1
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{1}}],
                    "PixelPositions" -> {{3, 3}},
                    "Shape" -> <|"Name" -> "Pixel"|>,
                    "Colors" -> {1},
                    "Color" -> 1,
                    "Position" -> {3, 3},
                    "Y" -> 3,
                    "X" -> 3,
                    "Width" -> 1,
                    "Height" -> 1
                |>
            },
            {
                <|
                    "Type" -> "Group",
                    "Components" -> {
                        Repeated[
                            <|"Shape" -> <|"Name" -> "Pixel"|>, "Image" -> "Same"|>,
                            {2}
                        ]
                    }
                |> -> <|
                    "Color" -> 2
                |>
            },
            10,
            10
        ]
    ]
    ,
    {
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1, -1, -1}, {-1, -1, -1}, {-1, -1, 1}}],
            "Position" -> {1, 1},
            "Type" -> "Group"
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "PixelPositions" -> {{1, 1}},
            "Shape" -> <|"Name" -> "Pixel"|>,
            "Colors" -> {1},
            "Color" -> 1,
            "Position" -> {1, 1},
            "Y" -> 1,
            "X" -> 1,
            "Width" -> 1,
            "Height" -> 1
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "PixelPositions" -> {{3, 3}},
            "Shape" -> <|"Name" -> "Pixel"|>,
            "Colors" -> {1},
            "Color" -> 1,
            "Position" -> {3, 3},
            "Y" -> 3,
            "X" -> 3,
            "Width" -> 1,
            "Height" -> 1
        |>
    }
    ,
    TestID -> "ARCFormGroupsWhenApplyingRules-20220827-Z84ACQ"
]

Test[
    Daniel`ARC`SimplifyObjects["ExtraKeys" -> {"Type"}][
        Daniel`ARC`ARCFormGroupsWhenApplyingRules[
            {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{1}}],
                    "PixelPositions" -> {{1, 1}},
                    "Shape" -> <|"Name" -> "Pixel"|>,
                    "Colors" -> {1},
                    "Color" -> 1,
                    "Position" -> {1, 1},
                    "Y" -> 1,
                    "X" -> 1,
                    "Width" -> 1,
                    "Height" -> 1
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{2}}],
                    "PixelPositions" -> {{3, 3}},
                    "Shape" -> <|"Name" -> "Pixel"|>,
                    "Colors" -> {2},
                    "Color" -> 2,
                    "Position" -> {3, 3},
                    "Y" -> 3,
                    "X" -> 3,
                    "Width" -> 1,
                    "Height" -> 1
                |>
            },
            {
                <|
                    "Type" -> "Group",
                    "Components" -> {
                        Repeated[
                            <|"Shape" -> <|"Name" -> "Pixel"|>, "Image" -> "Same"|>,
                            {2}
                        ]
                    }
                |> -> <|
                    "Color" -> 2
                |>
            },
            10,
            10
        ]
    ]
    ,
    {
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "PixelPositions" -> {{1, 1}},
            "Shape" -> <|"Name" -> "Pixel"|>,
            "Colors" -> {1},
            "Color" -> 1,
            "Position" -> {1, 1},
            "Y" -> 1,
            "X" -> 1,
            "Width" -> 1,
            "Height" -> 1
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{2}}],
            "PixelPositions" -> {{3, 3}},
            "Shape" -> <|"Name" -> "Pixel"|>,
            "Colors" -> {2},
            "Color" -> 2,
            "Position" -> {3, 3},
            "Y" -> 3,
            "X" -> 3,
            "Width" -> 1,
            "Height" -> 1
        |>
    }
    ,
    TestID -> "ARCFormGroupsWhenApplyingRules-20220827-8VG4ZO"
]