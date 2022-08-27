(*
    Tests for: Daniel`ARC`ARCFindOccludedLines
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCFindOccludedLines]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`SimplifyObjects["ExtraKeys" -> "ZOrder"][
                With[
                    {
                        scene = Daniel`ARC`ARCParseScene[
                            Daniel`ARC`ARCParseFile["178fcbfb"]["Train", 1, "Output"],
                            "FormMultiColorCompositeObjects" -> False
                        ]
                    },
                    Daniel`ARC`ARCFindOccludedLines[scene["Scene"], scene["Objects"]]
                ]
            ]
        ]
    ]
    ,
    {
        <|
            "Image" -> Daniel`ARC`ARCScene[{{2}, {2}, {2}, {2}, {2}, {2}, {2}, {2}, {2}}],
            "Position" -> {1, 3},
            "ZOrder" -> 1
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{1, 1, 1, 1, 1, 1, 1, 1, 1}}],
            "Position" -> {7, 1}
        |>,
        <|
            "Image" -> Daniel`ARC`ARCScene[{{3, 3, 3, 3, 3, 3, 3, 3, 3}}],
            "Position" -> {5, 1}
        |>
    }
    ,
    TestID -> "ARCFindOccludedLines-20220826-DJASJJ"
]