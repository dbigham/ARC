(*
    Tests for: Daniel`ARC`ARCCleanRules
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCCleanRules]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCCleanRules[
        {
            <|"Colors" -> {2}|> -> <|
                "Transform" -> <|
                    "Type" -> "AddComponents",
                    "Components" -> {
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{4}}],
                            "Position" -> <|
                                "RelativePosition" -> <|
                                    "Y" -> -1,
                                    "X" -> -1,
                                    "YInverse" -> -1,
                                    "XInverse" -> -1
                                |>
                            |>
                        |>,
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{4}}],
                            "Position" -> <|
                                "RelativePosition" -> <|
                                    "Y" -> -1,
                                    "X" -> 1,
                                    "YInverse" -> -1,
                                    "XInverse" -> 1
                                |>
                            |>
                        |>,
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{4}}],
                            "Position" -> <|
                                "RelativePosition" -> <|
                                    "Y" -> 1,
                                    "X" -> -1,
                                    "YInverse" -> 1,
                                    "XInverse" -> -1
                                |>
                            |>
                        |>,
                        <|
                            "Image" -> Daniel`ARC`ARCScene[{{4}}],
                            "Position" -> <|
                                "RelativePosition" -> <|
                                    "Y" -> 1,
                                    "X" -> 1,
                                    "YInverse" -> 1,
                                    "XInverse" -> 1
                                |>
                            |>
                        |>
                    }
                |>
            |>,
            <|"Colors" -> {1}|> -> <|
                "Transform" -> <|
                    "Type" -> "AddComponents",
                    "Components" -> {
                        <|
                            "Image" -> Daniel`ARC`ARCScene[
                                {{-1, 7, -1}, {7, -1, 7}, {-1, 7, -1}}
                            ],
                            "Position" -> <|
                                "RelativePosition" -> <|
                                    "Y" -> -1,
                                    "X" -> -1,
                                    "YInverse" -> -1,
                                    "XInverse" -> -1
                                |>
                            |>
                        |>
                    }
                |>
            |>,
            <|"Colors" -> Except[{2} | {1}]|> -> <|"Same" -> True|>
        }
    ]
    ,
    {
        <|"Colors" -> {2}|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> -1|>|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> 1|>|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> -1|>|>
                    |>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{4}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> 1|>|>
                    |>
                }
            |>
        |>,
        <|"Colors" -> {1}|> -> <|
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> {
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{-1, 7, -1}, {7, -1, 7}, {-1, 7, -1}}],
                        "Position" -> <|"RelativePosition" -> <|"Y" -> -1, "X" -> -1|>|>
                    |>
                }
            |>
        |>,
        <|"Colors" -> Except[{2} | {1}]|> -> <|"Same" -> True|>
    }
    ,
    TestID -> "ARCCleanRules-20220808-YZXCS1"
]