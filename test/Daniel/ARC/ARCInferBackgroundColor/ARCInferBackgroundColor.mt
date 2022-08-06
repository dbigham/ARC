(*
    Tests for: Daniel`ARC`ARCInferBackgroundColor
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCInferBackgroundColor]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCInferBackgroundColor[Daniel`ARC`ARCParseFile["007bbfb7"]]
    ,
    0
    ,
    TestID -> "ARCInferBackgroundColor-20220806-8EYVVV"
]

Test[
    Daniel`ARC`ARCInferBackgroundColor[Daniel`ARC`ARCParseFile["ihiz27k2n"]]
    ,
    5
    ,
    TestID -> "ARCInferBackgroundColor-20220806-Z81G6V"
]

Test[
    Daniel`ARC`ARCInferBackgroundColor[
        Daniel`ARC`ARCParseFile["ihiz27k2n"]["Test", 1, "Input"]
    ]
    ,
    5
    ,
    TestID -> "ARCInferBackgroundColor-20220806-28PU9I"
]