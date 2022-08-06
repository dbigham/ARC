(*
    Tests for: Daniel`ARC`ARCFindRules
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCFindRules]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "0ca9ddb6"]["Train"]]
        ]
    ]
    ,
    {
        <|"Colors" -> {2}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{4, 0, 4}, {0, 2, 0}, {4, 0, 4}}],
            "Position" -> <|"RelativePosition" -> {-1, -1}|>,
            "Examples" -> {1, 2, 3},
            "ExampleCount" -> 3,
            "UseCount" -> 4
        |>,
        <|"Colors" -> {1}|> -> <|
            "Image" -> Daniel`ARC`ARCScene[{{0, 7, 0}, {7, 1, 7}, {0, 7, 0}}],
            "Position" -> <|"RelativePosition" -> {-1, -1}|>,
            "Examples" -> {1, 2, 3},
            "ExampleCount" -> 3,
            "UseCount" -> 4
        |>,
        <|"Colors" -> Except[{{2}, {1}}]|> -> <|
            "Same" -> True,
            "Examples" -> {2, 3},
            "ExampleCount" -> 2,
            "UseCount" -> 2
        |>
    }
    ,
    TestID -> "ARCFindRules-20220719-XYQH41"
]

Test[
    Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "3c9b0459"]["Train"]]
    ,
    {<||> -> <|"Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>|>}
    ,
    TestID -> "ARCFindRules-20220722-MAF6JZ"
]

Test[
    Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "321b1fc6"]["Train"]]
    ,
    {
        <|"Colors" -> {8}|> -> <|
            "Image" -> Daniel`ARC`ObjectValue[<|"Colors" -> Except[{8}]|>, "Image"],
            "Examples" -> {1, 2},
            "ExampleCount" -> 2,
            "UseCount" -> 6
        |>,
        <|"Colors" -> Except[{8}]|> -> <|
            "Transform" -> <|"Type" -> "Delete"|>,
            "Examples" -> {1, 2},
            "ExampleCount" -> 2,
            "UseCount" -> 2
        |>
    }
    ,
    TestID -> "ARCFindRules-20220725-AR54Q9"
]

Test[
    Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "05f2a901"]["Train"]]
    ,
    {
        <|"Colors" -> {2}|> -> <|
            "Transform" -> <|
                "Type" -> "Move",
                "BlockedBy" -> Daniel`ARC`Object[<|"Colors" -> {8}|>]
            |>,
            "Examples" -> {1, 2, 3},
            "ExampleCount" -> 3,
            "UseCount" -> 3
        |>,
        <|"Colors" -> {8}|> -> <|
            "Same" -> True,
            "Examples" -> {1, 2, 3},
            "ExampleCount" -> 3,
            "UseCount" -> 3
        |>
    }
    ,
    TestID -> "ARCFindRules-20220804-KVNY6K"
]

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        DevTools`TestingTools`SlowTest[
            Daniel`ARC`ARCSimplifyRules[
                Daniel`ARC`ARCFindRules[Daniel`ARC`ARCParseFile[file = "08ed6ac7"]["Train"]]
            ]
        ]
    ]
    ,
    {
        <|"YRank" -> 4|> -> <|"Colors" -> {1}|>,
        <|"YRank" -> 3|> -> <|"Colors" -> {2}|>,
        <|"YRank" -> 2|> -> <|"Colors" -> {3}|>,
        <|"YRank" -> 1|> -> <|"Colors" -> {4}|>
    }
    ,
    TestID -> "ARCFindRules-20220804-KVISKF"
]