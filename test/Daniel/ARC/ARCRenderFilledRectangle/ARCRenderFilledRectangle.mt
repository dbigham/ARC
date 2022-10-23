(*
    Tests for: Daniel`ARC`ARCRenderFilledRectangle
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCRenderFilledRectangle]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCRenderFilledRectangle[6, 2, {{2, 2}, {8, 8}}]
    ,
    Daniel`ARC`ARCScene[{{2, 8, 2, 8, 2, 8}, {2, 8, 2, 8, 2, 8}}]
    ,
    TestID -> "ARCRenderFilledRectangle-20221023-QSID5Q"
]

Test[
    Daniel`ARC`ARCRenderFilledRectangle[
        2,
        6,
        <|"Pattern" -> {{2, 2}, {8, 8}}, "Orientation" -> "Vertical"|>
    ]
    ,
    Daniel`ARC`ARCScene[{{2, 2}, {8, 8}, {2, 2}, {8, 8}, {2, 2}, {8, 8}}]
    ,
    TestID -> "ARCRenderFilledRectangle-20221023-QXLTIZ"
]