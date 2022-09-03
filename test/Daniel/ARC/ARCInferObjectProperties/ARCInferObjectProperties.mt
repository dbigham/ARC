(*
    Tests for: Daniel`ARC`ARCInferObjectProperties
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCInferObjectProperties]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCInferObjectProperties[
            <|
                "Image" -> Daniel`ARC`ARCScene[{{1, 0}, {0, 1}}],
                "Position" -> {1, 1},
                "Colors" -> {1}
            |>,
            10,
            10
        ]
    ]
    ,
    <|
        "Image" -> Daniel`ARC`ARCScene[{{1, 0}, {0, 1}}],
        "Position" -> {1, 1},
        "Colors" -> {1},
        "Color" -> 1,
        "Y" -> 1,
        "X" -> 1,
        "YInverse" -> 10,
        "XInverse" -> 10,
        "Y2" -> 2,
        "X2" -> 2,
        "Y2Inverse" -> 9,
        "X2Inverse" -> 9,
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
        "VerticalAndHorizontalLineSymmetry" -> False,
        "HollowCount" -> 0
    |>
    ,
    TestID -> "ARCInferObjectProperties-20220725-4TUEPU"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCInferObjectProperties[
            <|
                "Image" -> Daniel`ARC`ARCScene[{{1, 1}, {1, 1}}],
                "Position" -> {1, 1},
                "Colors" -> {1}
            |>,
            10,
            10
        ]
    ]
    ,
    <|
        "Image" -> Daniel`ARC`ARCScene[{{1, 1}, {1, 1}}],
        "Position" -> {1, 1},
        "Colors" -> {1},
        "Color" -> 1,
        "Y" -> 1,
        "X" -> 1,
        "YInverse" -> 10,
        "XInverse" -> 10,
        "Y2" -> 2,
        "X2" -> 2,
        "Y2Inverse" -> 9,
        "X2Inverse" -> 9,
        "ZOrder" -> 0,
        "Width" -> 2,
        "Height" -> 2,
        "Length" -> 2,
        "PrimarySizeDimension" -> "None",
        "AspectRatio" -> 1,
        "Area" -> 4,
        "FilledArea" -> 2,
        "FilledProportion" -> 0.5,
        "VerticalLineSymmetry" -> True,
        "HorizontalLineSymmetry" -> True,
        "VerticalAndHorizontalLineSymmetry" -> True,
        "HollowCount" -> 0
    |>
    ,
    TestID -> "ARCInferObjectProperties-20220828-MJXIOU"
]

Test[
    Daniel`ARC`ARCInferObjectProperties[
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1, 1, 1}, {1, -1, 1}, {1, 1, 1}}],
            "Position" -> {1, 1},
            "Colors" -> {1}
        |>,
        10,
        10
    ]["HollowCount"]
    ,
    1
    ,
    TestID -> "ARCInferObjectProperties-20220903-BJ1CT1"
]