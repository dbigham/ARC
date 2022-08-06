(*
    Tests for: Daniel`ARC`ARCClassifyRectange
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCClassifyRectange]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCClassifyRectange[{{1, 1}, {1, 1}}]
    ,
    <|"Name" -> "Rectangle"|>
    ,
    TestID -> "ARCClassifyRectange-20220717-6DF3UG"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        ToString[Daniel`ARC`ARCClassifyRectange[{{1, 1}, {1, 0}}]]
    ]
    ,
    "Nothing"
    ,
    TestID -> "ARCClassifyRectange-20220717-0DGZDW"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        ToString[Daniel`ARC`ARCClassifyRectange[{}]]
    ]
    ,
    "Nothing"
    ,
    TestID -> "ARCClassifyRectange-20220717-VW7W9R"
]

Test[
    Daniel`ARC`ARCClassifyRectange[{{2, 2}, {2, 2}}]
    ,
    <|"Name" -> "Rectangle"|>
    ,
    TestID -> "ARCClassifyRectange-20220718-WVXGAP"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        ToString[Daniel`ARC`ARCClassifyRectange[{{2, 1}, {2, 2}}]]
    ]
    ,
    "Nothing"
    ,
    TestID -> "ARCClassifyRectange-20220718-5DUZW9"
]