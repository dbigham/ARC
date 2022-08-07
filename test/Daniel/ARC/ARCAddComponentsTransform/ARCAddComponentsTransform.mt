(*
    Tests for: Daniel`ARC`ARCAddComponentsTransform
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCAddComponentsTransform]
    
    Author: danielb
*)

Test[
    Daniel`ARC`SimplifyObjects[
        Daniel`ARC`ARCAddComponentsTransform[
            <|"Position" -> {2, 2}|>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{2, -1, -1}, {5, 5, 5}, {5, -1, 5}, {5, 5, 5}}],
                "Position" -> {1, 2},
                "Components" -> {
                    <|"Image" -> Daniel`ARC`ARCScene[{{2}}], "Position" -> {1, 2}|>,
                    <|
                        "Image" -> Daniel`ARC`ARCScene[{{5, 5, 5}, {5, -1, 5}, {5, 5, 5}}],
                        "Position" -> {2, 2}
                    |>
                }
            |>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{5, 5, 5}, {5, -1, 5}, {5, 5, 5}}],
                "Position" -> {2, 2}
            |>
        ]
    ]
    ,
    <|
        "Image" -> Daniel`ARC`ARCScene[{{2, -1, -1}, {5, 5, 5}, {5, -1, 5}, {5, 5, 5}}],
        "Position" -> {1, 2},
        "Components" -> {
            <|"Image" -> Daniel`ARC`ARCScene[{{2}}], "Position" -> {1, 2}|>,
            <|
                "Image" -> Daniel`ARC`ARCScene[{{5, 5, 5}, {5, -1, 5}, {5, 5, 5}}],
                "Position" -> {2, 2}
            |>
        },
        "Transform" -> <|
            "Type" -> "AddComponents",
            "Components" -> {
                <|
                    "Image" -> Daniel`ARC`ARCScene[{{2}}],
                    "Position" -> <|"RelativePosition" -> {-1, 0}|>
                |>
            }
        |>
    |>
    ,
    TestID -> "ARCAddComponentsTransform-20220807-6CUFJO"
]