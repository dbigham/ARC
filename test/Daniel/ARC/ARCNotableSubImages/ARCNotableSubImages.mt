(*
    Tests for: Daniel`ARC`ARCNotableSubImages
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCNotableSubImages]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCNotableSubImages[
            {
                <|"Image" -> Daniel`ARC`ARCScene[{{1, 0}, {0, 1}}]|>,
                <|"Image" -> Daniel`ARC`ARCScene[{{1, 1}}]|>,
                <|"Image" -> Daniel`ARC`ARCScene[{{1, 0, 1}, {0, 1, 0}, {1, 0, 1}}]|>
            },
            3,
            3
        ]
    ]
    ,
    {{{1, 0}, {0, 1}} -> <|"Image" -> Daniel`ARC`ARCScene[{{1, 0}, {0, 1}}]|>}
    ,
    TestID -> "ARCNotableSubImages-20220725-9BDG1I"
]