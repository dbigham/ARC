(*
    Tests for: Daniel`ARC`AssociationTranspose
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`AssociationTranspose]
    
    Author: danielb
*)

Test[
    Daniel`ARC`AssociationTranspose[
        {<|"a" -> 1, "b" -> 4|>, <|"a" -> 2, "b" -> 5|>, <|"a" -> 3, "b" -> 6|>}
    ]
    ,
    <|"a" -> {1, 2, 3}, "b" -> {4, 5, 6}|>
    ,
    TestID -> "AssociationTranspose-20220724-29T66F"
]