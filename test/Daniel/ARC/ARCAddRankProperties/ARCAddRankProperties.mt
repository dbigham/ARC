(*
    Tests for: Daniel`ARC`ARCAddRankProperties
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCAddRankProperties]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCAddRankProperties[
            <|
                "Colors" -> <|"Type" -> Repeated["Color"]|>,
                "Width" -> <|"Type" -> "Integer"|>
            |>
        ]
    ]
    ,
    <|
        "Colors" -> <|"Type" -> Repeated["Color"]|>,
        "Width" -> <|"Type" -> "Integer"|>,
        "WidthRank" -> <|"Type" -> "Integer", "Rank" -> True, "RankOf" -> "Width"|>
    |>
    ,
    TestID -> "ARCAddRankProperties-20220804-XPRFEH"
]