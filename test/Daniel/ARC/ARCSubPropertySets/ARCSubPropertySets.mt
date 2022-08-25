(*
    Tests for: Daniel`ARC`ARCSubPropertySets
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCSubPropertySets]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCSubPropertySets[Daniel`ARC`Private`$transformTypes[Automatic]]
    ]
    ,
    {
        {
            "Image" -> <||>,
            "Position" -> <|
                "SubProperties" -> {
                    "RelativePosition" -> <||>,
                    "Y" -> <|"ObjectGet" -> (#1["Y"] & )|>,
                    "X" -> <|"ObjectGet" -> (#1["X"] & )|>
                },
                "MinimalPropertySets" -> {{"RelativePosition"}, {"Y", "X"}}
            |>
        },
        {
            ("Shape" -> <||>) | ("Shapes" -> <|"ClassList" -> True|>),
            "Color" -> <||>,
            "Position" -> <|
                "SubProperties" -> {
                    "RelativePosition" -> <||>,
                    "Y" -> <|"ObjectGet" -> (#1["Y"] & )|>,
                    "X" -> <|"ObjectGet" -> (#1["X"] & )|>
                },
                "MinimalPropertySets" -> {{"RelativePosition"}, {"Y", "X"}}
            |>,
            ("Width" -> <||>) | ("X2Inverse" -> <||>),
            ("Height" -> <||>) | ("Y2Inverse" -> <||>)
        },
        {
            ("Shape" -> <||>) | ("Shapes" -> <|"ClassList" -> True|>),
            "Color" -> <||>,
            ("X" -> <||>) | ("XInverse" -> <||>),
            ("Y" -> <||>) | ("YInverse" -> <||>),
            ("Width" -> <||>) | ("X2Inverse" -> <||>),
            ("Height" -> <||>) | ("Y2Inverse" -> <||>)
        }
    }
    ,
    TestID -> "ARCSubPropertySets-20220824-T9149Q"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCSubPropertySets[
            <|"SubProperties" -> {"Y" | Missing["Y"], "X" | Missing["Y"]}|>
        ]
    ]
    ,
    {{"Y" | Missing["Y"], "X" | Missing["Y"]}}
    ,
    TestID -> "ARCSubPropertySets-20220826-XZS2EB"
]