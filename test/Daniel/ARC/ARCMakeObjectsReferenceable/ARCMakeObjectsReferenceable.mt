(*
    Tests for: Daniel`ARC`ARCMakeObjectsReferenceable
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCMakeObjectsReferenceable]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCMakeObjectsReferenceable[
                Daniel`ARC`ARCParseExamples[file = "1caeab9d"][[All, "Input"]]
            ]
        ]
    ]
    ,
    <|
        Daniel`ARC`Object[<|"Colors" -> {2}|>] -> <|"Shapes" -> {<|"Name" -> "Rectangle"|>}|>,
        Daniel`ARC`Object[<|"Colors" -> {1}|>] -> <|"Shapes" -> {<|"Name" -> "Rectangle"|>}|>,
        Daniel`ARC`Object[<|"Colors" -> {4}|>] -> <|"Shapes" -> {<|"Name" -> "Rectangle"|>}|>,
        Daniel`ARC`Object[<|"Y" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "Y2" -> 4
        |>,
        Daniel`ARC`Object[<|"X" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "XRank" -> 3,
            "XInverseRank" -> 1,
            "X2Rank" -> 3,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"Y2" -> 4|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "Y" -> 3
        |>,
        Daniel`ARC`Object[<|"YRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YInverseRank" -> 1,
            "Y2Rank" -> 3,
            "Y2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"YRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YInverseRank" -> 2,
            "Y2Rank" -> 2,
            "Y2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"YRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YInverseRank" -> 3,
            "Y2Rank" -> 1,
            "Y2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YRank" -> 3,
            "Y2Rank" -> 3,
            "Y2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YRank" -> 2,
            "Y2Rank" -> 2,
            "Y2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YRank" -> 1,
            "Y2Rank" -> 1,
            "Y2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"XRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "X" -> 2,
            "XInverseRank" -> 1,
            "X2Rank" -> 3,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"XRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "XInverseRank" -> 3,
            "X2Rank" -> 1,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"XRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "XInverseRank" -> 2,
            "X2Rank" -> 2,
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "X" -> 2,
            "XRank" -> 3,
            "X2Rank" -> 3,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "XRank" -> 1,
            "X2Rank" -> 1,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "XRank" -> 2,
            "X2Rank" -> 2,
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"Y2Rank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YRank" -> 3,
            "YInverseRank" -> 1,
            "Y2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"Y2Rank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YRank" -> 2,
            "YInverseRank" -> 2,
            "Y2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"Y2Rank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YRank" -> 1,
            "YInverseRank" -> 3,
            "Y2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"Y2InverseRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YRank" -> 3,
            "YInverseRank" -> 1,
            "Y2Rank" -> 3
        |>,
        Daniel`ARC`Object[<|"Y2InverseRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YRank" -> 2,
            "YInverseRank" -> 2,
            "Y2Rank" -> 2
        |>,
        Daniel`ARC`Object[<|"Y2InverseRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "YRank" -> 1,
            "YInverseRank" -> 3,
            "Y2Rank" -> 1
        |>,
        Daniel`ARC`Object[<|"X2Rank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "X" -> 2,
            "XRank" -> 3,
            "XInverseRank" -> 1,
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"X2Rank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "XRank" -> 1,
            "XInverseRank" -> 3,
            "X2InverseRank" -> 3
        |>,
        Daniel`ARC`Object[<|"X2Rank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "XRank" -> 2,
            "XInverseRank" -> 2,
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 1|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "X" -> 2,
            "XRank" -> 3,
            "XInverseRank" -> 1,
            "X2Rank" -> 3
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 3|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "XRank" -> 1,
            "XInverseRank" -> 3,
            "X2Rank" -> 1
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 2|>] -> <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>},
            "XRank" -> 2,
            "XInverseRank" -> 2,
            "X2Rank" -> 2
        |>
    |>
    ,
    TestID -> "ARCMakeObjectsReferenceable-20220723-84LXFB"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCMakeObjectsReferenceable[
                Daniel`ARC`ARCParseExamples[file = "0ca9ddb6"][[All, "Input"]]
            ]
        ]
    ]
    ,
    <|
        Daniel`ARC`Object[<|"X" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "X2" -> 3
        |>,
        Daniel`ARC`Object[<|"X2" -> 3|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "X" -> 3
        |>,
        Daniel`ARC`Object[<|"YRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "Y2Rank" -> 2
        |>,
        Daniel`ARC`Object[<|"YRank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "Y2Rank" -> 1
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "Y2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"YInverseRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "X" -> 7,
            "X2" -> 7,
            "XRank" -> 1,
            "Y2InverseRank" -> 2,
            "X2Rank" -> 1
        |>,
        Daniel`ARC`Object[<|"XRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "X2Rank" -> 2
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 1|>] -> <|
            "Colors" -> {2},
            "Image" -> Daniel`ARC`ARCScene[{{2}}],
            "Shapes" -> {
                <|"Image" -> Daniel`ARC`ARCScene[{{2}}]|>,
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "X2InverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"XInverseRank" -> 2|>] -> <|
            "Colors" -> {1},
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "Shapes" -> {
                <|"Image" -> Daniel`ARC`ARCScene[{{1}}]|>,
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "X2InverseRank" -> 2
        |>,
        Daniel`ARC`Object[<|"Y2Rank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "YRank" -> 2
        |>,
        Daniel`ARC`Object[<|"Y2Rank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "YRank" -> 1
        |>,
        Daniel`ARC`Object[<|"Y2InverseRank" -> 1|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "YInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"Y2InverseRank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "X" -> 7,
            "X2" -> 7,
            "YInverseRank" -> 2,
            "XRank" -> 1,
            "X2Rank" -> 1
        |>,
        Daniel`ARC`Object[<|"X2Rank" -> 2|>] -> <|
            "Shapes" -> {
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "XRank" -> 2
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 1|>] -> <|
            "Colors" -> {2},
            "Image" -> Daniel`ARC`ARCScene[{{2}}],
            "Shapes" -> {
                <|"Image" -> Daniel`ARC`ARCScene[{{2}}]|>,
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "XInverseRank" -> 1
        |>,
        Daniel`ARC`Object[<|"X2InverseRank" -> 2|>] -> <|
            "Colors" -> {1},
            "Image" -> Daniel`ARC`ARCScene[{{1}}],
            "Shapes" -> {
                <|"Image" -> Daniel`ARC`ARCScene[{{1}}]|>,
                <|"Name" -> "Pixel"|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Square"|>
            },
            "XInverseRank" -> 2
        |>
    |>
    ,
    TestID -> "ARCMakeObjectsReferenceable-20220723-V2H68K"
]