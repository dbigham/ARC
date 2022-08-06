(*
    Tests for: Daniel`ARC`SimplifyObjects
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`SimplifyObjects]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`SimplifyObjects[
            <|
                <|"UUID" -> "...", "Image" -> "I1", "Position" -> "P1", "AnotherKey" -> 1|> -> <|
                    "UUID" -> "...",
                    "Image" -> "I2",
                    "Position" -> "P2",
                    "AnotherKey" -> 2
                |>
            |>
        ]
    ]
    ,
    <|<|"Image" -> "I1", "Position" -> "P1"|> -> <|"Image" -> "I2", "Position" -> "P2"|>|>
    ,
    TestID -> "SimplifyObjects-20220719-4035MV"
]