(*
    Tests for: Daniel`ARC`ARCClassifyRectange
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCClassifyRectange]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyRectange[{{1, 1}, {1, 1}}]
    ]
    ,
    <|"Name" -> "Rectangle", "Filled" -> True|>
    ,
    TestID -> "ARCClassifyRectange-20220717-6DF3UG"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        ToString[Daniel`ARC`ARCClassifyRectange[{{1, 1}, {1, -1}}]]
    ]
    ,
    "Nothing"
    ,
    TestID -> "ARCClassifyRectange-20220717-0DGZDW"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        ToString[Daniel`ARC`ARCClassifyRectange[{}]]
    ]
    ,
    "Nothing"
    ,
    TestID -> "ARCClassifyRectange-20220717-VW7W9R"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyRectange[{{2, 2}, {2, 2}}]
    ]
    ,
    <|"Name" -> "Rectangle", "Filled" -> True|>
    ,
    TestID -> "ARCClassifyRectange-20220718-WVXGAP"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        ToString[Daniel`ARC`ARCClassifyRectange[{{2, 1}, {2, 2}}]]
    ]
    ,
    "Nothing"
    ,
    TestID -> "ARCClassifyRectange-20220718-5DUZW9"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyRectange[{{1, 1, 1}, {1, -1, 1}, {1, 1, 1}}]
    ]
    ,
    <|"Name" -> "Rectangle", "Filled" -> False|>
    ,
    TestID -> "ARCClassifyRectange-20220806-IQKDN7"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyRectange[
            {{1, 1, 1, 1}, {1, -1, -1, 1}, {1, -1, -1, 1}, {1, 1, 1, 1}}
        ]
    ]
    ,
    <|"Name" -> "Rectangle", "Filled" -> False|>
    ,
    TestID -> "ARCClassifyRectange-20220806-EE1ELV"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        ToString[
            Daniel`ARC`ARCClassifyRectange[
                {{1, 1, 1, 1}, {1, -1, -1, 1}, {1, -1, -1, 1}, {2, 2, 2, 2}}
            ]
        ]
    ]
    ,
    "Nothing"
    ,
    TestID -> "ARCClassifyRectange-20220806-FY5BH4"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyRectange[
            {
                {1, 1, 1, 1, 1},
                {1, -1, -1, -1, 1},
                {1, -1, 1, -1, 1},
                {1, -1, -1, -1, 1},
                {1, 1, 1, 1, 1}
            }
        ]
    ]
    ,
    <|"Name" -> "Rectangle"|>
    ,
    TestID -> "ARCClassifyRectange-20220810-8OCRG3"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCClassifyRectange[{{1, 1, 1}, {1, 2, 1}, {1, 1, 1}}]
    ]
    ,
    <|
        "Name" -> "Rectangle",
        "Filled" -> True,
        "Interior" -> <|"Color" -> 2|>,
        "Border" -> <|"Color" -> 1|>
    |>
    ,
    TestID -> "ARCClassifyRectange-20220904-NPUUN9"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        ToString[Daniel`ARC`ARCClassifyRectange[{{1, 1}}]]
    ]
    ,
    "<|Name -> Rectangle, Filled -> True|>"
    ,
    TestID -> "ARCClassifyRectange-20220904-XQGS7F"
]