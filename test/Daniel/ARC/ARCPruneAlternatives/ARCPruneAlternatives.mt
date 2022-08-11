(*
    Tests for: Daniel`ARC`ARCPruneAlternatives
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCPruneAlternatives]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCPruneAlternatives[
            {
                <|"Name" -> "Square"|>,
                <|"Name" -> "Square"|>,
                <|"Name" -> "Square", "Filled" -> False|>,
                <|"Name" -> "Rectangle"|>,
                <|"Name" -> "Rectangle"|>
            },
            "Shapes"
        ]
    ]
    ,
    {<|"Name" -> "Rectangle"|>}
    ,
    TestID -> "ARCPruneAlternatives-20220810-9ZJP9S"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCPruneAlternatives[
            {
                <|"Name" -> "Square", "Filled" -> False|>,
                <|"Name" -> "Square", "Filled" -> False, "AnotherKey" -> 1|>,
                <|
                    "Name" -> "Square",
                    "Filled" -> False,
                    "AnotherKey" -> 1,
                    "AndAnotherKey" -> 2
                |>
            },
            "Shapes"
        ]
    ]
    ,
    {<|"Name" -> "Square", "Filled" -> False|>}
    ,
    TestID -> "ARCPruneAlternatives-20220810-A64CDO"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCPruneAlternatives[{1, 2, 3}, "Width"]
    ]
    ,
    {1, 2, 3}
    ,
    TestID -> "ARCPruneAlternatives-20220810-98Q7KE"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCPruneAlternatives[
            {<|"Name" -> "Square"|>, <|"Name" -> "Square"|>},
            "Shape"
        ]
    ]
    ,
    {<|"Name" -> "Square"|>}
    ,
    TestID -> "ARCPruneAlternatives-20220810-5ELWFK"
]

Test[
    Daniel`ARC`ARCPruneAlternatives[
        {
            <|"Name" -> "Square"|>,
            <|"Name" -> "Square"|>,
            <|"Name" -> "Square", "Filled" -> False|>,
            <|"Name" -> "Rectangle"|>,
            <|"Name" -> "Rectangle"|>
        },
        "Shapes",
        "Most" -> "Specific"
    ]
    ,
    {<|"Name" -> "Square", "Filled" -> False|>}
    ,
    TestID -> "ARCPruneAlternatives-20220810-CQD3GU"
]