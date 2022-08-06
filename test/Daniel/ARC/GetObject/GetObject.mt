(*
    Tests for: Daniel`ARC`GetObject
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`GetObject]
    
    Author: danielb
*)

Test[
    Daniel`ARC`GetObject[
        Daniel`ARC`Object[<|"Colors" -> {"Blue"}|>],
        <|"Objects" -> {<|"Colors" -> {"Blue"}, "Position" -> {1, 1}|>}|>
    ]
    ,
    <|"Colors" -> {"Blue"}, "Position" -> {1, 1}|>
    ,
    TestID -> "GetObject-20220723-G02VP3"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`GetObject[
            Daniel`ARC`Object[<|"Colors" -> {"Blue"}|>],
            <|"Objects" -> {<|"Colors" -> {"Red"}, "Position" -> {1, 1}|>}|>
        ]
    ]
    ,
    Failure[
        "ObjectNotFound",
        <|
            "MessageTemplate" -> "The object wasn't found in the scene.",
            "MessageParameters" -> <||>,
            "Object" -> <|"Colors" -> {"Blue"}|>
        |>
    ]
    ,
    TestID -> "GetObject-20220723-G1R39W"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`GetObject[
            Daniel`ARC`Object[<|"Colors" -> {"Blue"}|>],
            <|
                "Objects" -> {
                    <|"Colors" -> {"Blue"}, "Position" -> {1, 1}|>,
                    <|"Colors" -> {"Blue"}, "Position" -> {2, 2}|>
                }
            |>
        ]
    ]
    ,
    Failure[
        "AmbiguousObject",
        <|
            "MessageTemplate" -> "Multiple matching objects were found, but only 1 match was expected.",
            "MessageParameters" -> <||>,
            "ObjectPattern" -> <|"Colors" -> {"Blue"}|>,
            "MatchingObjects" -> {
                <|"Colors" -> {"Blue"}, "Position" -> {1, 1}|>,
                <|"Colors" -> {"Blue"}, "Position" -> {2, 2}|>
            }
        |>
    ]
    ,
    TestID -> "GetObject-20220723-DH0I2F"
]