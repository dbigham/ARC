(*
    Tests for: Daniel`ARC`ARCObjectImageShape
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCObjectImageShape]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCObjectImageShape[<|"Colors" -> {1}, "Shapes" -> {<|"Image" -> "HERE"|>}|>]
    ,
    "HERE"
    ,
    TestID -> "ARCObjectImageShape-20220902-II9ZXY"
]

Test[
    Daniel`ARC`ARCObjectImageShape[<|"Colors" -> {1, 2}, "Image" -> "HERE"|>]
    ,
    "HERE"
    ,
    TestID -> "ARCObjectImageShape-20220902-NP00NQ"
]