(*
    Tests for: Daniel`ARC`ARCRemoveExtendedMetadataFromConclusion
    
    To run these tests:
    
        << DevTools`
        << Daniel`ARC`
        RunUnitTests[Daniel`ARC`ARCRemoveExtendedMetadataFromConclusion]
    
    Author: danielb
*)

Test[
    Daniel`ARC`ARCRemoveExtendedMetadataFromConclusion[<|"a" -> 1, "Examples" -> 2|>]
    ,
    <|"a" -> 1|>
    ,
    TestID -> "ARCRemoveExtendedMetadataFromConclusion-20220903-SCK8H0"
]