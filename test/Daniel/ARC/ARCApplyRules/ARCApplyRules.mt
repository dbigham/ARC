(*
    Tests for: Daniel`ARC`ARCApplyRules
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCApplyRules]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            With[
                {trainingData = Daniel`ARC`ARCParseFile[file = "0ca9ddb6"]["Train"]},
                Daniel`ARC`ARCApplyRules[
                    trainingData[[2, "Input"]],
                    Utility`ReturnIfFailure[Daniel`ARC`ARCFindRules[trainingData]]
                ]
            ]
        ]
    ]
    ,
    Daniel`ARC`ARCScene[
        {
            {0, 0, 0, 8, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 4, 0, 4, 0},
            {0, 0, 7, 0, 0, 0, 2, 0, 0},
            {0, 7, 1, 7, 0, 4, 0, 4, 0},
            {0, 0, 7, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 7, 0, 0},
            {4, 0, 4, 0, 0, 7, 1, 7, 0},
            {0, 2, 0, 0, 0, 0, 7, 0, 0},
            {4, 0, 4, 0, 0, 0, 0, 0, 0}
        }
    ]
    ,
    TestID -> "ARCApplyRules-20220722-MRMVB2"
]

Test[
    With[
        {trainingData = Daniel`ARC`ARCParseFile[file = "1caeab9d"]["Train"]},
        Daniel`ARC`ARCApplyRules[
            trainingData[[2, "Input"]],
            Utility`ReturnIfFailure[Daniel`ARC`ARCFindRules[trainingData]]
        ]
    ]
    ,
    Daniel`ARC`ARCScene[
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
    ,
    TestID -> "ARCApplyRules-20220724-QRNREW"
]

Test[
    With[
        {trainingData = Daniel`ARC`ARCParseFile[file = "05f2a901"]["Train"]},
        Daniel`ARC`ARCApplyRules[
            trainingData[[2, "Input"]],
            Utility`ReturnIfFailure[Daniel`ARC`ARCFindRules[trainingData]]
        ]
    ]
    ,
    Daniel`ARC`ARCScene[
        {
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 2, 2, 0, 0, 0, 0},
            {0, 0, 0, 0, 2, 2, 0, 0, 0, 0},
            {0, 0, 0, 2, 2, 2, 0, 0, 0, 0},
            {0, 0, 0, 0, 2, 2, 8, 8, 0, 0},
            {0, 0, 0, 0, 0, 0, 8, 8, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
        }
    ]
    ,
    TestID -> "ARCApplyRules-20220804-YG0J5Y"
]

Test[
    With[
        {trainingData = Daniel`ARC`ARCParseFile[file = "08ed6ac7"]["Train"]},
        Daniel`ARC`ARCApplyRules[
            trainingData[[1, "Input"]],
            Utility`ReturnIfFailure[Daniel`ARC`ARCFindRules[trainingData]]
        ]
    ]
    ,
    Daniel`ARC`ARCScene[
        {
            {0, 0, 0, 0, 0, 1, 0, 0, 0},
            {0, 2, 0, 0, 0, 1, 0, 0, 0},
            {0, 2, 0, 0, 0, 1, 0, 0, 0},
            {0, 2, 0, 3, 0, 1, 0, 0, 0},
            {0, 2, 0, 3, 0, 1, 0, 0, 0},
            {0, 2, 0, 3, 0, 1, 0, 0, 0},
            {0, 2, 0, 3, 0, 1, 0, 4, 0},
            {0, 2, 0, 3, 0, 1, 0, 4, 0},
            {0, 2, 0, 3, 0, 1, 0, 4, 0}
        }
    ]
    ,
    TestID -> "ARCApplyRules-20220804-WHM3MW"
]

Test[
    With[
        {parsedFile = Daniel`ARC`ARCParseFile[file = "ihiz27k2n"]},
        Daniel`ARC`ARCApplyRules[
            parsedFile["Test", 1, "Input"],
            Utility`ReturnIfFailure[Daniel`ARC`ARCFindRules[parsedFile["Train"]]]
        ]
    ]
    ,
    Daniel`ARC`ARCScene[
        {
            {5, 5, 5, 5, 5, 5, 5, 5, 5, 5},
            {5, 1, 5, 1, 1, 1, 1, 5, 1, 5},
            {5, 1, 5, 1, 1, 1, 1, 5, 1, 5},
            {5, 1, 5, 5, 5, 5, 5, 5, 1, 5},
            {5, 1, 5, 1, 1, 1, 1, 5, 1, 5},
            {5, 1, 5, 1, 1, 1, 1, 5, 1, 5},
            {5, 5, 5, 5, 5, 5, 5, 5, 5, 5},
            {5, 3, 5, 3, 3, 3, 3, 5, 3, 5},
            {5, 3, 5, 3, 3, 3, 3, 5, 3, 5},
            {5, 5, 5, 5, 5, 5, 5, 5, 5, 5}
        }
    ]
    ,
    TestID -> "ARCApplyRules-20220806-7U6ZB4"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            With[
                {parsedFile = Daniel`ARC`ARCParseFile[file = "25d8a9c8"]},
                Daniel`ARC`ARCApplyRules[
                    parsedFile["Train", 1, "Input"],
                    Utility`ReturnIfFailure[Daniel`ARC`ARCFindRules[parsedFile["Train"]]]
                ]
            ]
        ]
    ]
    ,
    Daniel`ARC`ARCScene[{{5, 5, 5}, {0, 0, 0}, {0, 0, 0}}]
    ,
    TestID -> "ARCApplyRules-20220819-AU0PQC"
]

Test[
    With[
        {parsedFile = Daniel`ARC`ARCParseFile[file = "a61ba2ce"]},
        Daniel`ARC`ARCApplyRules[
            parsedFile["Train", 1, "Input"],
            Utility`ReturnIfFailure[Daniel`ARC`ARCFindRules[parsedFile["Train"]]]
        ]
    ]
    ,
    Daniel`ARC`ARCScene[{{8, 8, 2, 2}, {8, 0, 0, 2}, {3, 0, 0, 1}, {3, 3, 1, 1}}]
    ,
    TestID -> "ARCApplyRules-20220906-3546LC"
]