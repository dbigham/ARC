(*
    Tests for: Daniel`ARC`ToXY
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ToXY]
    
    Author: danielb
*)

Test[
    Utility`ReplaceAssociationsWithUnevaluatedAssociations[Daniel`ARC`ToXY[{1, 2}]]
    ,
    <|"Y" -> 1, "X" -> 2|>
    ,
    TestID -> "ToXY-20220724-2GTJ08"
]