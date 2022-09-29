(*
    Tests for: Daniel`ARC`ARCCheckForImputedRectangleForSymmetry
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCCheckForImputedRectangleForSymmetry]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCCheckForImputedRectangleForSymmetry[
                Daniel`ARC`ARCParseFile["9ecd008a"]["Train"]
            ]
        ]
    ]
    ,
    <|"Type" -> "ImputedRectangleForSymmetry"|>
    ,
    TestID -> "ARCCheckForImputedRectangleForSymmetry-20220928-KG0CJN"
]

Test[
    Daniel`ARC`ARCCheckForImputedRectangleForSymmetry[examples]
    ,
    <|"Type" -> "ImputedRectangleForSymmetry"|>
    ,
    TestID -> "ARCCheckForImputedRectangleForSymmetry-20220928-MHAMIA"
]