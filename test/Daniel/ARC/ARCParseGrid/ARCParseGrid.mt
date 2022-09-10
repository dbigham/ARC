(*
    Tests for: Daniel`ARC`ARCParseGrid
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCParseGrid]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[
        Daniel`ARC`ARCParseGrid[
            {
                {-1, -1, 5, -1, -1, 5, -1, -1},
                {-1, -1, 5, -1, -1, 5, -1, -1},
                {5, 5, 5, 5, 5, 5, 5, 5},
                {-1, -1, 5, -1, -1, 5, -1, -1},
                {-1, -1, 5, -1, -1, 5, -1, -1},
                {5, 5, 5, 5, 5, 5, 5, 5},
                {-1, -1, 5, -1, -1, 5, -1, -1},
                {-1, -1, 5, -1, -1, 5, -1, -1}
            }
        ]
    ]
    ,
    <|
        "RowCount" -> 3,
        "ColumnCount" -> 3,
        "Color" -> 5,
        "Cells" -> {
            {
                <|"Y" -> 1, "X" -> 1, "Width" -> 2, "Height" -> 2|>,
                <|"Y" -> 1, "X" -> 4, "Width" -> 2, "Height" -> 2|>,
                <|"Y" -> 1, "X" -> 7, "Width" -> 2, "Height" -> 2|>
            },
            {
                <|"Y" -> 4, "X" -> 1, "Width" -> 2, "Height" -> 2|>,
                <|"Y" -> 4, "X" -> 4, "Width" -> 2, "Height" -> 2|>,
                <|"Y" -> 4, "X" -> 7, "Width" -> 2, "Height" -> 2|>
            },
            {
                <|"Y" -> 7, "X" -> 1, "Width" -> 2, "Height" -> 2|>,
                <|"Y" -> 7, "X" -> 4, "Width" -> 2, "Height" -> 2|>,
                <|"Y" -> 7, "X" -> 7, "Width" -> 2, "Height" -> 2|>
            }
        }
    |>
    ,
    TestID -> "ARCParseGrid-20220910-LH6XVJ"
]