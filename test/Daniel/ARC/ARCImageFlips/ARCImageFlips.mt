(*
    Tests for: Daniel`ARC`ARCImageFlips
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCImageFlips]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCImageFlips[{{1, -1, 1}, {-1, 1, -1}, {-1, -1, 1}}]
    ,
    {
        <|
            "Image" -> Daniel`ARC`ARCScene[{{-1, -1, 1}, {-1, 1, -1}, {1, -1, 1}}],
            "Direction" -> "Vertical"
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1, -1, 1}, {-1, 1, -1}, {1, -1, -1}}],
            "Direction" -> "Horizontal"
        |>
    }
    ,
    TestID -> "ARCImageFlips-20220906-BUBGRS"
]