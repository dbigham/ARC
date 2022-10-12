(*
    Tests for: Daniel`ARC`ARCToColorList
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCToColorList]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCToColorList[
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1, 0, 0}, {0, 2, 0}, {0, 0, 3}}],
            "Shape" -> <|"Name" -> "Line", "Angle" -> 135|>
        |>
    ]
    ,
    {1, 2, 3}
    ,
    TestID -> "ARCToColorList-20221010-JABJTG"
]

Test[
    Daniel`ARC`ARCToColorList[
        <|
            "Image" -> Daniel`ARC`ARCScene[{{0, 0, 3}, {0, 2, 0}, {1, 0, 0}}],
            "Shape" -> <|"Name" -> "Line", "Angle" -> 45|>
        |>
    ]
    ,
    {1, 2, 3}
    ,
    TestID -> "ARCToColorList-20221010-A4RD7O"
]

Test[
    Daniel`ARC`ARCToColorList[
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1, 2, 3}}],
            "Shape" -> <|"Name" -> "Line", "Angle" -> 0|>
        |>
    ]
    ,
    {1, 2, 3}
    ,
    TestID -> "ARCToColorList-20221010-3DGW1G"
]

Test[
    Daniel`ARC`ARCToColorList[
        <|
            "Image" -> Daniel`ARC`ARCScene[{{0, 0, 3}, {0, 2, 0}, {1, 0, 0}}],
            "Shape" -> <|"Name" -> "Line", "Angle" -> 45|>
        |>
    ]
    ,
    {1, 2, 3}
    ,
    TestID -> "ARCToColorList-20221010-FFNW5E"
]