(*
    Tests for: Daniel`ARC`ReturnIfDifferingInputAndOutputSize
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ReturnIfDifferingInputAndOutputSize]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Module[
            {},
            Daniel`ARC`ReturnIfDifferingInputAndOutputSize[
                Utility`ReturnIfFailure[Daniel`ARC`ARCParseFile["007bbfb7"]]
            ];
            "HERE"
        ]
    ]
    ,
    Missing["NotImplemented", "DifferingInputAndOutputSize"]
    ,
    TestID -> "ReturnIfDifferingInputAndOutputSize-20220725-PSI0FW"
]