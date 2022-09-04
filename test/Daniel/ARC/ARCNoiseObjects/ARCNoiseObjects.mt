(*
    Tests for: Daniel`ARC`ARCNoiseObjects
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCNoiseObjects]
    
    Author: danielb
*)

Test[
    Daniel`ARC`SimplifyObjects[
        With[
            {
                parsedScene = Daniel`ARC`ARCParseScene[
                    Daniel`ARC`ARCParseFile["5614dbcf"]["Train", 1, "Input"],
                    "FormMultiColorCompositeObjects" -> False
                ]
            },
            Daniel`ARC`ARCNoiseObjects[parsedScene["Objects"]]
        ]
    ]
    ,
    {
        <|"Image" -> Daniel`ARC`ARCScene[{{5}}], "Position" -> {2, 8}|>,
        <|"Image" -> Daniel`ARC`ARCScene[{{5}}], "Position" -> {4, 5}|>,
        <|"Image" -> Daniel`ARC`ARCScene[{{5}}], "Position" -> {7, 6}|>,
        <|"Image" -> Daniel`ARC`ARCScene[{{5}}], "Position" -> {9, 2}|>,
        <|"Image" -> Daniel`ARC`ARCScene[{{5}}], "Position" -> {9, 5}|>,
        <|"Image" -> Daniel`ARC`ARCScene[{{5}}], "Position" -> {9, 9}|>
    }
    ,
    TestID -> "ARCNoiseObjects-20220904-7BTW8V"
]