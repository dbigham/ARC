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
                    "Image" -> Daniel`ARC`ARCScene[{{1, -1}, {-1, 1}}],
                    "PixelPositions" -> {{1, 1}, {2, 2}},
                    "Position" -> {1, 1},
                    "Components" -> {
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{1}}],
                            "PixelPositions" -> {{1, 1}},
                            "Position" -> {1, 1}
                        |>,
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{1}}],
                            "PixelPositions" -> {{2, 2}},
                            "Position" -> {2, 2}
                        |>
                    }
                |>,
                10,
                10
            ],
            {5, 5},
            10,
            10
        ]
    ]
    ,
    <|
        "Image" -> Daniel`ARC`ARCScene[{{1, -1}, {-1, 1}}],
        "PixelPositions" -> {{5, 5}, {6, 6}},
        "Position" -> {5, 5},
        "Components" -> {
            <|
                "Image" -> Daniel`ARC`ARCScene[{{1}}],
                "PixelPositions" -> {{5, 5}},
                "Position" -> {5, 5},
                "Y" -> 5,
                "X" -> 5,
                "YInverse" -> 6,
                "XInverse" -> 6,
                "Y2" -> 5,
                "X2" -> 5,
                "Y2Inverse" -> 6,
                "X2Inverse" -> 6,
                "ZOrder" -> 0,
                "Width" -> 1,
                "Height" -> 1,
                "Length" -> 1,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 1,
                "FilledArea" -> 1,
                "FilledProportion" -> 1.,
                "VerticalLineSymmetry" -> False,
                "HorizontalLineSymmetry" -> False,
                "VerticalAndHorizontalLineSymmetry" -> False
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{1}}],
                "PixelPositions" -> {{6, 6}},
                "Position" -> {6, 6},
                "Y" -> 6,
                "X" -> 6,
                "YInverse" -> 5,
                "XInverse" -> 5,
                "Y2" -> 6,
                "X2" -> 6,
                "Y2Inverse" -> 5,
                "X2Inverse" -> 5,
                "ZOrder" -> 0,
                "Width" -> 1,
                "Height" -> 1,
                "Length" -> 1,
                "PrimarySizeDimension" -> "None",
                "AspectRatio" -> 1,
                "Area" -> 1,
                "FilledArea" -> 1,
                "FilledProportion" -> 1.,
                "VerticalLineSymmetry" -> False,
                "HorizontalLineSymmetry" -> False,
                "VerticalAndHorizontalLineSymmetry" -> False
            |>
        },
        "Y" -> 5,
        "X" -> 5,
        "YInverse" -> 6,
        "XInverse" -> 6,
        "Y2" -> 6,
        "X2" -> 6,
        "Y2Inverse" -> 5,
        "X2Inverse" -> 5,
        "ZOrder" -> 0,
        "Width" -> 2,
        "Height" -> 2,
        "Length" -> 2,
        "PrimarySizeDimension" -> "None",
        "AspectRatio" -> 1,
        "Area" -> 4,
        "FilledArea" -> 2,
        "FilledProportion" -> 0.5,
        "VerticalLineSymmetry" -> False,
        "HorizontalLineSymmetry" -> False,
        "VerticalAndHorizontalLineSymmetry" -> False
    |>
    ,
    TestID -> "ARCRepositionObject-20220725-ZLXXQD"
]