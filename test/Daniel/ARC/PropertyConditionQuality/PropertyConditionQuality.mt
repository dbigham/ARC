(*
    Tests for: Daniel`ARC`PropertyConditionQuality
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`PropertyConditionQuality]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`PropertyConditionQuality["Color"]
    ]
    ,
    -0.03076923076923077
    ,
    TestID -> "PropertyConditionQuality-20220826-8NFDPP"
]

Test[
    Daniel`ARC`PropertyConditionQuality["Image"]
    ,
    0.19999999999999996
    ,
    TestID -> "PropertyConditionQuality-20220826-FZ5KEA"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`PropertyConditionQuality["Shape"]
    ]
    ,
    0.19999999999999996
    ,
    TestID -> "PropertyConditionQuality-20220826-4IF0P8"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`PropertyConditionQuality["X"]
    ]
    ,
    -0.5
    ,
    TestID -> "PropertyConditionQuality-20220826-7XP0W6"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`PropertyConditionQuality["Width"]
    ]
    ,
    -0.1076923076923077
    ,
    TestID -> "PropertyConditionQuality-20220826-6OCF5M"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`PropertyConditionQuality["Width.Rank"]
    ]
    ,
    -0.46153846153846156
    ,
    TestID -> "PropertyConditionQuality-20220826-8AGQEV"
]