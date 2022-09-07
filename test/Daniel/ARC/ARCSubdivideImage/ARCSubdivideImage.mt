(*
    Tests for: Daniel`ARC`ARCSubdivideImage
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCSubdivideImage]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCSubdivideImage[
        Daniel`ARC`ARCParseFile["8be77c9e"][[1, "Train", 1, "Output"]],
        2,
        1
    ]
    ,
    {
        {Daniel`ARC`ARCScene[{{1, 1, 0}, {1, 1, 1}, {0, 0, 0}}]},
        {Daniel`ARC`ARCScene[{{0, 0, 0}, {1, 1, 1}, {1, 1, 0}}]}
    }
    ,
    TestID -> "ARCSubdivideImage-20220906-YSALK0"
]