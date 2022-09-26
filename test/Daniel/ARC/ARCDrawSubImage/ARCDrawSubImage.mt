(*
    Tests for: Daniel`ARC`ARCDrawSubImage
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCDrawSubImage]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCDrawSubImage[
        {{-1, -1, -1}, {-1, -1, -1}, {-1, -1, -1}},
        <|"Image" -> Daniel`ARC`ARCScene[{{9}}], "Position" -> {2, 2}|>
    ]
    ,
    {{-1, -1, -1}, {-1, 9, -1}, {-1, -1, -1}}
    ,
    TestID -> "ARCDrawSubImage-20220925-C9ZJ2V"
]