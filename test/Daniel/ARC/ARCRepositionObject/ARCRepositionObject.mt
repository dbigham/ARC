(*
    Tests for: Daniel`ARC`ARCRepositionObject
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCRepositionObject]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCRepositionObject[
            Daniel`ARC`ARCInferObjectProperties[
                <|
                    "Image" -> {{1, 0}, {0, 1}},
                    "PixelPositions" -> {{1, 1}, {2, 2}},
                    "Position" -> {1, 1},
                    "Components" -> {
                        <|
                            "Image" -> {{1}},
                            "PixelPositions" -> {{1, 1}},
                            "Position" -> {1, 1}
                        |>,
                        <|
                            "Image" -> {{1}},
                            "PixelPositions" -> {{2, 2}},
                            "Position" -> {2, 2}
                        |>
                    }
                |>,
                10,
                10
            ],
            {9, 9},
            10,
            10
        ]
    ]
    ,
    <|
        "Image" -> {{1, 0}, {0, 1}},
        "PixelPositions" -> {{9, 9}, {10, 10}},
        "Position" -> {9, 9},
        "Components" -> {
            <|
                "Image" -> {{1}},
                "PixelPositions" -> {{9, 9}},
                "Position" -> {9, 9},
                "Y" -> 9,
                "X" -> 9,
                "YInverse" -> 2,
                "XInverse" -> 2,
                "Y2" -> 9,
                "X2" -> 9,
                "Y2Inverse" -> 2,
                "X2Inverse" -> 2,
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
                "Image" -> {{1}},
                "PixelPositions" -> {{10, 10}},
                "Position" -> {10, 10},
                "Y" -> 10,
                "X" -> 10,
                "YInverse" -> 1,
                "XInverse" -> 1,
                "Y2" -> 10,
                "X2" -> 10,
                "Y2Inverse" -> 1,
                "X2Inverse" -> 1,
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
        "Y" -> 9,
        "X" -> 9,
        "YInverse" -> 2,
        "XInverse" -> 2,
        "Y2" -> 10,
        "X2" -> 10,
        "Y2Inverse" -> 1,
        "X2Inverse" -> 1,
        "Width" -> 2,
        "Height" -> 2,
        "Length" -> 2,
        "PrimarySizeDimension" -> "None",
        "AspectRatio" -> 1,
        "Area" -> 4,
        "FilledArea" -> 2,
        "FilledProportion" -> 0.5
    |>
    ,
    TestID -> "ARCRepositionObject-20220725-ZLXXQD"
]