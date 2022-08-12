(*
    Tests for: Daniel`ARC`ARCReferenceableObjectProperties
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCReferenceableObjectProperties]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Module[
                {parsedScenes},
                parsedScenes = Utility`ReturnIfFailure[
                    Daniel`ARC`ARCParseExamples[file = "1caeab9d"][[All, "Input"]]
                ];
                Daniel`ARC`ARCReferenceableObjectProperties[
                    Keys[Daniel`ARC`ARCMakeObjectsReferenceable[parsedScenes]],
                    parsedScenes
                ]
            ]
        ]
    ]
    ,
    <|
        Daniel`ARC`Object[<|"Colors" -> {1}|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>}
        |>,
        Daniel`ARC`Object[<|"Colors" -> {2}|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>}
        |>,
        Daniel`ARC`Object[<|"Colors" -> {4}|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>}
        |>,
        Daniel`ARC`Object[<|"Y" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "Y2" -> 4
        |>,
        Daniel`ARC`Object[<|"X" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XRank" -> 3,
            "XInverseRank" -> 1,
            "X2Rank" -> 3,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"Y2" -> 4|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "Y" -> 3
        |>,
        Daniel`ARC`Object[<|"YRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YInverseRank" -> 3,
            "Y2Rank" -> 1,
            "Y2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"YRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YInverseRank" -> 2,
            "Y2Rank" -> 2,
            "Y2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"YRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YInverseRank" -> 1,
            "Y2Rank" -> 3,
            "Y2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YRank" -> 3,
            "Y2Rank" -> 3,
            "Y2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YRank" -> 2,
            "Y2Rank" -> 2,
            "Y2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YRank" -> 1,
            "Y2Rank" -> 1,
            "Y2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"XRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XInverseRank" -> 3,
            "X2Rank" -> 1,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"XRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XInverseRank" -> 2,
            "X2Rank" -> 2,
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"XRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "X" -> 2,
            "XInverseRank" -> 1,
            "X2Rank" -> 3,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "X" -> 2,
            "XRank" -> 3,
            "X2Rank" -> 3,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XRank" -> 2,
            "X2Rank" -> 2,
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XRank" -> 1,
            "X2Rank" -> 1,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"Y2Rank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YRank" -> 1,
            "YInverseRank" -> 3,
            "Y2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"Y2Rank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YRank" -> 2,
            "YInverseRank" -> 2,
            "Y2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"Y2Rank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YRank" -> 3,
            "YInverseRank" -> 1,
            "Y2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"Y2InverseRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YRank" -> 3,
            "YInverseRank" -> 1,
            "Y2Rank" -> 3
        |>,
        Daniel`ARC`Object[<|"Y2InverseRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YRank" -> 2,
            "YInverseRank" -> 2,
            "Y2Rank" -> 2
        |>,
        Daniel`ARC`Object[<|"Y2InverseRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "YRank" -> 1,
            "YInverseRank" -> 3,
            "Y2Rank" -> 1
        |>,
        Daniel`ARC`Object[<|"X2Rank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XRank" -> 1,
            "XInverseRank" -> 3,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"X2Rank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XRank" -> 2,
            "XInverseRank" -> 2,
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"X2Rank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "X" -> 2,
            "XRank" -> 3,
            "XInverseRank" -> 1,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "X" -> 2,
            "XRank" -> 3,
            "XInverseRank" -> 1,
            "X2Rank" -> 3
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XRank" -> 2,
            "XInverseRank" -> 2,
            "X2Rank" -> 2
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Rectangle", "Filled" -> True|>},
            "XRank" -> 1,
            "XInverseRank" -> 3,
            "X2Rank" -> 1
        |>
    |>
    ,
    TestID -> "ARCReferenceableObjectProperties-20220723-VLXGQE"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Module[
                {parsedScenes},
                parsedScenes = Utility`ReturnIfFailure[
                    Daniel`ARC`ARCParseExamples[file = "ce9e57f2"][[All, "Input"]]
                ];
                Daniel`ARC`ARCReferenceableObjectProperties[
                    Keys[Daniel`ARC`ARCMakeObjectsReferenceable[parsedScenes]],
                    parsedScenes
                ]
            ]
        ]
    ]
    ,
    <|
        Daniel`ARC`Object[<|"Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}]|>] -> <|
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"Height" -> 3|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"Length" -> 3|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"Y" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightRank" -> 1,
            "HeightInverseRank" -> 4,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 4,
            "YRank" -> 4,
            "YInverseRank" -> 1,
            "AspectRatioRank" -> 4,
            "AspectRatioInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"Y" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightRank" -> 2,
            "HeightInverseRank" -> 3,
            "LengthRank" -> 2,
            "LengthInverseRank" -> 3,
            "YRank" -> 3,
            "YInverseRank" -> 2,
            "AspectRatioRank" -> 3,
            "AspectRatioInverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"X" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X2" -> 2,
            "XRank" -> 4,
            "XInverseRank" -> 1,
            "X2Rank" -> 4,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"X" -> 4|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X2" -> 4,
            "XRank" -> 3,
            "XInverseRank" -> 2,
            "X2Rank" -> 3,
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"X" -> 6|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X2" -> 6,
            "XRank" -> 2,
            "XInverseRank" -> 3,
            "X2Rank" -> 2,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"X" -> 8|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X2" -> 8,
            "XRank" -> 1,
            "XInverseRank" -> 4,
            "X2Rank" -> 1,
            "X2InverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"X2" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 2,
            "XRank" -> 4,
            "XInverseRank" -> 1,
            "X2Rank" -> 4,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"X2" -> 4|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 4,
            "XRank" -> 3,
            "XInverseRank" -> 2,
            "X2Rank" -> 3,
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"X2" -> 6|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 6,
            "XRank" -> 2,
            "XInverseRank" -> 3,
            "X2Rank" -> 2,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"X2" -> 8|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 8,
            "XRank" -> 1,
            "XInverseRank" -> 4,
            "X2Rank" -> 1,
            "X2InverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"AspectRatio" -> 1/3|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"Area" -> 3|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"FilledArea" -> 3|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"HeightRank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 2,
            "HeightInverseRank" -> 4,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 4,
            "YRank" -> 4,
            "YInverseRank" -> 1,
            "AspectRatioRank" -> 4,
            "AspectRatioInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"HeightRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 3,
            "HeightInverseRank" -> 3,
            "LengthRank" -> 2,
            "LengthInverseRank" -> 3,
            "YRank" -> 3,
            "YInverseRank" -> 2,
            "AspectRatioRank" -> 3,
            "AspectRatioInverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"HeightRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightInverseRank" -> 2,
            "LengthRank" -> 3,
            "LengthInverseRank" -> 2,
            "YRank" -> 2,
            "YInverseRank" -> 3,
            "AspectRatioRank" -> 2,
            "AspectRatioInverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"HeightRank" -> 4|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"HeightInverseRank" -> 1|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"HeightInverseRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightRank" -> 3,
            "LengthRank" -> 3,
            "LengthInverseRank" -> 2,
            "YRank" -> 2,
            "YInverseRank" -> 3,
            "AspectRatioRank" -> 2,
            "AspectRatioInverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"HeightInverseRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 3,
            "HeightRank" -> 2,
            "LengthRank" -> 2,
            "LengthInverseRank" -> 3,
            "YRank" -> 3,
            "YInverseRank" -> 2,
            "AspectRatioRank" -> 3,
            "AspectRatioInverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"HeightInverseRank" -> 4|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 2,
            "HeightRank" -> 1,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 4,
            "YRank" -> 4,
            "YInverseRank" -> 1,
            "AspectRatioRank" -> 4,
            "AspectRatioInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"LengthRank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 2,
            "HeightRank" -> 1,
            "HeightInverseRank" -> 4,
            "LengthInverseRank" -> 4,
            "YRank" -> 4,
            "YInverseRank" -> 1,
            "AspectRatioRank" -> 4,
            "AspectRatioInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"LengthRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 3,
            "HeightRank" -> 2,
            "HeightInverseRank" -> 3,
            "LengthInverseRank" -> 3,
            "YRank" -> 3,
            "YInverseRank" -> 2,
            "AspectRatioRank" -> 3,
            "AspectRatioInverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"LengthRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightRank" -> 3,
            "HeightInverseRank" -> 2,
            "LengthInverseRank" -> 2,
            "YRank" -> 2,
            "YInverseRank" -> 3,
            "AspectRatioRank" -> 2,
            "AspectRatioInverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"LengthRank" -> 4|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"LengthInverseRank" -> 1|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"LengthInverseRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightRank" -> 3,
            "HeightInverseRank" -> 2,
            "LengthRank" -> 3,
            "YRank" -> 2,
            "YInverseRank" -> 3,
            "AspectRatioRank" -> 2,
            "AspectRatioInverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"LengthInverseRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 3,
            "HeightRank" -> 2,
            "HeightInverseRank" -> 3,
            "LengthRank" -> 2,
            "YRank" -> 3,
            "YInverseRank" -> 2,
            "AspectRatioRank" -> 3,
            "AspectRatioInverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"LengthInverseRank" -> 4|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 2,
            "HeightRank" -> 1,
            "HeightInverseRank" -> 4,
            "LengthRank" -> 1,
            "YRank" -> 4,
            "YInverseRank" -> 1,
            "AspectRatioRank" -> 4,
            "AspectRatioInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"YRank" -> 1|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"YRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightRank" -> 3,
            "HeightInverseRank" -> 2,
            "LengthRank" -> 3,
            "LengthInverseRank" -> 2,
            "YInverseRank" -> 3,
            "AspectRatioRank" -> 2,
            "AspectRatioInverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"YRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 3,
            "HeightRank" -> 2,
            "HeightInverseRank" -> 3,
            "LengthRank" -> 2,
            "LengthInverseRank" -> 3,
            "YInverseRank" -> 2,
            "AspectRatioRank" -> 3,
            "AspectRatioInverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"YRank" -> 4|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 2,
            "HeightRank" -> 1,
            "HeightInverseRank" -> 4,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 4,
            "YInverseRank" -> 1,
            "AspectRatioRank" -> 4,
            "AspectRatioInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 2,
            "HeightRank" -> 1,
            "HeightInverseRank" -> 4,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 4,
            "YRank" -> 4,
            "AspectRatioRank" -> 4,
            "AspectRatioInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 3,
            "HeightRank" -> 2,
            "HeightInverseRank" -> 3,
            "LengthRank" -> 2,
            "LengthInverseRank" -> 3,
            "YRank" -> 3,
            "AspectRatioRank" -> 3,
            "AspectRatioInverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightRank" -> 3,
            "HeightInverseRank" -> 2,
            "LengthRank" -> 3,
            "LengthInverseRank" -> 2,
            "YRank" -> 2,
            "AspectRatioRank" -> 2,
            "AspectRatioInverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 4|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "AspectRatioRank" -> 1,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"XRank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 8,
            "X2" -> 8,
            "XInverseRank" -> 4,
            "X2Rank" -> 1,
            "X2InverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"XRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 6,
            "X2" -> 6,
            "XInverseRank" -> 3,
            "X2Rank" -> 2,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"XRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 4,
            "X2" -> 4,
            "XInverseRank" -> 2,
            "X2Rank" -> 3,
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"XRank" -> 4|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 2,
            "X2" -> 2,
            "XInverseRank" -> 1,
            "X2Rank" -> 4,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 2,
            "X2" -> 2,
            "XRank" -> 4,
            "X2Rank" -> 4,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 4,
            "X2" -> 4,
            "XRank" -> 3,
            "X2Rank" -> 3,
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 6,
            "X2" -> 6,
            "XRank" -> 2,
            "X2Rank" -> 2,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 4|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 8,
            "X2" -> 8,
            "XRank" -> 1,
            "X2Rank" -> 1,
            "X2InverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"X2Rank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 8,
            "X2" -> 8,
            "XRank" -> 1,
            "XInverseRank" -> 4,
            "X2InverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"X2Rank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 6,
            "X2" -> 6,
            "XRank" -> 2,
            "XInverseRank" -> 3,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"X2Rank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 4,
            "X2" -> 4,
            "XRank" -> 3,
            "XInverseRank" -> 2,
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"X2Rank" -> 4|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 2,
            "X2" -> 2,
            "XRank" -> 4,
            "XInverseRank" -> 1,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 2,
            "X2" -> 2,
            "XRank" -> 4,
            "XInverseRank" -> 1,
            "X2Rank" -> 4
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 4,
            "X2" -> 4,
            "XRank" -> 3,
            "XInverseRank" -> 2,
            "X2Rank" -> 3
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 6,
            "X2" -> 6,
            "XRank" -> 2,
            "XInverseRank" -> 3,
            "X2Rank" -> 2
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 4|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "X" -> 8,
            "X2" -> 8,
            "XRank" -> 1,
            "XInverseRank" -> 4,
            "X2Rank" -> 1
        |>,
        Daniel`ARC`Object[<|"AspectRatioRank" -> 1|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioInverseRank" -> 4
        |>,
        Daniel`ARC`Object[<|"AspectRatioRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightRank" -> 3,
            "HeightInverseRank" -> 2,
            "LengthRank" -> 3,
            "LengthInverseRank" -> 2,
            "YRank" -> 2,
            "YInverseRank" -> 3,
            "AspectRatioInverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"AspectRatioRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 3,
            "HeightRank" -> 2,
            "HeightInverseRank" -> 3,
            "LengthRank" -> 2,
            "LengthInverseRank" -> 3,
            "YRank" -> 3,
            "YInverseRank" -> 2,
            "AspectRatioInverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"AspectRatioRank" -> 4|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 2,
            "HeightRank" -> 1,
            "HeightInverseRank" -> 4,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 4,
            "YRank" -> 4,
            "YInverseRank" -> 1,
            "AspectRatioInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"AspectRatioInverseRank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 2,
            "HeightRank" -> 1,
            "HeightInverseRank" -> 4,
            "LengthRank" -> 1,
            "LengthInverseRank" -> 4,
            "YRank" -> 4,
            "YInverseRank" -> 1,
            "AspectRatioRank" -> 4
        |>,
        Daniel`ARC`Object[<|"AspectRatioInverseRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Y" -> 3,
            "HeightRank" -> 2,
            "HeightInverseRank" -> 3,
            "LengthRank" -> 2,
            "LengthInverseRank" -> 3,
            "YRank" -> 3,
            "YInverseRank" -> 2,
            "AspectRatioRank" -> 3
        |>,
        Daniel`ARC`Object[<|"AspectRatioInverseRank" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "HeightRank" -> 3,
            "HeightInverseRank" -> 2,
            "LengthRank" -> 3,
            "LengthInverseRank" -> 2,
            "YRank" -> 2,
            "YInverseRank" -> 3,
            "AspectRatioRank" -> 2
        |>,
        Daniel`ARC`Object[<|"AspectRatioInverseRank" -> 4|>] -> <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}}],
            "Shapes" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                |>,
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{10, 10, 10}}],
                    "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
                |>,
                <|"Image" -> Daniel`ARC`ARCScene[{{10}, {10}, {10}}]|>,
                <|"Name" -> "Line"|>,
                <|"Name" -> "Line", "Angle" -> 90|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle", "Filled" -> True|>
            },
            "Height" -> 3,
            "Length" -> 3,
            "AspectRatio" -> 1/3,
            "Area" -> 3,
            "FilledArea" -> 3,
            "HeightRank" -> 4,
            "HeightInverseRank" -> 1,
            "LengthRank" -> 4,
            "LengthInverseRank" -> 1,
            "YRank" -> 1,
            "YInverseRank" -> 4,
            "AspectRatioRank" -> 1
        |>
    |>
    ,
    TestID -> "ARCReferenceableObjectProperties-20220723-G8TUB6"
]