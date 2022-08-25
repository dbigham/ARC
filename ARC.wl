(*!
    Abstraction and Reasoning Corpus
    
    https://github.com/fchollet/ARC
    
    Authors:
        Daniel Bigham (daniel.bigham@gmail.com)
*)

If [TrueQ[DevTools`$DebugLoad], Print["Loading: Daniel`ARC`"]];

BeginPackage["Daniel`ARC`"]

Needs["Utility`Indent`"]
Needs["Utility`"]

ParseARCGrid::usage = "ParseARCGrid  "

ARCParseFile::usage = "ARCParseFile  "

ARCScene::usage = "ARCScene  "

ARCExample::usage = "ARCExample  "

ARCTrainingFiles::usage = "ARCTrainingFiles  "

ARCColors::usage = "ARCColors  "

ARCRandomExample::usage = "ARCRandomExample  "

ARCParseScene::usage = "ARCParseScene  "

ARCContiguousImageRegions::usage = "ARCContiguousImageRegions  "

ARCImageRegions::usage = "ARCImageRegions  "

ARCColorIntegers::usage = "ARCColorIntegers  "

ARCImageRegionToObject::usage = "ARCImageRegionToObject  "

ARCClassifyShape::usage = "ARCClassifyShape  "

ARCClassifySquare::usage = "ARCClassifySquare  "

ARCClassifyRectange::usage = "ARCClassifyRectange  "

ARCClassifyPixel::usage = "ARCClassifyPixel  "

ARCClassifyL::usage = "ARCClassifyL  "

ARCClassifyRotatedImage::usage = "ARCClassifyRotatedImage  "

ARCClassifyFlippedImage::usage = "ARCClassifyFlippedImage  "

ARCIndent::usage = "ARCIndent  "

ARCClassifyLine::usage = "ARCClassifyLine  "

ARCInferBackgroundColor::usage = "ARCInferBackgroundColor  "

ARCColorToInteger::usage = "ARCColorToInteger  "

ARCFormCompositeObjects::usage = "ARCFormCompositeObjects  "

ObjectsByAttribute::usage = "ObjectsByAttribute  "

ARCFindObjectMapping::usage = "ARCFindObjectMapping  "

SimplifyObjects::usage = "SimplifyObjects  "

ARCSameQ::usage = "ARCSameQ  "

ARCPruneOutputsForRuleFinding::usage = "ARCPruneOutputsForRuleFinding  "

ARCFindRules::usage = "ARCFindRules  "

Replace2::usage = "Replace2  "

ARCApplyRules::usage = "ARCApplyRules  "

ARCApplyConclusion::usage = "ARCApplyConclusion  "

ARCRenderScene::usage = "ARCRenderScene  "

ARCTestRules::usage = "ARCTestRules  "

ARCTest::usage = "ARCTest  "

ARCImageRotations::usage = "ARCImageRotations  "

ARCGoodRulesQ::usage = "ARCGoodRulesQ  "

ARCWorkingQ::usage = "ARCWorkingQ  "

RotateImage::usage = "RotateImage  "

ARCMakeObjectsReferenceable::usage = "ARCMakeObjectsReferenceable  "

ARCParseExamples::usage = "ARCParseExamples  "

Object::usage = "Object  "

ObjectValue::usage = "ObjectValue  "

ARCReferenceableObjectProperties::usage = "ARCReferenceableObjectProperties  "

GetObject::usage = "GetObject  "

ARCParseInputAndOutputScenes::usage = "ARCParseInputAndOutputScenes  "

ARCSelectMatchingObject::usage = "ARCSelectMatchingObject  "

ARCMatchingObjectExistsQ::usage = "ARCMatchingObjectExistsQ  "

ARCEcho::usage = "ARCEcho  "

ARCGeneralizeConclusions::usage = "ARCGeneralizeConclusions  "

ToXY::usage = "ToXY  "

ARCGeneralizeConclusionValue::usage = "ARCGeneralizeConclusionValue  "

ARCGeneralizeConclusionValueUsingReferenceableObjects::usage = "ARCGeneralizeConclusionValueUsingReferenceableObjects  "

ARCFindPropertyToInferValues::usage = "ARCFindPropertyToInferValues  "

AssociationTranspose::usage = "AssociationTranspose  "

ResolveValues::usage = "ResolveValues  "

ARCTry::usage = "ARCTry  "

ARCNotableSubImages::usage = "ARCNotableSubImages  "

ARCMakeObjectsForSubImages::usage = "ARCMakeObjectsForSubImages  "

ARCInferObjectProperties::usage = "ARCInferObjectProperties  "

ARCRepositionObject::usage = "ARCRepositionObject  "

ARCImageBorderingStrips::usage = "ARCImageBorderingStrips  "

ObjectWithinQ::usage = "ObjectWithinQ  "

ARCToMonochrome::usage = "ARCToMonochrome  "

ARCColorize::usage = "ARCColorize  "

SetTrainingDataKeyValue::usage = "SetTrainingDataKeyValue  "

ReturnIfDifferingInputAndOutputSize::usage = "ReturnIfDifferingInputAndOutputSize  "

ARCAddMoveAttributes::usage = "ARCAddMoveAttributes  "

ARCObjectEdgePixels::usage = "ARCObjectEdgePixels  "

ARCBlockingPixels::usage = "ARCBlockingPixels  "

ARCOutOfBounds::usage = "ARCOutOfBounds  "

ARCSimplifyRules::usage = "ARCSimplifyRules  "

ARCVerticalOverlapQ::usage = "ARCVerticalOverlapQ  "

ARCHorizontalOverlapQ::usage = "ARCHorizontalOverlapQ  "

ARCBlockingDirection::usage = "ARCBlockingDirection  "

ARCBlockingQ::usage = "ARCBlockingQ  "

ARCAddRankProperties::usage = "ARCAddRankProperties  "

ARCInferRankProperties::usage = "ARCInferRankProperties  "

ARCChooseBestTransform::usage = "ARCChooseBestTransform  "

ARCTransformScore::usage = "ARCTransformScore  "

ProcessExamples::usage = "ProcessExamples  "

ARCCreateNotebook::usage = "ARCCreateNotebook  "

ARCNotebook::usage = "ARCNotebook  "

ARCGroupByOutputObject::usage = "ARCGroupByOutputObject  "

ARCSetGroupProperties::usage = "ARCSetGroupProperties  "

$UnitTestDir::usage = "$UnitTestDir  "

ARCEvaluationFiles::usage = "ARCEvaluationFiles  "

ARCMyTrainingFiles::usage = "ARCMyTrainingFiles  "

$MyTrainingDirectory::usage = "$MyTrainingDirectory  "

ARCConditionsGeneralityScore::usage = "ARCConditionsGeneralityScore  "

ARCAddComponentsTransform::usage = "ARCAddComponentsTransform  "

ARCObjectImageFromComponents::usage = "ARCObjectImageFromComponents  "

ToPosition::usage = "ToPosition  "

ARCTaskLog::usage = "ARCTaskLog  "

ARCTaskMarkdown::usage = "ARCTaskMarkdown  "

ARCFormatExamples::usage = "ARCFormatExamples  "

ARCCleanRules::usage = "ARCCleanRules  "

ARCPublicNotesSection::usage = "ARCPublicNotesSection  "

ARCImplementedTasksMarkdown::usage = "ARCImplementedTasksMarkdown  "

ARCTaskNotesDirectory::usage = "ARCTaskNotesDirectory  "

ARCTaskNotesFile::usage = "ARCTaskNotesFile  "

InferColor::usage = "InferColor  "

ARCInferObjectImage::usage = "ARCInferObjectImage  "

FindSubmatrix::usage = "FindSubmatrix  "

ARCAddGeneralizeShapes::usage = "ARCAddGeneralizeShapes  "

ARCPruneAlternatives::usage = "ARCPruneAlternatives  "

ARCMoreGeneral::usage = "ARCMoreGeneral  "

PropertyEntityType::usage = "PropertyEntityType  "

ARCGeneralizeConclusionValueNonRecursive::usage = "ARCGeneralizeConclusionValueNonRecursive  "

ARCApplyImageTransforms::usage = "ARCApplyImageTransforms  "

ApplyToImage::usage = "ApplyToImage  "

ARCReplaceRulePatternsWithGroupPatternsIfAppropriate::usage = "ARCReplaceRulePatternsWithGroupPatternsIfAppropriate  "

ARCRuleToPattern::usage = "ARCRuleToPattern  "

ARCObjectCommonalities::usage = "ARCObjectCommonalities  "

ARCFormGroupsWhenApplyingRules::usage = "ARCFormGroupsWhenApplyingRules  "

ARCObjectWithComponent::usage = "ARCObjectWithComponent  "

ARCGetMatchingComponent::usage = "ARCGetMatchingComponent  "

ARCOutwardComponentPropertiesIfAppropriate::usage = "ARCOutwardComponentPropertiesIfAppropriate  "

ARCClassifyTriangle::usage = "ARCClassifyTriangle  "

ARCRotateObjectFrame::usage = "ARCRotateObjectFrame  "

ARCNormalizeObjectRotation::usage = "ARCNormalizeObjectRotation  "

ARCRotateShapeAssociation::usage = "ARCRotateShapeAssociation  "

ARCRotateShapeAssociations::usage = "ARCRotateShapeAssociations  "

ARCInferShapeAndShapes::usage = "ARCInferShapeAndShapes  "

ARCToNegativeAngle::usage = "ARCToNegativeAngle  "

ARCSetRelativeXY::usage = "ARCSetRelativeXY  "

ARCPruneMatchingPropertiesForRelativePositions::usage = "ARCPruneMatchingPropertiesForRelativePositions  "

ARCStrongPropertyInferenceMath::usage = "ARCStrongPropertyInferenceMath  "

ARCSummarizeTestResultObjects::usage = "ARCSummarizeTestResultObjects  "

ARCSplitObjectIfCorrespondingToMultipleObjectsInOtherScene::usage = "ARCSplitObjectIfCorrespondingToMultipleObjectsInOtherScene  "

ARCGroupRulesByConclusion::usage = "ARCGroupRulesByConclusion  "

ARCPruneAlternativesWrtExcept::usage = "ARCPruneAlternativesWrtExcept  "

ARCCombineAlternatives::usage = "ARCCombineAlternatives  "

ARCCombineConclusions::usage = "ARCCombineConclusions  "

ARCInferColorCountPropertyValues::usage = "ARCInferColorCountPropertyValues  "

ARCOutputObjectsNotMappedTo::usage = "ARCOutputObjectsNotMappedTo  "

ARCAddedObjectsMapping::usage = "ARCAddedObjectsMapping  "

ARCRuleForAddedObjects::usage = "ARCRuleForAddedObjects  "

ARCInferPropertiesThatRequireFullObjectList::usage = "ARCInferPropertiesThatRequireFullObjectList  "

ARCGridOrDividerQ::usage = "ARCGridOrDividerQ  "

ARCEcho2::usage = "ARCEcho2  "

ARCConclusionsInvolveRotation::usage = "ARCConclusionsInvolveRotation  "

ARCFindRulesUsingRotationalNormalization::usage = "ARCFindRulesUsingRotationalNormalization  "

ARCDebug::usage = "ARCDebug  "

ARCEcho3::usage = "ARCEcho3  "

ARCEchoTag::usage = "ARCEchoTag  "

ARCConstructObject::usage = "ARCConstructObject  "

ARCMappingToObjectWithOverlappingFilledInPixels::usage = "ARCMappingToObjectWithOverlappingFilledInPixels  "

$MinimumExamplesPerRule::usage = "$MinimumExamplesPerRule  "

ARCPropertiesNeededForConclusions::usage = "ARCPropertiesNeededForConclusions  "

ARCSubPropertySets::usage = "ARCSubPropertySets  "

ARCMinimalPropertySetItemToAttributes::usage = "ARCMinimalPropertySetItemToAttributes  "

ARCScoreRuleSets::usage = "ARCScoreRuleSets  "

ARCRuleSetScore::usage = "ARCRuleSetScore  "

ARCConditionsScore::usage = "ARCConditionsScore  "

ARCExpressionComplexity::usage = "ARCExpressionComplexity  "

ARCChooseBestRuleSet::usage = "ARCChooseBestRuleSet  "

PropertyConditionQuality::usage = "PropertyConditionQuality  "

SquareButKeepSign::usage = "SquareButKeepSign  "

SqrtButKeepSign::usage = "SqrtButKeepSign  "

Begin["`Private`"]

Utility`Reload`SetupReloadFunction["Daniel`ARC`"];

$MinimumExamplesPerRule = 2;

(* These make use of utility code from an internal Wolfram git repository (wyatterp), so these
   functions would need to be provided if this code were used by people outside of Wolfram. *)
ReturnIfFailure = Utility`ReturnIfFailure;
PrintIfFailure = Utility`PrintIfFailure;
ReturnFailureIfMessages = Utility`ReturnFailureIfMessages;
ReturnFailure = Utility`ReturnFailure;
MonitorBlueBox = Utility`MonitorBlueBox;
EchoIndented2 = Utility`EchoIndented;
Sett = Utility`Sett;
Gett = Utility`Gett;
ReturnIfNotMissing = Utility`ReturnIfNotMissing;
ImageWidth = DevTools`ImageWidth;
ImageHeight = DevTools`ImageHeight;
Indent3 = EntityLink`Indent3;
AssociationApply = Utility`AssociationApply;
ProcessOneByOne = DevTools`NotebookTools`ProcessOneByOne;
CreateNamedNotebook2 = DevTools`NotebookTools`CreateNamedNotebook2;
CreateDirectoryIfDoesntExist = Utility`CreateDirectoryIfDoesntExist;
SpecifiedQ = Utility`SpecifiedQ;
FailureDetails = Utility`FailureDetails;
EntityName = EntityLink`EntityName;

With[{contexts = ERP`MX`MXContexts[]},
    With[{contexts2 = DeleteDuplicates[Append[contexts, "Daniel`"]]},
        ERP`MX`MXContexts[] := contexts2
    ]
];

$UnitTestDir = FileNameJoin[{FileNameDrop[FindFile["Daniel`ARC`"], -1], "test", "Daniel", "ARC"}];

(* If a test is wrapped in ARCIndent, don't include that as part of the test expression,
   but rather treat it as a formatter for use in function notebooks. *)
DownValues[DevTools`TestingTools`Private`getFunctionUsesFromNotebookHelper] =
    ReleaseTemporaryHolds@
    Replace[
        DownValues[DevTools`TestingTools`Private`getFunctionUsesFromNotebookHelper],
        HoldPattern[DeleteCases][
            a:{
                Indent2,
                ___
            },
            b___
        ] :> (
            TemporaryHold[DeleteCases][
                Prepend[
                    a,
                    ARCIndent
                ],
                b
            ]
        ),
        Infinity
    ];

(* The checkout of https://github.com/fchollet/ARC, which contains the training and evaluation data. *)
$corpusGitDirectory = FileNameJoin[{FileNameDrop[FindFile["ERP`"], -7], "ARC"}];
$trainingDirectory = FileNameJoin[{$corpusGitDirectory, "data", "training"}];
$arcDirectory = FileNameDrop[FindFile["Daniel`ARC`"], -1];
$MyTrainingDirectory = FileNameJoin[{$arcDirectory, "Data", "MyTrainingData"}];
$evaluationDirectory = FileNameJoin[{$corpusGitDirectory, "data", "evaluation"}];

$nonImageColor = -1;

$integerToColor = <|
    0 -> Black,
    1 -> Blue,
    2 -> Red,
    3 -> Green,
    4 -> Yellow,
    5 -> Gray,
    6 -> Blend[{Pink, Purple}],
    7 -> Orange,
    8 -> Lighter[Lighter[Blue]],
    9 -> Blend[{Darker[Brown], Red}],
    10 -> White
|>;

$integerToColorName = <|
    0 -> "Black",
    1 -> "Blue",
    2 -> "Red",
    3 -> "Green",
    4 -> "Yellow",
    5 -> "Gray",
    6 -> "Purple",
    7 -> "Orange",
    8 -> "LightBlue",
    9 -> "Brown",
    10 -> "White"
|>;

$colorNameToInteger = AssociationInverse[$integerToColorName];

(*!
    \function ARCParseFile
    
    \calltable
        ARCParseFile[file] '' Parses an ARC file.
        ARCParseFile[data] '' Parses an ARC file.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCParseFile]
    
    \maintainer danielb
*)
Clear[ARCParseFile];
ARCParseFile[file_String] :=
    Module[{},
        path =
            If [FileExistsQ[file],
                file
                ,
                With[{files = Join[ARCTrainingFiles[], ARCMyTrainingFiles[], ARCEvaluationFiles[]]},
                    Replace[
                        SelectFirst[
                            files,
                            FileBaseName[#] === file &
                        ],
                        _Missing :> SelectFirst[
                            Join[ARCTrainingFiles[], ARCMyTrainingFiles[], ARCEvaluationFiles[]],
                            StringContainsQ[#, file] &,
                            ReturnFailure[
                                "FileNotFound",
                                "No matching training example was found.",
                                "File" -> file
                            ]
                        ]
                    ]
                ]
            ];
        
        ARCExample@
        Prepend[
            First[
                ReturnIfFailure@
                ARCParseFile[
                    ReturnIfFailure[Import[path, "JSON"]]
                ]
            ],
            "File" -> file
        ]
    ]

ARCParseFile[data_List] :=
    Module[{},
        ARCExample@
        ToAssociations@
        Replace[
            data,
            {
                grid: List[Repeated[List[__Integer]]] :> ARCScene[grid],
                str_String :> ToCamelCase[str]
            },
            Infinity
        ]
    ]

(* Formatting *)
ARCScene /:
MakeBoxes[grid_ARCScene, StandardForm] :=
    Module[{res, scalingFactor = 1, size},
        
        size = Max[
            ImageWidth[grid[[1]]],
            ImageHeight[grid[[1]]]
        ];
        
        If [size > 10,
            scalingFactor = 1 / (1 + (size - 10) / 20);
        ];
        
        res = Grid[
            Replace[grid[[1]], _Integer :> "", {2}],
            ItemSize -> {1.3 * scalingFactor, 1.5 * scalingFactor},
            Frame -> True,
            FrameStyle -> {AbsoluteThickness[1], GrayLevel[0.5]},
            Dividers -> All,
            Background -> {
                None,
                None,
                Flatten[
                    MapIndexed[
                        Function[{color, position},
                            position -> Replace[color, Prepend[$integerToColor, $nonImageColor -> GrayLevel[0.2]]]
                        ],
                        grid[[1]],
                        {2}
                    ],
                    1
                ]
            }
        ];
        
        ToBoxes[res]
    ]

(* Formatting *)
ARCExample /:
MakeBoxes[example_ARCExample, StandardForm] :=
    Module[{res},
        
        res =
            Column[
                Join[
                    {
                        Style[FileBaseName[example["File"]], FontSize -> 24],
                        ""
                    },
                    ARCFormatExamples[example][[1]]
                ]
            ];
        
        ToBoxes[res]
    ]

example_ARCExample[keys___] := example[[1, keys]]

(*!
    \function ARCFormatExamples
    
    \calltable
        ARCFormatExamples[example] '' Given an ARC task, formats its training and test pairs.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFormatExamples]
    
    \maintainer danielb
*)
Clear[ARCFormatExamples];
ARCFormatExamples[example_ARCExample] :=
    Module[{},
        Column[
            Join[
                Function[{input},
                    Row[
                        {
                            input["Input"],
                            " ",
                            input["Output"]
                        },
                        Background -> GrayLevel[0.8]
                    ]
                ] /@ example["Train"]
                ,
                Function[{input},
                    Row[
                        {
                            input["Input"],
                            " ",
                            input["Output"]
                        },
                        Background -> Gray
                    ]
                ] /@ example["Test"]
            ]
        ]
    ]

(*!
    \function ARCTrainingFiles
    
    \calltable
        ARCTrainingFiles[] '' Returns the list of ARC training files.
    
    \maintainer danielb
*)
Clear[ARCTrainingFiles];
ARCTrainingFiles[] :=
    FileNames["*.json", $trainingDirectory]

(*!
    \function ARCMyTrainingFiles
    
    \calltable
        ARCMyTrainingFiles[] '' Returns the list of ARC training files created by me.
    
    \maintainer danielb
*)
Clear[ARCMyTrainingFiles];
ARCMyTrainingFiles[] :=
    FileNames["*.json", $MyTrainingDirectory]

(*!
    \function ARCEvaluationFiles
    
    \calltable
        ARCEvaluationFiles[] '' Returns the list of ARC evaluation files.
    
    \maintainer danielb
*)
Clear[ARCEvaluationFiles];
ARCEvaluationFiles[] :=
    FileNames["*.json", $evaluationDirectory]

(*!
    \function ARCColors
    
    \calltable
        ARCColors[] '' Displays the ARC colors and their associated numbers.
    
    \maintainer danielb
*)
Clear[ARCColors];
ARCColors[] :=
    Module[{},
        Grid[
            {
                Function[{item},
                    Framed[
                        Style[
                            item[[1]],
                            If [MatchQ[item[[1]], 0 | 1 | 5 | 6 | 8 | 9],
                                White
                                ,
                                Black
                            ]
                        ],
                        ImageSize -> {40, 40},
                        FrameStyle -> None,
                        Alignment -> {Center, Center}
                    ]
                ] /@ Normal[$integerToColor]
            },
            Background -> {
                None,
                None,
                Map[
                    Function[{i}, {1, i} -> $integerToColor[i - 1]],
                    Range[Length[$integerToColor]]
                ]
            }
        ]
    ]

(*!
    \function ARCRandomExample
    
    \calltable
        ARCRandomExample[] '' Returns a random ARC example.
    
    \maintainer danielb
*)
Clear[ARCRandomExample];
ARCRandomExample[] :=
    Module[{},
        ARCParseFile[
            RandomChoice[ARCTrainingFiles[]]
        ]
    ]

(*!
    \function ARCParseScene
    
    \calltable
        ARCParseScene[scene] '' Parses an ARC scene.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCParseScene]
    
    \maintainer danielb
*)
Clear[ARCParseScene];
Options[ARCParseScene] =
{
    "FormMultiColorCompositeObjects" -> True,               (*< Whether connected single-color objects should be combined to form multi-color composite objects. If set to Automatic, the OtherScene option will be used to help make more informed decisions. *)
    "OtherScene" -> Null,                                   (*< A parse of the scene this scene corresponds to. For example, if `scene` is an input scene, then OtherScene would be the output scene, and vice versa. If provided, we can use OtherScene to resolve some ambiguities about whether to chunk objects into composite objects. An association of the form <|"WithoutMultiColorCompositeObjects" -> ..., "WithMultiColorCompositeObjects" -> ...|> should be passed. *)
    "SingleColorObjects" -> Automatic,                      (*< If the single color objects have already been determined, they can be passed in to save time. *)
    "InferPropertiesThatRequireFullObjectList" -> True      (*< Rank and RankInverse properties require that we have the full object list. If False, we won't infer those properties. *)
};
ARCParseScene[scene_ARCScene, opts:OptionsPattern[]] :=
    Module[{background, objects},
        
        background = ARCInferBackgroundColor[
            scene,
            "FormMultiColorCompositeObjects" -> OptionValue["FormMultiColorCompositeObjects"]
        ];
        
        objects =
            ReturnIfFailure@
            ARCParseScene[scene, background, opts];
        
        notableSubImages = ARCNotableSubImages[objects, ImageWidth[scene], ImageHeight[scene]];
        
        If [MatchQ[notableSubImages, {_, __}],
            objects = Flatten[
                Function[{object},
                    ReturnIfFailure@
                    ARCMakeObjectsForSubImages[
                        object,
                        notableSubImages,
                        scene,
                        background,
                        opts
                    ]
                ] /@ objects
            ]
        ];
        
        (* If [TrueQ[OptionValue["FormMultiColorCompositeObjects"]] =!= False,
            ARCEcho["Scene" -> scene];
            ARCEcho["Objects" -> SimplifyObjects[objects]];
        ]; *)
        
        <|
            "Background" -> background,
            "Width" -> ImageWidth[scene[[1]]],
            "Height" -> ImageHeight[scene[[1]]],
            "Objects" -> objects,
            "Scene" -> scene
        |>
    ]

ARCParseScene[scene_ARCScene, backgroundColor_Integer, OptionsPattern[]] :=
    Module[
        {
            sceneImage = scene[[1]],
            objects,
            gridsAndDividers = {},
            nonCompositeObjectsFromOtherScene,
            singleOrMultiColorObjects
        },
        
        (* Contiguous objects of a single color. *)
        objects = Replace[
            OptionValue["SingleColorObjects"],
            Automatic ->
                ReturnIfFailure@
                ARCImageRegionToObject[
                    ReturnIfFailure@
                    ARCContiguousImageRegions[
                        scene,
                        "Background" -> backgroundColor
                    ],
                    ImageWidth[sceneImage],
                    ImageHeight[sceneImage]
                ]
        ];
        
        (* Determine if any of the objects are grids or dividers. *)
        objects =
            ARCGridOrDividerQ["Objects" -> objects, ImageWidth[scene], ImageHeight[scene]];
        
        (* Remove any grids/dividers from the main object list, since we don't want them
           to get combined with other objects into composite objects. *)
        gridsAndDividers = Select[objects, TrueQ[#["GridOrDivider"]] &];
        objects = Select[objects, !TrueQ[#["GridOrDivider"]] &];
        
        (*ARCEcho[SimplifyObjects[gridsAndDividers]];*)
        
        (* Set the color of any grid/divider pixels in the image to the background color so that
           when forming composite objects, we don't end up including grids/dividers in with larger
           composite objects. *)
        Function[{position},
            sceneImage[[Sequence @@ position]] = backgroundColor
        ] /@ Flatten[gridsAndDividers[[All, "PixelPositions"]], 1];
        
        (*ARCEcho[ARCScene[sceneImage]];*)
        
        If [And[
                ListQ[
                    nonCompositeObjectsFromOtherScene =
                        OptionValue["OtherScene"]["WithoutMultiColorCompositeObjects"]
                ],
                (* For now, only do this when we're in the mode that is trying to parse
                   the scene without forming composite objects, since this otherwise
                   breaks 3c9b0459. That said, this condition feels pretty
                   artificial so we may need to revisit this later. *)
                OptionValue["FormMultiColorCompositeObjects"] === False
            ],
            (* See whether we should break up any single-color objects due to them
               being fully overlapped by multiple objects from the other scene. *)
            objects =
                Function[{object},
                    Sequence @@
                    ARCSplitObjectIfCorrespondingToMultipleObjectsInOtherScene[
                        object,
                        nonCompositeObjectsFromOtherScene,
                        ImageWidth[sceneImage],
                        ImageHeight[sceneImage]
                    ]
                ] /@ objects;
        ];
        
        If [MatchQ[OptionValue["FormMultiColorCompositeObjects"], True | Automatic],
            
            If [And[
                    MatchQ[OptionValue["FormMultiColorCompositeObjects"], Automatic],
                    !AssociationQ[OptionValue["OtherScene"]]
                ],
                ReturnFailure[
                    "OtherSceneMissing",
                    "When calling ARCParseScene with FormMultiColorCompositeObjects -> Automatic, the OtherScene option must be specified.",
                    "Scene" -> scene
                ]
            ];
            
            (* Contiguous objects of one or more colors. *)
            singleOrMultiColorObjects =
                Function[{imageRegion},
                    (* These image regions are color agnostic. *)
                    Sett[imageRegion, {"Colors" -> Null, "Color" -> Null}]
                ] /@
                    ReturnIfFailure@
                    ARCImageRegionToObject[
                        ReturnIfFailure@
                        ARCContiguousImageRegions[
                            (* Make all non-background pixels white. *)
                            ARCToMonochrome[sceneImage, backgroundColor],
                            "Background" -> backgroundColor
                        ],
                        ImageWidth[sceneImage],
                        ImageHeight[sceneImage]
                    ];
            
            (*ARCEcho[singleOrMultiColorObjects];*)
            
            objects =
                ReturnIfFailure@
                ARCFormCompositeObjects[
                    ARCScene[sceneImage],
                    objects,
                    singleOrMultiColorObjects,
                    "OtherScene" -> OptionValue["OtherScene"]
                ];
        ];
        
        objects = Join[gridsAndDividers, objects];
        
        objects = ARCInferColorCountPropertyValues[objects, scene];
        
        If [TrueQ[OptionValue["InferPropertiesThatRequireFullObjectList"]],
            objects = ARCInferPropertiesThatRequireFullObjectList[objects]
        ];
        
        (*ARCEcho[SimplifyObjects[objects]];*)
        
        objects
    ]

(*!
    \function ARCInferColorCountPropertyValues
    
    \calltable
        ARCInferColorCountPropertyValues[objects, scene] '' Given the objects from a scene, sets their ColorUseCount property values.
    
    \maintainer danielb
*)
Clear[ARCInferColorCountPropertyValues];
ARCInferColorCountPropertyValues[objects_List, scene_ARCScene] :=
    Module[{colorCounts},
        
        colorCounts = Counts[Flatten[scene[[1]]]];
        
        Function[{object},
            If [MatchQ[object["Colors"], {_}],
                Sett[
                    object,
                    "ColorUseCount" -> colorCounts[object[["Colors", 1]]]
                ]
                ,
                object
            ]
        ] /@ objects
    ]

(*!
    \function ARCParseInputAndOutputScenes
    
    \calltable
        ARCParseInputAndOutputScenes[inputScene, outputScene] '' Given the scenes for an input/output example, parses the scenes.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCParseInputAndOutputScenes]
    
    \maintainer danielb
*)
Clear[ARCParseInputAndOutputScenes];
Options[ARCParseInputAndOutputScenes] =
{
    "FormMultiColorCompositeObjects" -> True        (*< Whether connected single-color objects should be combined to form multi-color composite objects. *)
};
ARCParseInputAndOutputScenes[inputScene_ARCScene, outputScene_ARCScene, OptionsPattern[]] :=
    Module[
        {
            inputSceneParseWithoutMultiColorCompositeObjects,
            inputSceneParseWithMultiColorCompositeObjects,
            inputSceneParsed,
            outputSceneParseWithoutMultiColorCompositeObjects,
            outputSceneParseWithMultiColorCompositeObjects,
            outputSceneParsed
        },
        
        inputSceneParseWithoutMultiColorCompositeObjects =
            ReturnIfFailure@
            ARCParseScene[
                inputScene,
                "FormMultiColorCompositeObjects" -> False,
                "InferPropertiesThatRequireFullObjectList" -> False
            ];
        
        outputSceneParseWithoutMultiColorCompositeObjects =
            ReturnIfFailure@
            ARCParseScene[
                outputScene,
                "FormMultiColorCompositeObjects" -> False,
                "InferPropertiesThatRequireFullObjectList" -> False
            ];
        
        If [TrueQ[OptionValue["FormMultiColorCompositeObjects"]],
            
            inputSceneParseWithMultiColorCompositeObjects =
                ReturnIfFailure@
                ARCParseScene[
                    inputScene,
                    "FormMultiColorCompositeObjects" -> True,
                    "SingleColorObjects" -> inputSceneParseWithoutMultiColorCompositeObjects["Objects"],
                    "InferPropertiesThatRequireFullObjectList" -> False
                ];
            
            outputSceneParseWithMultiColorCompositeObjects =
                ReturnIfFailure@
                ARCParseScene[
                    outputScene,
                    "FormMultiColorCompositeObjects" -> True,
                    "SingleColorObjects" -> outputSceneParseWithoutMultiColorCompositeObjects["Objects"],
                    "InferPropertiesThatRequireFullObjectList" -> False
                ];
            
            (*ARCEcho2[outputSceneParseWithMultiColorCompositeObjects];*)
            
            (* Parse the input scene again, this time passing along information about the objects
               in the output scene to be used to disambiguate multi-color composite objects. *)
            inputSceneParsed =
                ReturnIfFailure@
                ARCParseScene[
                    inputScene,
                    "FormMultiColorCompositeObjects" -> Automatic,
                    "SingleColorObjects" -> inputSceneParseWithoutMultiColorCompositeObjects["Objects"],
                    "OtherScene" -> <|
                        "WithoutMultiColorCompositeObjects" -> outputSceneParseWithoutMultiColorCompositeObjects["Objects"],
                        "WithMultiColorCompositeObjects" -> outputSceneParseWithMultiColorCompositeObjects["Objects"]
                    |>
                ];
            
            (* Parse the output scene again, this time passing along information about the objects
               in the input scene to be used to disambiguate multi-color composite objects. *)
            outputSceneParsed =
                ReturnIfFailure@
                ARCParseScene[
                    outputScene,
                    "FormMultiColorCompositeObjects" -> Automatic,
                    "SingleColorObjects" -> outputSceneParseWithoutMultiColorCompositeObjects["Objects"],
                    "OtherScene" -> <|
                        "WithoutMultiColorCompositeObjects" -> inputSceneParseWithoutMultiColorCompositeObjects["Objects"],
                        "WithMultiColorCompositeObjects" -> inputSceneParseWithMultiColorCompositeObjects["Objects"]
                    |>
                ];
            
            <|
                "Input" -> inputSceneParsed,
                "Output" -> outputSceneParsed
            |>
            ,
            (* We have been asked to not form composite objects. *)
            
            (* Parse the input scene again, this time passing along information about the objects
               in the output scene to be used to disambiguate things. *)
            inputSceneParsed =
                ReturnIfFailure@
                ARCParseScene[
                    inputScene,
                    "FormMultiColorCompositeObjects" -> False,
                    "OtherScene" -> <|
                        "WithoutMultiColorCompositeObjects" -> outputSceneParseWithoutMultiColorCompositeObjects["Objects"]
                    |>
                ];
            
            (* Parse the output scene again, this time passing along information about the objects
               in the input scene to be used to disambiguate things. *)
            outputSceneParsed =
                ReturnIfFailure@
                ARCParseScene[
                    outputScene,
                    "FormMultiColorCompositeObjects" -> False,
                    "OtherScene" -> <|
                        "WithoutMultiColorCompositeObjects" -> inputSceneParseWithoutMultiColorCompositeObjects["Objects"]
                    |>
                ];
            
            <|
                "Input" -> inputSceneParsed,
                "Output" -> outputSceneParsed
            |>
        ]
    ]

(*!
    \function ARCContiguousImageRegions
    
    \calltable
        ARCContiguousImageRegions[image] '' Given an image, breaks it down into contiguous image regions.
    
    Examples:
    
    ARCContiguousImageRegions[{{2, 2, 2}, {2, 1, 8}, {2, 8, 8}}]
    
    ===
    
    {
        <|"Color" -> 1, "Position" -> {2, 2}, "Pixels" -> {{1}}|>,
        <|"Color" -> 2, "Position" -> {1, 1}, "Pixels" -> {{1, 1, 1}, {1, 0, 0}, {1, 0, 0}}|>,
        <|"Color" -> 8, "Position" -> {2, 2}, "Pixels" -> {{0, 1}, {1, 1}}|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCContiguousImageRegions]
    
    \maintainer danielb
*)
Clear[ARCContiguousImageRegions];
Options[ARCContiguousImageRegions] =
{
    "Background" -> 0,          (*< The background color, to be ignored. *)
    "FollowDiagonals" -> True   (*< Whether to consider diagonals as connective. *)
};
ARCContiguousImageRegions[imageIn_List, OptionsPattern[]] :=
    Module[
        {
            image,
            res,
            pixelsOfColor,
            componentMatrix,
            pixelPositions,
            xValues,
            yValues,
            xMinMax,
            yMinMax,
            bottomRightCorner,
            position,
            background = OptionValue["Background"],
            blackTemporaryColor = 999999
        },
        
        image = Replace[
            imageIn,
            {
                background -> $nonImageColor,
                0 -> blackTemporaryColor
            },
            {2}
        ];
        
        res = Function[{color},
            pixelsOfColor = Replace[image, Except[color] -> 0, {2}];
            componentMatrix = MorphologicalComponents[
                pixelsOfColor,
                CornerNeighbors -> OptionValue["FollowDiagonals"]
            ];
            componentNumbers =
                DeleteCases[DeleteDuplicates[Flatten[componentMatrix]], 0];
            Function[{componentNumber},
                pixelPositions = Position[componentMatrix, componentNumber];
                actualColor = Replace[color, blackTemporaryColor -> 0];
                <|
                    "Color" -> actualColor,
                    "Position" -> (
                        xValues = pixelPositions[[All, 1]];
                        yValues = pixelPositions[[All, 2]];
                        xMinMax = MinMax[xValues];
                        yMinMax = MinMax[yValues];
                        bottomRightCorner = {
                            xMinMax[[2]],
                            yMinMax[[2]]
                        };
                        position = {
                            xMinMax[[1]],
                            yMinMax[[1]]
                        };
                        position
                    ),
                    (* Should the matrix values be colored or not? Not sure. *)
                    "Image" -> Replace[
                        (* Take the rectangular part of the matrix occupied by this object. *)
                        componentMatrix[[
                            position[[1]] ;; bottomRightCorner[[1]],
                            position[[2]] ;; bottomRightCorner[[2]]
                        ]],
                        {
                            componentNumber -> actualColor,
                            (* We need to make any pixels not in our object the $nonImageColor
                               incase there's another object within the bounds of this object's
                               rectangular area. *)
                            Except[componentNumber] :> $nonImageColor
                        },
                        {2}
                    ],
                    (* Non-colored *)
                    (*"Image" -> Replace[
                        componentMatrix[[
                            position[[1]] ;; bottomRightCorner[[1]],
                            position[[2]] ;; bottomRightCorner[[2]]
                        ]],
                        Except[0] -> 1,
                        {2}
                    ],*)
                    "PixelPositions" -> pixelPositions
                |>
            ] /@ componentNumbers
        ] /@
            Replace[
                DeleteCases[
                    ARCColorIntegers[],
                    background
                ],
                0 -> blackTemporaryColor,
                {1}
             ];
        
        ARCImageRegions[Flatten[res]]
    ]

ARCContiguousImageRegions[ARCScene[image_List], opts:OptionsPattern[]] :=
    ARCContiguousImageRegions[image, opts]

(* Formatting *)
ARCImageRegions /:
MakeBoxes[imageRegions_ARCImageRegions, StandardForm] :=
    Module[{res},
        
        res =
            Column[
                Replace[
                    imageRegions[[1]],
                    region_Association :> Tooltip[
                        ARCScene[
                            region["Image"]
                            (*Replace[
                                region["Image"],
                                1 -> region["Color"],
                                {2}
                            ]*)
                        ],
                        Style[
                            Indent2[region, "ColumnsAvailable" -> 60],
                            FontFamily -> "Courier"
                        ]
                    ],
                    {1}
                ]
            ];
        
        ToBoxes[res]
    ]

expr_ARCImageRegions[keys___] := expr[[1, keys]]

(*!
    \function ARCColorIntegers
    
    \calltable
        ARCColorIntegers[] '' Returns the ARC integers used to specify color.
    
    \maintainer danielb
*)
Clear[ARCColorIntegers];
ARCColorIntegers[] :=
    (
        ARCColorIntegers[] := Keys[$integerToColor];
        ARCColorIntegers[]
    )

(*!
    \function ARCImageRegionToObject
    
    \calltable
        ARCImageRegionToObject[region] '' Given an image region, returns an object.
    
    Examples:
    
    ARCImageRegionToObject[
        EchoIndented[
            ARCContiguousImageRegions[ARCParseFile["9565186b"]["Train", 1, "Input"]][2]
        ]
    ]
    
    ===
    
    <|"Color" -> 2, "Width" -> 3, "Height" -> 3|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCImageRegionToObject]
    
    \maintainer danielb
*)
Clear[ARCImageRegionToObject];
ARCImageRegionToObject[region_Association, sceneWidth_Integer, sceneHeight_Integer] :=
    Module[{},
        ARCInferObjectProperties[
            <|
                "UUID" -> CreateUUID[],
                "Image" -> ARCScene[
                    Replace[
                        region["Image"],
                        1 -> region["Color"],
                        {2}
                    ]
                ],
                "PixelPositions" -> region["PixelPositions"],
                ARCInferShapeAndShapes[region["Image"]],
                "Colors" -> {region["Color"]},
                InferColor["Color" -> <|"Colors" -> {region["Color"]}|>],
                "Position" -> region["Position"]
            |>,
            sceneWidth,
            sceneHeight
        ]
    ]

ARCImageRegionToObject[regions_List, sceneWidth_Integer, sceneHeight_Integer] :=
    ARCImageRegionToObject[#, sceneWidth, sceneHeight] & /@ regions

ARCImageRegionToObject[ARCImageRegions[regions_List], sceneWidth_Integer, sceneHeight_Integer] :=
    ARCImageRegionToObject[regions, sceneWidth, sceneHeight]

(*!
    \function ARCAddRankProperties
    
    \calltable
        ARCAddRankProperties[properties] '' Given a list of core properties, adds 'Rank' properties.
    
    Examples:
    
    ARCAddRankProperties[
        <|
            "Colors" -> <|"Type" -> Repeated["Color"]|>,
            "Width" -> <|"Type" -> "Integer"|>
        |>
    ]
    
    ===
    
    <|
        "Colors" -> <|"Type" -> Repeated["Color"]|>,
        "Width" -> <|"Type" -> "Integer"|>,
        "WidthRank" -> <|"Type" -> "Integer"|>
    |>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCAddRankProperties]
    
    \maintainer danielb
*)
Clear[ARCAddRankProperties];
ARCAddRankProperties[properties_Association] :=
    Module[{numericProperties},
        
        numericProperties = Select[properties, #["Type"] === "Integer" &];
        
        Join[
            properties,
            Association[
                Function[{propertyName},
                    {
                        StringJoin[propertyName, ".Rank"] -> <|
                            "Type" -> "Integer",
                            "Rank" -> True,
                            "RankOf" -> propertyName,
                            "InverseRankProperty" -> propertyName <> ".InverseRank"
                        |>,
                        StringJoin[propertyName, ".InverseRank"] -> <|
                            "Type" -> "Integer",
                            "Rank" -> True,
                            "InverseRank" -> True,
                            "RankOf" -> propertyName
                        |>
                    }
                ] /@ Keys[numericProperties]
            ]
        ]
    ]

(* Metadata about properties.
   RuleConditionQuality:
       A quality score of how much we should favor rule conditions that use a given property.
       By default, we check how far down the property is in the $properties list, with the
       top of the list being equivalent to a score of 1, and the bottom of the list being
       a score of 0, but sometimes we want to customize this score, such as to compensate
       for the ARCExpressionComplexity score of a property's values unfairly penalyzing
       conditions with that property. *)
$properties = <|
    (* As of August 3 2022 we'll order "Colors" above "Image" so that when we find object
       references, we'll list Colors references above Image references, as they feel more
       general / better for forming rules. e.g. 05f2a901 *)
    "Colors" -> <|
        "Type" -> Repeated["Color"],
        "Type2" -> "Color"
    |>,
    "Color" -> <|
        "Type" -> "Color",
        "Type2" -> "Color"
    |>,
    "Image" -> <|
        "Type" -> "Image",
        "Type2" -> "Image",
        (* We'll fudge this higher than we otherwise would since the ARCExpressionComplexity
           of values for this property tend to penalize these conditions too much. *)
        "RuleConditionQuality" -> 1.2
    |>,
    (* Will exclude for now. *)
    (*"PixelPositions"*)
    "Shape" -> <|
        "Type" -> "Shape",
        "Type2" -> "Shape",
        (* We'll fudge this higher than we otherwise would since the ARCExpressionComplexity
           of values for this property tend to penalize these conditions too much. *)
        "RuleConditionQuality" -> 1.2
    |>,
    "Shapes" -> <|
        "Type" -> Repeated["Shape"],
        "Type2" -> "Shape",
        (* We'll fudge this higher than we otherwise would since the ARCExpressionComplexity
           of values for this property tend to penalize these conditions too much. *)
        "RuleConditionQuality" -> 1
    |>,
    (* We'll put properties like Height above properties like Y, since properties like
       Height and HeightRank seem better than properties like Y for producing rules. *)
    "Width" -> <|
        "Type" -> "Integer",
        "Type2" -> "SizeDimensionValue"
    |>,
    "Height" -> <|
        "Type" -> "Integer",
        "Type2" -> "SizeDimensionValue"
    |>,
    "Length" -> <|
        "Type" -> "Integer",
        "Type2" -> "SizeDimensionValue"
    |>,
    "Position" -> <|
        "Type" -> "Position",
        "Type2" -> "Position"
    |>,
    "Y" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue",
        "RuleConditionQuality" -> 0.5
    |>,
    "X" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue",
        "RuleConditionQuality" -> 0.5
    |>,
    "Y2" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue",
        "RuleConditionQuality" -> 0.5
    |>,
    "X2" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue",
        "RuleConditionQuality" -> 0.5
    |>,
    "PrimarySizeDimension" -> <|
        "Type" -> "Integer",
        "Type2" -> "SizeDimension"
    |>,
    "AspectRatio" -> <|
        "Type" -> "Integer",
        "Type2" -> "SizeDimensionRatio"
    |>,
    "Area" -> <|
        "Type" -> "Integer",
        "Type2" -> "Area"
    |>,
    "FilledArea" -> <|
        "Type" -> "Integer",
        "Type2" -> "Area"
    |>,
    "FilledProportion" -> <|
        "Type" -> "Integer",
        "Type2" -> "AreaProportion"
    |>,
    (* The number of pixels in the scene with this color. *)
    "ColorUseCount" -> <|
        "Type" -> "Integer",
        "Type2" -> "Count"
    |>
|>;

$properties = ARCAddRankProperties[$properties];

(* Given a property, what position is it within the list of properties? *)
$propertyListPositions =
    MapIndexed[
        Function[{property, position},
            property -> First[position]
        ],
        Keys[$properties]
    ];

(*EchoIndented[$properties];*)

(*!
    \function ARCClassifyShape
    
    \calltable
        ARCClassifyShape[image] '' Given an image of a contiguous image region, returns a list of named shapes it matches.
    
    Examples:
    
    ARCClassifyShape[{{1, 1}, {1, 1}}] === {<|"Name" -> "Square"|>, <|"Name" -> "Rectangle"|>}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCClassifyShape]
    
    \maintainer danielb
*)
(* Shapes that might no longer be that type of shape if rotated by an angle that is a
   multiple of 90 degrees. *)
$rotationSensitiveShapes = <|
    "L" -> True,
    "Triangle" -> True,
    (* For testing purposes. *)
    "MyShape" -> True,
    (* For testing purposes. *)
    "MyShape2" -> True
|>;
(* Shapes that might no longer be that type of shape if rotated by an angle that is a
   multiple of 90 degrees. *)
$flipSensitiveShapes = <|
    "L" -> True
|>;
Clear[ARCClassifyShape];
Options[ARCClassifyShape] =
{
    "IncludeImageShapes" -> False   (*< Whether to include shapes of type <|"Type" -> "Image", ...|>. *)
};
ARCClassifyShape[image_List, OptionsPattern[]] :=
    Module[{},
        {
            If [TrueQ[OptionValue["IncludeImageShapes"]],
                ARCImageRotations[ARCToMonochrome[image, $nonImageColor]]
                ,
                Nothing
            ],
            Sequence @@
            DeleteDuplicates@
            ARCAddGeneralizeShapes@
            Flatten@
            {
                ARCClassifyPixel[image],
                ARCClassifyLine[image],
                ARCClassifySquare[image],
                ARCClassifyRectange[image],
                ARCClassifyL[image],
                ARCClassifyTriangle[image],
                Sequence @@
                ARCClassifyRotatedImage[image, ARCClassifyTriangle],
                Sequence @@
                ARCClassifyRotatedImage[image, ARCClassifyL],
                Sequence @@
                ARCClassifyFlippedImage[image, ARCClassifyL]
            }
        }
    ]

(*!
    \function ARCClassifyTriangle
    
    \calltable
        ARCClassifyTriangle[image] '' Checks whether the given image can be classified as a triangle.
    
    Examples:
    
    ARCClassifyTriangle[{{-1, 1, -1}, {1, 1, 1}}] === <|"Name" -> "Triangle"|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCClassifyTriangle]
    
    \maintainer danielb
*)
Clear[ARCClassifyTriangle];
ARCClassifyTriangle[image_] :=
    Module[{width = ImageWidth[image], height = ImageHeight[image]},
        If [And[
                height >= 2,
                width === 3 + (height - 2) * 2,
                MatchQ[
                    image,
                    Function[{y},
                        With[{transparentWidth = (width - 1) / 2 - y + 1},
                            {
                                If [transparentWidth > 0,
                                    Repeated[$nonImageColor, {transparentWidth}]
                                    ,
                                    Nothing
                                ],
                                Repeated[Except[$nonImageColor], {width - 2 * transparentWidth}],
                                If [transparentWidth > 0,
                                    Repeated[$nonImageColor, {transparentWidth}]
                                    ,
                                    Nothing
                                ]
                            }
                        ]
                    ] /@ Range[height]
                ]
            ],
            <|
                "Name" -> "Triangle"
            |>
            ,
            Nothing
        ]
    ]

(*!
    \function ARCClassifySquare
    
    \calltable
        ARCClassifySquare[image] '' Checks whether the given image can be classified as a square.
    
    Examples:
    
    ARCClassifySquare[{{1, 1}, {1, 1}}] === <|"Name" -> "Square"|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCClassifySquare]
    
    \maintainer danielb
*)
Clear[ARCClassifySquare];
ARCClassifySquare[image_List] :=
    Module[{rectangle},
        If [And[
                ImageWidth[image] === ImageHeight[image],
                (rectangle = ARCClassifyRectange[image]) =!= Nothing
            ],
            Sett[rectangle, "Name" -> "Square"]
            ,
            Nothing
        ]
    ]

(*!
    \function ARCClassifyRectange
    
    \calltable
        ARCClassifyRectange[image] '' Checks whether the given image can be classified as a rectangle.
    
    NOTE: As of Aug 6 2022, we're not including any metadata to indicate whether the rectangle
          is filled or empty.
    
    Examples:
    
    ARCClassifyRectange[{{1, 1}, {1, 1}}] === <|"Name" -> "Rectangle"|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCClassifyRectange]
    
    \maintainer danielb
*)
Clear[ARCClassifyRectange];
ARCClassifyRectange[image_List] :=
    (* Question: Should rectangles with a width or height of 1 be given the "Rectangle"
                 designation in addition to "Line"? *)
    If [MatchQ[
            image,
            Alternatives[
                (* Filled rectangle. *)
                List[
                    Repeated[
                        List[
                            Repeated[c:Except[$nonImageColor]]
                        ]
                    ]
                ],
                (* Empty rectangle. *)
                List[
                    (* Horizontal line. *)
                    List[Repeated[c:Except[$nonImageColor]]],
                    Repeated[
                        List[
                            Except[$nonImageColor],
                            Repeated[_, {0, Infinity}],
                            Except[$nonImageColor]
                        ],
                        {0, Infinity}
                    ],
                    (* Horizontal line. *)
                    List[Repeated[c:Except[$nonImageColor]]]
                ]
            ]
        ],
        <|
            "Name" -> "Rectangle",
            Which[
                And[
                    Length[image] >= 2,
                    Length[image[[1]]] >= 2,
                    MatchQ[DeleteDuplicates[Flatten[image[[2 ;; -2, 2 ;; -2]]]], {$nonImageColor}]
                ],
                    "Filled" -> False,
                MatchQ[DeleteDuplicates[Flatten[image]], {_}],
                    "Filled" -> True,
                True,
                    Nothing
            ]
        |>
        ,
        Nothing
    ]

(*!
    \function ARCClassifyPixel
    
    \calltable
        ARCClassifyPixel[image] '' Checks whether the given image can be classified as a single pixel.
    
    Examples:
    
    ARCClassifyPixel[{{1}}] === <|"Name" -> "Pixel"|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCClassifyPixel]
    
    \maintainer danielb
*)
Clear[ARCClassifyPixel];
ARCClassifyPixel[image_List] :=
    If [And[
            ImageWidth[image] === 1,
            ImageHeight[image] === 1
        ],
        <|"Name" -> "Pixel"|>
        ,
        Nothing
    ]

(*!
    \function ARCClassifyL
    
    \calltable
        ARCClassifyL[image] '' Checks whether the given image can be classified as an L shape.
    
    Examples:
    
    ARCClassifyL[{{1, 0, 0}, {1, 0, 0}, {1, 1, 1}}] === <|"Name" -> "L"|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCClassifyL]
    
    \maintainer danielb
*)
Clear[ARCClassifyL];
ARCClassifyL[image_List] :=
    If [And[
            ImageWidth[image] > 1,
            ImageHeight[image] > 1,
            (* Vertical line *)
            MatchQ[
                Most[image],
                List[
                    Repeated[
                        List[
                            Except[$nonImageColor],
                            c:Repeated[$nonImageColor]
                        ]
                    ]
                ]
            ],
            (* Horizontal line *)
            MatchQ[
                Last[image],
                List[Repeated[c:Except[$nonImageColor]]]
            ]
        ],
        <|"Name" -> "L"|>
        ,
        Nothing
    ]

(*!
    \function ARCClassifyRotatedImage
    
    \calltable
        ARCClassifyRotatedImage[image, classifyFunction] '' Checks whether the given image can be classified by the given function after any rotations.
    
    Examples:
    
    ARCClassifyRotatedImage[m = {{1, 1, 1, 1}, {1, 0, 0, 0}, {1, 0, 0, 0}}, ARCClassifyL]
    
    ===
    
    {<|"Name" -> "L", "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>|>}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCClassifyRotatedImage]
    
    \maintainer danielb
*)
Clear[ARCClassifyRotatedImage];
ARCClassifyRotatedImage[imageIn_List, classifyFunction_] :=
    Module[{image = imageIn, classification},
        Function[{angle},
            (* Rotate by 90 degrees. *)
            image = RotateImage[image, 90];
            If [(classification = classifyFunction[image]) =!= Nothing,
                Join[
                    classification,
                    <|
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> angle|>
                    |>
                ]
                ,
                Nothing
            ]
        ] /@ {270, 180, 90}
    ]

(*!
    \function ARCClassifyFlippedImage
    
    \calltable
        ARCClassifyFlippedImage[image, classifyFunction] '' Checks whether the given image can be classified by the given function after a horizontal or vertical flip.
    
    Examples:
    
    ARCClassifyFlippedImage[{{1, 1, 1, 1}, {1, 0, 0, 0}, {1, 0, 0, 0}}, ARCClassifyL]
    
    ===
    
    {<|"Name" -> "L", "Transform" -> "Flip", "Direction" -> "Vertical"|>}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCClassifyFlippedImage]
    
    \maintainer danielb
*)
Clear[ARCClassifyFlippedImage];
ARCClassifyFlippedImage[imageIn_List, classifyFunction_] :=
    Module[{image = imageIn, classification},
        Function[{transform},
            (* Rotate by 90 degrees. *)
            image = transform["Function"][imageIn];
            If [(classification = classifyFunction[image]) =!= Nothing,
                Join[
                    classification,
                    <|
                        "Transform" -> <|
                            "Type" -> transform["Transform"],
                            "Direction" -> transform["Direction"]
                        |>
                    |>
                ]
                ,
                Nothing
            ]
        ] /@ {
            <|
                "Transform" -> "Flip",
                "Direction" -> "Vertical",
                "Function" -> Reverse
            |>,
            <|
                "Transform" -> "Flip",
                "Direction" -> "Horizontal",
                "Function" -> Function[Map[Reverse, #]]
            |>
        }
    ]

(*!
    \function ARCIndent
    
    \calltable
        ARCIndent[expr] '' Indents the given ARC expression, keeping appropriate things formatted.
    
    \maintainer danielb
*)
Clear[ARCIndent];
ARCIndent[expr_, opts:OptionsPattern[]] :=
    Module[{temporaryAssociationSymbol},
        Indent3[
            Replace2[
                expr,
                temporaryAssociationSymbol,
                {
                    assoc:temporaryAssociationSymbol[a___, "Colors" -> value: _List | _Except | _Alternatives, b___] /; !FreeQ[value, _Integer] :> (
                        <|
                            a,
                            "Colors" -> Replace[
                                value,
                                color_Integer :> $integerToColor[color],
                                {0, Infinity}
                            ],
                            b
                        |>
                    ),
                    assoc:temporaryAssociationSymbol[a___, "Color" -> value: _Integer | _Except | _Alternatives, b___] /; !FreeQ[value, _Integer] :> (
                        <|
                            a,
                            "Color" -> Replace[
                                value,
                                color_Integer :> $integerToColor[color],
                                {0, Infinity}
                            ],
                            b
                        |>
                    )
                },
                {0, Infinity},
                Heads -> True
            ]
            ,
            "FormattedHeads" -> {ARCScene, RGBColor, GrayLevel, TestResultObject},
            opts,
            "ColumnsAvailable" -> 90
        ]
    ]

(*!
    \function ARCClassifyLine
    
    \calltable
        ARCClassifyLine[image] '' Checks whether the given image can be classified as a line.
    
    Examples:
    
    ARCClassifyLine[{{1}, {1}}] === <|"Name" -> "Line", "Angle" -> 90|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCClassifyLine]
    
    \maintainer danielb
*)
Clear[ARCClassifyLine];
ARCClassifyLine[image_List] :=
    Which[
        (* Vertical *)
        MatchQ[
            image,
            List[
                Repeated[{c:Except[0]}, {2, Infinity}]
            ]
        ],
            <|"Name" -> "Line", "Angle" -> 90|>,
        (* Horizontal *)
        MatchQ[
            image,
            {{Repeated[c:Except[0], {2, Infinity}]}}
        ],
            <|"Name" -> "Line", "Angle" -> 0|>,
        True,
            Nothing
    ]

(*!
    \function ARCInferBackgroundColor
    
    \calltable
        ARCInferBackgroundColor[example] '' Given an ARC example, tries to infer the background color.
    
    TODO: If we are parsing a scene whereby we already have the rule set, we should probably
          pass in the list of colors used by rules, and generally avoid choosing one of those
          colors as the background color.
    
    Example:
    
    (ARCInferBackgroundColor[ARCParseFile[#1]] & ) /@ $examples === $examples
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCInferBackgroundColor]
    
    \maintainer danielb
*)
Clear[ARCInferBackgroundColor];
Options[ARCInferBackgroundColor] =
{
    "FormMultiColorCompositeObjects" -> True
};
ARCInferBackgroundColor[example_, OptionsPattern[]] :=
    Module[{scenes, colorCounts, stats},
        
        scenes = Cases[example, _ARCScene, {0, Infinity}][[All, 1]];
        
        colorCounts = Normal[Reverse[Sort[Counts[Flatten[scenes]]]]];
        
        If [Length[colorCounts] === 1,
            (* What should we do if the entire image is a single color? For the moment
               we'll use black as the background color, but this probably isn't what we'd
               want in many cases. *)
            Return[0, Module]
        ];
        
        stats = <|
            "Ratio" -> Round[Normal[colorCounts][[1, 2]] / Normal[colorCounts][[2, 2]], 0.01],
            "Counts" -> colorCounts
        |>;
        
        XEcho[stats];
        
        (* It's not clear to me how this should be done, so for now we'll use some heuristics.
           We want to be cautious about choosing a non-black background, since the vast
           majority of scenes will use black as the background color, so the cost of non-black
           false positives will be high, and quickly diminish or eliminate the benefit of having
           a background color detector. *)
        Which[
            stats["Ratio"] >= 10,
                colorCounts[[1, 1]],
            And[
                stats["Ratio"] >= 2,
                (* The second most common color isn't black. *)
                colorCounts[[2, 1]] =!= 0,
                (* For now we're going to disable this case when we're in the mode where
                   we're not forming composite objects, because these inputs are generally
                   quite small with relatively little background color showing, so the
                   chance for false positives is higher, such as c8f0f002's test case.
                   (FYI, its ratio was exactly 2) We may need to revisit this if we find
                   cases where we _do_ need a non-black background color for a
                   "FormMultiColorCompositeObjects" -> False input. If so, perhaps we
                   could allow this, but require a ratio above 2, or perhaps we could
                   be more lenient for the output scene, since I feel like it has been
                   more common that the output scene is sparse.
                   ARCInferBackgroundColor-20220819-226TGE *)
                OptionValue["FormMultiColorCompositeObjects"] =!= False
            ],
                colorCounts[[1, 1]],
            True,
                0
        ]
    ]

(*!
    \function ARCColorToInteger
    
    \calltable
        ARCColorToInteger[color] '' Given a color, returns the corresponding integer form.
    
    Examples:
    
    ARCColorToInteger["Black"] === 0
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCColorToInteger]
    
    \maintainer danielb
*)
Clear[ARCColorToInteger];
ARCColorToInteger[color_String] := $colorNameToInteger[color]
ARCColorToInteger[color_Integer] := color

(*!
    \function ARCFormCompositeObjects
    
    \calltable
        ARCFormCompositeObjects[singleColorObjects, singleOrMultiColorObjects] '' Forms objects that are composed of more than color.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFormCompositeObjects]
    
    \maintainer danielb
*)
Clear[ARCFormCompositeObjects];
Options[ARCFormCompositeObjects] =
{
    "OtherScene" -> Null        (*< A parse of the scene this scene corresponds to. For example, if `scene` is an input scene, then OtherScene would be the output scene, and vice versa. If provided, we can use OtherScene to resolve some ambiguities about whether to chunk objects into composite objects. An association of the form <|"WithoutMultiColorCompositeObjects" -> ..., "WithMultiColorCompositeObjects" -> ...|> should be passed. *)
};
ARCFormCompositeObjects[scene_ARCScene, singleColorObjects_List, singleOrMultiColorObjects_List, OptionsPattern[]] :=
    Module[{singleColorObjectsByUUID, singleColorObjectsByPixelPosition, res, object, sceneImage, imageIn, image, colors},
        
        singleColorObjectsByUUID = ObjectsByAttribute[singleColorObjects, "UUID"];
        singleColorObjectsByPixelPosition = ObjectsByAttribute[singleColorObjects, "PixelPosition"];
        
        res = Function[{objectIn},
            
            object = Sett[
                objectIn,
                "Components" ->
                    ARCSetRelativeXY[
                        Lookup[
                            singleColorObjectsByUUID,
                            DeleteDuplicates@
                            Lookup[
                                singleColorObjectsByPixelPosition,
                                objectIn["PixelPositions"],
                                ReturnFailure[
                                    "ObjectNotFound",
                                    "An object couldn't be found by its pixel positions while forming composite objects.",
                                    "PixelPositions" -> objectIn["PixelPositions"],
                                    "Lookup" -> singleColorObjectsByPixelPosition
                                ]
                            ],
                            ReturnFailure[
                                "ObjectNotFound",
                                "An object couldn't be found by its UUID while forming composite objects."
                            ]
                        ],
                        objectIn
                    ]
            ];
            
            If [Length[object["Components"]] === 1,
                (* If an object only has a single component, don't populate its "Components"
                   property. *)
                object["Components"][[1]]
                ,
                object = Sett[
                    object,
                    With[{position = object["Position"]},
                        {
                            "Image" -> (
                                
                                sceneImage = scene[[1]];
                                imageIn = objectIn["Image"][[1]];
                                image = Table[$nonImageColor, {object["Height"]}, {object["Width"]}];
                                posY = position[[1]];
                                posX = position[[2]];
                                
                                Function[{y},
                                    Function[{x},
                                        If [imageIn[[y, x]] =!= $nonImageColor,
                                            image[[y, x]] = sceneImage[[posY + y - 1, posX + x - 1]]
                                        ]
                                    ] /@ Range[object["Width"]]
                                ] /@ Range[object["Height"]];
                                
                                ARCScene[image]
                            ),
                            "Colors" -> (
                                (* We want to sort the values so that the object references created
                                   by functions like ARCMakeObjectsReferenceable can be turned into
                                   patterns and then matching objects selected. *)
                                colors =
                                    Sort@
                                    DeleteDuplicates@
                                    Flatten[object["Components"][[All, "Colors"]]]
                            ),
                            "Color" -> InferColor[colors],
                            "Shapes" ->
                                Function[{shape},
                                    (* I was going to make these monochrome to match what we did
                                       with non-composite objects, but that breaks 3c9b0459, so
                                       that will require more thought. *)
                                    (*ARCToMonochrome[shape, $nonImageColor]*)
                                    shape
                                ] /@
                                    Join[
                                        ARCImageRotations[image],
                                        DeleteCases[Flatten[{object["Shapes"]}], KeyValuePattern["Image" -> _]]
                                    ]
                        }
                    ]
                ];
                
                (* Incase Color got set to Missing above due to being multi-colored. *)
                object = DeleteMissing[object];
                
                (* Decide whether to keep this as a composite object or not. *)
                If [And[
                        (* This mechanism was preventing 363442ee from working, because it would
                           break up the big composite object into tiny fragments before the
                           notable sub-image code in ARCParseScene had a chance to split the
                           large image up into notable sub-images. It looks like we had put this
                           in place for 05f2a901 to prevent the objects from forming a single
                           composite object in the output. However, now that ARCFindRules will
                           first try to find rules with forming composite objects, and if that
                           fails, try again without forming composite rules, I don't think we
                           need this mechanism here, at least not yet, so we'll leave this
                           disabled. Also, perhaps this pertains to
                           ARCParseInputAndOutputScenes-20220724-BK2FLS
                           ARCFindObjectMapping-20220724-0WJ0TI
                           ARCFindObjectMapping-20220805-VBJ4EU
                           ... all of which we've disabled for now. *)
                        False,
                        AssociationQ[OptionValue["OtherScene"]],
                        (* There isn't a composite object in the other scene that matches. *)
                        MissingQ[
                            ARCFindObjectMapping[
                                object,
                                OptionValue["OtherScene"]["WithMultiColorCompositeObjects"],
                                singleOrMultiColorObjects,
                                <|
                                    "Width" -> ImageWidth[scene],
                                    "Height" -> ImageHeight[scene]
                                |>
                            ][[2]]
                        ],
                        (* There _are_ matching non-composite objects in the other scene
                           that match. *)
                        AllTrue[
                            object["Components"],
                            Function[{component},
                                !MissingQ[
                                    ARCFindObjectMapping[
                                        component,
                                        OptionValue["OtherScene"]["WithoutMultiColorCompositeObjects"],
                                        singleOrMultiColorObjects,
                                        <|
                                            "Width" -> ImageWidth[scene],
                                            "Height" -> ImageHeight[scene]
                                        |>
                                    ][[2]]
                                ]
                            ]
                        ]
                    ],
                    (* Upon this discovery, let's _not_ form the composite object.
                       We'll return its components instead. *)
                    object["Components"]
                    ,
                    object
                ]
            ]
            
        ] /@ singleOrMultiColorObjects;
        
        Flatten[res]
    ]

(*!
    \function ObjectsByAttribute
    
    \calltable
        ObjectsByAttribute[objects, attribute] '' Creates an association for looking up objects by a particular attribute.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ObjectsByAttribute]
    
    \maintainer danielb
*)
Clear[ObjectsByAttribute];
ObjectsByAttribute[objects_List, attribute_String] :=
    Module[{assoc},
        
        If [MatchQ[attribute, "PixelPosition"],
            assoc =
                Association@
                Flatten[
                    Function[{object},
                        (# -> object["UUID"]) & /@ object["PixelPositions"]
                    ] /@ objects
                ]
            ,
            assoc = GroupBy[
                objects,
                #[attribute] &
            ]
        ];
        
        If [MatchQ[attribute, "UUID"],
            (* Unique *)
            First /@ assoc
            ,
            assoc
        ]
    ]

(*!
    \function ARCFindObjectMapping
    
    \calltable
        ARCFindObjectMapping[example] '' Given an ARC example, tries to find the mapping from input objects to output objects.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFindObjectMapping]
    
    \maintainer danielb
*)
Clear[ARCFindObjectMapping];
Options[ARCParseInputAndOutputScenes] =
{
    "FormMultiColorCompositeObjects" -> True        (*< Whether connected single-color objects should be combined to form multi-color composite objects. Only applies to some down values. *)
};

ARCFindObjectMapping[example_Association, opts:OptionsPattern[]] :=
    Module[{},
        ARCFindObjectMapping[example["Input"], example["Output"], opts]
    ]

ARCFindObjectMapping[scene1_ARCScene, scene2_ARCScene, opts:OptionsPattern[]] :=
    Module[{parsedScenes},
        
        parsedScenes =
            ReturnIfFailure@
            ARCParseInputAndOutputScenes[
                scene1,
                scene2,
                opts
            ];
        
        (*ARCEcho2[parsedScenes["Output"]];*)
        
        ARCFindObjectMapping[
            parsedScenes["Input"],
            parsedScenes["Output"]
        ]
    ]

ARCFindObjectMapping[input_Association, output_Association] :=
    Module[{outputObjects, inputObjects, inputObjectsHandled, mapping, res},
        
        outputObjects = output["Objects"];
        inputObjects = input["Objects"];
        inputObjectsHandled = {};
        
        mapping = <|
            Function[{object},
                (* Map this input object to an output object. *)
                If [MemberQ[inputObjectsHandled, object],
                    (* This object was already handled, so skip it. *)
                    Nothing
                    ,
                    Replace[
                        res =
                            ReturnIfFailure@
                            ARCFindObjectMapping[object, outputObjects, inputObjects, output],
                        {
                            HoldPattern[Rule][inputObject_, _] :> (
                                (* This call returned a single mapping from our input object. *)
                                AppendTo[inputObjectsHandled, inputObject];
                                res
                            ),
                            {Repeated[HoldPattern[Rule][_, _]]} :> (
                                (* The call returned a list of multiple mappings from
                                   different input objects to various output objects,
                                   so take care to record which inputs have been
                                   handled so that we don't process them again. *)
                                inputObjectsHandled = Join[inputObjectsHandled, res[[All, 1]]];
                                Sequence @@ res
                            )
                        }
                    ]
                ]
            ] /@ inputObjects
        |>;
        
        (*ARCEcho[SimplifyObjects[mapping]];*)
        
        (* Are there any objects in the output that don't have a corresponding input object? *)
        mapping = <|
            mapping,
            ARCAddedObjectsMapping@
            ARCOutputObjectsNotMappedTo[outputObjects, mapping]
        |>;
        
        mapping =
            ReturnIfFailure@
            ARCGroupByOutputObject[mapping, outputObjects, input["Background"], input["Width"], input["Height"]];
        
        mapping
        
        (* TODO: The return value doesn't indicate which objects exist in the output
                 but don't exist in the input. *)
    ]

ARCFindObjectMapping[object_Association, objectsToMapTo_List, inputObjects_List, outputScene_Association] :=
    Module[
        {
            matchingComponent,
            mappedToObject,
            possibleMatches,
            inputsObjectsOfType,
            matchingComponents
        },
        
        (* Look for an exact match. *)
        Replace[
            SelectFirst[
                objectsToMapTo,
                ARCSameQ[#, object] &
            ],
            mappedToObject: Except[_Missing] :> Return[
                object -> mappedToObject,
                Module
            ]
        ];
        
        (* Matching an object in the input to a composite object in the output. *)
        matchingComponents = {};
        If [!ListQ[object["Components"]],
            (* Our object isn't composite, so we check if our object is a component of an output
               object.*)
            {mappedToObject, matchingComponent} =
                ARCObjectWithComponent[objectsToMapTo, object];
            matchingComponents = {matchingComponent};
            ,
            (* Our object is composite, so we check if one or more of our objects are part of a
               composite object. *)
            matchingComponents = Block[{},
                Function[{component},
                    {mappedToObject, matchingComponent} =
                        ARCObjectWithComponent[objectsToMapTo, component];
                    If [!MissingQ[mappedToObject],
                        Return[
                            DeleteMissing[
                                Function[{component2},
                                    ARCGetMatchingComponent[mappedToObject, component2]
                                ] /@ object["Components"]
                            ],
                            Block
                        ]
                    ]
                ] /@ object["Components"]
            ]
        ];
        
        If [SpecifiedQ[mappedToObject],
            (* We've found a composite object with a component that matches the object.
               We add an AddComponents transform key. *)
            Return[
                Rule[
                    Append[object, "OutputComponentUUID" -> matchingComponent["UUID"]],
                    ARCAddComponentsTransform[object, mappedToObject, matchingComponents, outputScene]
                ],
                Module
            ]
        ];
        
        (* Look for an image transformation. (e.g. rotation) *)
        imageShapes = Cases[
            object["Shapes"],
            KeyValuePattern[{"Image" -> _, "Transform" -> _}]][[All, "Image"]
        ];
        SelectFirst[
            objectsToMapTo,
            Function[{outputObject},
                If [And[
                        outputObject["Position"] == object["Position"],
                        !MissingQ[matchingTransformImage = FirstCase[imageShapes, outputObject["Image"]]]
                    ],
                    (* We've found that this image in the output is a transformation of an object
                       in the input. *)
                    Return[
                        object -> Append[
                            outputObject,
                            "Transform" -> Replace[
                                FirstCase[
                                    object["Shapes"],
                                    KeyValuePattern[{"Image" -> outputObject["Image"], "Transform" -> _}]
                                ]["Transform"],
                                {
                                    assoc:KeyValuePattern[{"Type" -> "Rotation", "Angle" -> _}] :> (
                                        (* The angle specified in Shapes is the angle needed to
                                           transform the image in Shapes to the image of the
                                           object in the training example. We want the inverse
                                           angle for transforming an input to an output. *)
                                        Sett[assoc, "Angle" -> 360 - assoc["Angle"]]
                                    )
                                }
                            ]
                        ],
                        Module
                    ]
                ]
            ]
        ];
        
        (* Check if the object moved. *)
        possibleMatches = Select[
            objectsToMapTo,
            #["Image"] == object["Image"] &
        ];
        Which[
            MatchQ[possibleMatches, {_}],
                (* There's a single object in the output with this color + shape, so we'll treat
                   this as a moved object. *)
                mappedToObject = possibleMatches[[1]];
                mappedToObject["Transform"] = <|
                    "Type" -> "Move",
                    "Position" -> ToXY @ mappedToObject["Position"],
                    "Offset" -> ToXY[mappedToObject["Position"] - object["Position"], "RemoveZeroes" -> True]
                |>;
                Return[object -> mappedToObject, Module],
            MatchQ[possibleMatches, {_, __}],
                (* There are multiple objects in the output with this color + shape, so it's
                   ambiguous which of them corresponds with this object. *)
                inputsObjectsOfType = Select[
                    inputObjects,
                    #["Image"] == object["Image"] &
                ];
                If [Length[possibleMatches] === Length[inputsObjectsOfType],
                    (* The number of objects in the output of this color + shape match the
                       number of objects of this color + shape in the input, so we should
                       consider whether a transform has been applied to all of them.
                       ARCFindObjectMapping-20220812-6R5M8F *)
                    topLeftOfOutputs = Sort[possibleMatches[[All, "Position"]]][[1]];
                    topLeftOfInputs = Sort[inputsObjectsOfType[[All, "Position"]]][[1]];
                    offset = topLeftOfOutputs - topLeftOfInputs;
                    If [SameQ[
                            Sort[inputsObjectsOfType[[All, "Position"]] + Table[offset, {Length[inputsObjectsOfType]}]],
                            Sort[possibleMatches[[All, "Position"]]]
                        ],
                        Return[
                            Function[{inputObject},
                                mappedToObject =
                                    SelectFirst[
                                        possibleMatches,
                                        #["Position"] === inputObject["Position"] + offset &
                                    ];
                                mappedToObject["Transform"] = <|
                                    "Type" -> "Move",
                                    "Position" -> ToXY @ mappedToObject["Position"],
                                    "Offset" -> ToXY[offset, "RemoveZeroes" -> True]
                                |>;
                                inputObject -> mappedToObject
                            ] /@ inputsObjectsOfType,
                            Module
                        ]
                    ]
                ];
                Null
        ];
        
        (* Check if the object changed color. *)
        Replace[
            SelectFirst[
                objectsToMapTo,
                #["PixelPositions"] === object["PixelPositions"] &
            ],
            mappedToObject: Except[_Missing] :> Return[
                object -> mappedToObject,
                Module
            ]
        ];
        
        (* Check if the object was replaced by checking if there's a single output object that
           our input object is fully contained within. *)
        Replace[
            Select[
                objectsToMapTo,
                ObjectWithinQ[object, #] &
            ],
            {
                {mappedToObject_} :> (
                    Replace[
                        Select[
                            inputObjects,
                            ObjectWithinQ[#, mappedToObject] &
                        ],
                        {_} :> (
                            (* Since there was only 1 input object within this
                               output object, we'll create a mapping. *)
                            Return[
                                object -> Sett[
                                    mappedToObject,
                                    {
                                        "Image" -> mappedToObject["Image"],
                                        With[{relativePosition = mappedToObject["Position"] - object["Position"]},
                                            If [relativePosition =!= {0, 0},
                                                "Position" -> <|
                                                    "RelativePosition" -> mappedToObject["Position"] - object["Position"],
                                                    "Y" -> mappedToObject["Position"][[1]],
                                                    "X" -> mappedToObject["Position"][[2]]
                                                |>
                                                ,
                                                Nothing
                                            ]
                                        ]
                                    }
                                ],
                                Module
                            ]
                        )
                    ]
                )
            }
        ];
        
        (* Check if the object was replaced by looking for overlapping filled-in pixels.
           e.g. 0962bcdd *)
        ReturnIfNotMissing@
        ARCMappingToObjectWithOverlappingFilledInPixels[object, objectsToMapTo];
        
        object -> Missing["NotFound"]
    ]

(*!
    \function ARCOutputObjectsNotMappedTo
    
    \calltable
        ARCOutputObjectsNotMappedTo[outputObjects, mapping] '' Returns the output objects that haven't been mapped to by any input objects.
    
    Examples:
    
    ARCOutputObjectsNotMappedTo[
        {<|"UUID" -> 1|>, <|"UUID" -> 2|>},
        <|<|"UUID" -> 3|> -> <|"UUID" -> 1|>|>
    ]
    
    ===
    
    {<|"UUID" -> 2|>}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCOutputObjectsNotMappedTo]
    
    \maintainer danielb
*)
Clear[ARCOutputObjectsNotMappedTo];
ARCOutputObjectsNotMappedTo[outputObjects_List, mapping_Association] :=
    Module[{uuidsOfMappedToOutputObjects},
        
        uuidsOfMappedToOutputObjects = DeleteMissing[Values[mapping]][[All, "UUID"]];
        
        DeleteCases[
            outputObjects,
            KeyValuePattern["UUID" -> Alternatives @@ uuidsOfMappedToOutputObjects]
        ]
    ]

(*!
    \function SimplifyObjects
    
    \calltable
        SimplifyObjects[expr] '' Simplifies objects so that they are just an image and a position.
    
    Examples:
    
    SimplifyObjects[
        <|
            <|"UUID" -> "...", "Image" -> "I1", "Position" -> "P1", "AnotherKey" -> 1|> -> <|
                "UUID" -> "...",
                "Image" -> "I2",
                "Position" -> "P2",
                "AnotherKey" -> 2
            |>
        |>
    ]
    
    ===
    
    <|<|"Image" -> "I1", "Position" -> "P1"|> -> <|"Image" -> "I2", "Position" -> "P2"|>|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`SimplifyObjects]
    
    \maintainer danielb
*)
Clear[SimplifyObjects];
Options[SimplifyObjects] =
{
    "ExtraKeys" -> {}       (* Additional keys to keep. *)
};
SimplifyObjects["Expression" -> expr_, OptionsPattern[]] :=
    Module[{temporaryAssociationSymbol},
        Replace2[
            expr,
            temporaryAssociationSymbol,
            object:temporaryAssociationSymbol[___, "UUID" -> _, ___] :>
                KeyTake[Association @@ object, {"Image", "Position", "Transform", Sequence @@ OptionValue["ExtraKeys"]}],
            {0, Infinity}
        ]
    ]

SimplifyObjects[expr: Except[Rule[_String, _]], opts:OptionsPattern[]] :=
    SimplifyObjects[
        "Expression" -> expr,
        opts
    ]

SimplifyObjects[opts:OptionsPattern[]] :=
    Function[{expr},
        SimplifyObjects[expr, opts]
    ]

(*!
    \function ARCSameQ
    
    \calltable
        ARCSameQ[object1, object2] '' Given two objects, returns two if they are the same.
    
    Examples:
    
    ARCSameQ[
        <|"Image" -> 1, "Position" -> 2, "AnotherKey" -> 1|>,
        <|"Image" -> 1, "Position" -> 2, "AnotherKey" -> 2|>
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSameQ]
    
    \maintainer danielb
*)
Clear[ARCSameQ];
ARCSameQ[object1_Association, object2_Association] :=
    And[
        object1["Image"] === object2["Image"],
        object1["Position"] === object2["Position"]
    ]

(*!
    \function ARCPruneOutputsForRuleFinding
    
    \calltable
        ARCPruneOutputsForRuleFinding[objectMappings] '' Given mapped objects, prunes the output objects, removing keys that we don't want when looking for transformation rules.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCPruneOutputsForRuleFinding]
    
    \maintainer danielb
*)
Clear[ARCPruneOutputsForRuleFinding];
ARCPruneOutputsForRuleFinding[objectMappings_Association, exampleIndex_Integer] :=
    Module[{conclusion, conclusionKeysFromInput},
        KeyValueMap[
            Function[{inputObject, rhs},
                KeyDrop[inputObject, {"UUID"}] -> (
                    
                    conclusion =
                        Join[
                            (* Remove inferrable keys from the output. All we really need are the
                               core properties that can be used to infer the final output
                               object. We keep Colors since in the case that there's a single
                               color, being able to infer the color might allow us to infer the
                               final output object. We also include Width and Height so that if
                               we need to normalize a rotated object we have those handy within
                               ARCRotateObjectFrame. *)
                            conclusionKeysFromInput = KeyTake[
                                Replace[
                                    rhs,
                                    (* If there is a single color, then we want to keep
                                       the Colors property, since knowing the color
                                       (and how it changes) could be used as a core
                                       property to construct the output object. But if
                                       there are multiple colors, then this isn't
                                       straightforward, so we drop the property.
                                       321b1fc6 currently relies on this. *)
                                    assoc: KeyValuePattern["Colors" -> {_, __}] :>
                                        KeyDrop[assoc, "Colors"]
                                ],
                                {
                                    "Image",
                                    "Shape",
                                    "Shapes",
                                    "Colors",
                                    "Color",
                                    "Position",
                                    "Y",
                                    "X",
                                    "YInverse",
                                    "XInverse",
                                    "X2",
                                    "Y2",
                                    "X2Inverse",
                                    "Y2Inverse",
                                    "Width",
                                    "Height",
                                    "Transform"
                                }
                            ],
                            <|
                                "Example" -> exampleIndex,
                                "Input" -> inputObject
                            |>
                        ];
                    
                    If [Complement[Normal[conclusionKeysFromInput], Normal[inputObject]] === {},
                        conclusion = <|
                            "Same" -> True,
                            KeyTake[conclusion, {"Example", "Input"}]
                        |>
                        ,
                        Which[
                            And[
                                !MissingQ[conclusion["Image"]],
                                conclusion["Input", "Image"] =!= rhs["Image"],
                                MatchQ[conclusion["Input", "Colors"], {_}],
                                MatchQ[rhs["Colors"], {_}],
                                conclusion["Input", "Colors"] === rhs["Colors"]
                            ],
                                (* The image is changing, but there's a single color and it isn't
                                   changing, implying that it's the shape that's changing, so we'll
                                   populate a "Shape" property which is the colorless form of the
                                   image. *)
                                (* e.g. 3ac3eb23 *)
                                conclusion = Prepend[conclusion, "Shape" -> ARCToMonochrome[conclusion["Image"], $nonImageColor]],
                                (* Commented out Aug 24 2022 for cases like 178fcbfb-easier where
                                   we don't want to lose keys like Height. More generally, now that
                                   we're supporting minimal property sets at the top level, we
                                   probably want to avoid removing any keys in this function. *)
                                (*conclusion = KeyDrop[conclusion, {"Image", "Width", "Height"}],*)
                            And[
                                MatchQ[conclusion["Input", "Colors"], {_}],
                                MatchQ[rhs["Colors"], {_}],
                                conclusion["Input", "Colors"] =!= rhs["Colors"],
                                ARCToMonochrome[conclusion["Image"], $nonImageColor] === ARCToMonochrome[inputObject["Image"], $nonImageColor]
                            ],
                                (* The shape is staying the same and the color is changing, so drop
                                   the "Image" key. *)
                                conclusion = KeyDrop[conclusion, "Image"]
                        ]
                    ];
                    
                    conclusion
                )
            ],
            objectMappings
        ]
    ]

(*!
    \function ARCFindRules
    
    \calltable
        ARCFindRules[examples] '' Given a list of example input/output pairs, finds the associated rules that can map an input scene to an output scene.
    
    Examples:
    
    ARCFindRules[ARCParseFile[file = "0ca9ddb6"]["Train"]]
    
    ===
    
    <|
        <|"Colors" -> {2}|> -> <|
            "Image" -> ARCScene[{{4, 0, 4}, {0, 2, 0}, {4, 0, 4}}],
            "Position" -> <|"RelativePosition" -> {-1, -1}|>
        |>,
        <|"Colors" -> {1}|> -> <|
            "Image" -> ARCScene[{{0, 7, 0}, {7, 1, 7}, {0, 7, 0}}],
            "Position" -> <|"RelativePosition" -> {-1, -1}|>
        |>,
        <|"Colors" -> {8}|> -> <|"Same" -> True|>,
        <|"Colors" -> {6}|> -> <|"Same" -> True|>
    |>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFindRules]
    
    \maintainer danielb
*)
Clear[ARCFindRules];
Options[ARCFindRules] =
{
    "FormMultiColorCompositeObjects" -> Automatic,      (*< Whether connected single-color objects should be combined to form multi-color composite objects. If Automatic, we will try forming them, but if that isn't looking to work, we may also try not forming them. *)
    "UnnormalizedConclusionGroup" -> Missing[],         (*< If finding rules for a normalized conclusion group, we need to pass in the unnormalized conclusion group for use in updating the `unhandled` list. Only used by one of the down values. *)
    "SettleForOneExamplePerRule" -> True                (*< If we can't find a workable rule set supported by 2+ examples per rule, should we try again and settle for 1+ examples per rule? *)
};
ARCFindRules[examples_List, opts:OptionsPattern[]] :=
    Module[{res, foundRulesQ, workingRulesQ},
        
        ReturnIfDifferingInputAndOutputSize[examples];
        
        (* NOTE: We don't want to ReturnIfFailure here, since there may be cases where we are
                 unable to find rules when forming composite objects, but if we try again
                 without forming composite objects below, it may work. This also brings to mind
                 the question of whether arcFindRulesHelper should return a Failure in cases
                 where there isn't really a code failure, but rather we simply couldn't find
                 rules, such as in Aug 2022 how we don't yet have support for dealing with
                 AddObjects where multiple objects need to be added, and a Failure is returned. *)
        res = arcFindRulesHelper[examples, opts];
        foundRulesQ = MatchQ[res, KeyValuePattern["Rules" -> _List]];
        
        (*ARCEcho[ARCSimplifyRules[res["Rules"]]];*)
        
        If [And[
                OptionValue["FormMultiColorCompositeObjects"] === Automatic
                (* At first we would only try parsing the scene without the formation
                   of composite objects if the scene always consisted of a single
                   composite object, but 31aa019c appears to be an example that
                   would also benefit from this, and it's not a densely-packed
                   scene with a single composite object. *)
                (*MatchQ[
                    res[["Examples", All, "Input", "Objects"]],
                    {Repeated[{KeyValuePattern["Components" -> {__}]}]}
                ]*)
            ],
            (* Each input scene consists of a single composite object. We want to be careful
               in cases like this (e.g. 25d8a9c8) because there are cases where we don't want
               to parse the scene as a single composite object but rather as independent
               top-level objects. So, even if we've found a list of potential rules,
               we check whether those rules appear to actually work on the training examples,
               and if not, we try finding rules again where we don't form top-level
               composite objects. *)
            workingRulesQ =
                If [!foundRulesQ,
                    False
                    ,
                    TrueQ[ARCWorkingQ[examples, res]]
                ];
            
            If [!TrueQ[workingRulesQ],
                (* Try finding rules without forming composite objects. *)
                res2 = ReturnIfFailure[
                    arcFindRulesHelper[
                        examples,
                        "FormMultiColorCompositeObjects" -> False,
                        opts
                    ]
                ];
                foundRulesQ = MatchQ[res2, KeyValuePattern["Rules" -> _List]];
                If [foundRulesQ,
                    res = <|
                        "FormMultiColorCompositeObjects" -> False,
                        res2
                    |>
                ]
            ]
        ];
        
        If [TrueQ[OptionValue["SettleForOneExamplePerRule"]],
            
            workingRulesQ =
                If [!foundRulesQ,
                    False
                    ,
                    TrueQ[ARCWorkingQ[examples, res]]
                ];
            
            If [!TrueQ[workingRulesQ] && $MinimumExamplesPerRule > 1,
                (* Try again, this time allowing rules to be formed with only 1 example.
                e.g. 0d3d703e *)
                Block[{$MinimumExamplesPerRule = 1},
                    res2 = ARCFindRules[examples, opts];
                    foundRulesQ = MatchQ[res2, KeyValuePattern["Rules" -> _List]];
                    If [foundRulesQ, res = res2];
                ]
            ]
        ];
        
        ReturnIfFailure[res];
        
        KeyTake[
            res,
            {"FormMultiColorCompositeObjects", "Rules", "PartialRules"}
        ]
    ]

(*!
    \function arcFindRulesHelper
    
    \calltable
        arcFindRulesHelper[examples] '' Helper for ARCFindRules.
    
    \maintainer danielb
*)
Clear[arcFindRulesHelper];
Options[arcFindRulesHelper] = Options[ARCFindRules];
arcFindRulesHelper[examplesIn_List, opts:OptionsPattern[]] :=
    Module[
        {
            examples = examplesIn,
            returnRules,
            referenceableInputObjects,
            referenceableOutputObjects,
            objectMappings,
            preRules,
            rules,
            ruleSets,
            transform,
            mappedInputObjects,
            addedObjects,
            additionalRules = {}
        },
        
        (* Helper function for producing the final return value. *)
        returnRules[rules_List] :=
            Return[
                <|
                    "Examples" -> examples,
                    "ObjectMappings" -> objectMappings,
                    "Rules" -> Join[
                        ARCCleanRules[rules],
                        additionalRules
                    ]
                |>,
                Module
            ];
        
        examples =
            Function[{example},
                ReturnIfFailure@
                ARCParseInputAndOutputScenes[
                    example["Input"],
                    example["Output"],
                    "FormMultiColorCompositeObjects" ->
                        OptionValue["FormMultiColorCompositeObjects"] =!= False
                ]
            ] /@ examplesIn;
        
        (* For each example, map input objects to output objects. *)
        examples = Function[{example},
            Append[
                example,
                "ObjectMapping" ->
                    ReturnIfFailure@
                    ARCFindObjectMapping[example]
            ]
        ] /@ examples;
        
        (* Determine if input objects can be referenced in any particular ways in general. *)
        referenceableInputObjects =
            ReturnIfFailure@
            ARCMakeObjectsReferenceable[examples[[All, "Input"]]];
        
        referenceableOutputObjects =
            ReturnIfFailure@
            ARCMakeObjectsReferenceable[examples[[All, "Output"]]];
        
        (*ARCEcho[SimplifyObjects[referenceableInputObjects]];*)
        
        (*ARCEcho[SimplifyObjects[examples]];*)
        
        Global`$parsedExamples = examples;
        
        examples =
            ReturnIfFailure@
            ARCAddMoveAttributes[examples, referenceableOutputObjects];
        
        (*ARCEcho[SimplifyObjects[examples]];*)
        
        objectMappings = examples[[All, "ObjectMapping"]];
        
        (*ARCEcho[SimplifyObjects[objectMappings]];*)
        
        (* Form rules for removed/deleted objects. i.e. Objects that we weren't able to
           map. *)
        objectMappings = Replace[
            objectMappings,
            _Missing :> <|"Transform" -> <|"Type" -> "Delete"|>|>,
            {2}
        ];
        
        (*ARCEcho[SimplifyObjects[objectMappings]];*)
        (*ARCEcho[objectMappings];*)
        
        (* Are there any objects that need to be added? If so, remove them from the
           object mappings, since they aren't true mappings that downstream code will know
           how to deal with. We'll deal with these on their own. *)
        addedObjects = objectMappings[[All, "AddObjects"]];
        objectMappings = KeyDrop[objectMappings, "AddObjects"];
        
        (* Prepare mappings for rule finding. *)
        preRules =
            Flatten@
            MapIndexed[
                Function[{objectMapping, pos},
                    ReturnIfFailure@
                    ARCPruneOutputsForRuleFinding[objectMapping, pos[[1]]]
                ],
                objectMappings
            ];
        
        (*ARCEcho[SimplifyObjects[preRules]];*)
        (*ARCEcho[SimplifyObjects[preRules[[All, 2]]]];*)
        (*ARCEcho[preRules[[All, 2]]];*)
        
        (* Special case: There's a single transformation that can be applied to any
           input object to produce the output. e.g. 3c9b0459 *)
        If [And[
                MatchQ[
                    preRules[[All, 2]],
                    {KeyValuePattern["Transform" -> _]..}
                ],
                MatchQ[
                    transform = DeleteDuplicates[preRules[[All, 2, "Transform"]]],
                    {_}
                ]
        ]   ,
            returnRules[
                {
                    <||> -> <|"Transform" -> transform[[1]]|>
                }
            ]
        ];
        
        (*ARCEcho[referenceableInputObjects];*)
        
        inputObjectsNeedingMapping = preRules[[All, 2, "Input", "UUID"]];
        
        (*Echo[Length[inputObjectsNeedingMapping]];*)
        
        (*EchoIndented[Counts[preRules[[All, 2, "Transform"]]]];*)
        
        (* If there are objects in the output that don't seem to correspond to objects in the
           input, then we'll start by trying to model them. *)
        addedObjectsRule =
            ReturnIfFailure@
            ReturnFailureIfMissing[
                ARCRuleForAddedObjects[addedObjects, referenceableOutputObjects, examples],
                "AddedObjectsFailure",
                "Unable to produce a rule for adding objects.",
                "AddedObjects" -> addedObjects
            ];
        
        additionalRules = {
            If [AssociationQ[addedObjectsRule],
                addedObjectsRule
                ,
                Nothing
            ]
        };
        
        ruleSets = {};
        
        ruleFindings =
            Association@
            Flatten[
                Function[{property},
                    
                    rules =
                        ReturnIfFailure@
                        ARCFindRules[preRules, property, referenceableInputObjects, examples];
                    
                    (* Echo[property -> Length[Flatten[rules[[All, 2, "InputObjects"]]]]]; *)
                    
                    If [SameQ[
                            Length[
                                mappedInputObjects =
                                    (* The DeleteDuplicates is needed for cases like Shapes that
                                       might produce multiple rules that apply to the same input
                                       object. (which yes, isn't ideal) *)
                                    DeleteDuplicates@
                                    Flatten[rules[[All, 2, "InputObjects"]]]
                            ],
                            Length[inputObjectsNeedingMapping]
                        ],
                        (* The rules formed using this property handle the mapping of every input
                           object in every training example. *)
                        rules =
                            ReturnIfFailure@
                            ARCReplaceRulePatternsWithGroupPatternsIfAppropriate[
                                rules,
                                Flatten[Keys[objectMappings]]
                            ];
                        
                        AppendTo[ruleSets, rules]
                        ,
                        (* The rules formed using this property do not handle the mapping of every
                           input object across all training example. *)
                        If [rules =!= {},
                            property -> <|
                                "MappedInputObjects" -> mappedInputObjects,
                                With[{unmappedObjects = Complement[inputObjectsNeedingMapping, mappedInputObjects]},
                                    (*ARCEcho[
                                        Select[
                                            preRules[[All, 2, "Input"]],
                                            MemberQ[unmappedObjects, #["UUID"]] &
                                        ]
                                    ];*)
                                    "UnmappedInputObjects" -> unmappedObjects
                                ],
                                "Rules" -> rules
                            |>
                            ,
                            Nothing
                        ]
                    ]
                ] /@ DeleteCases[
                    (* UNDOME *)
                    If [False,
                        {None}
                        ,
                        Prepend[
                            Keys[$properties],
                            (* See if one rule can be used to transform all objects. *)
                            None
                        ]
                    ],
                    Alternatives[
                        "PixelPositions",
                        (* Since we already have "Colors", and "Color" duplicates that in this
                           context. (I think) *)
                        "Color",
                        (* TODO *)
                        "Dimensions"
                    ]
                ]
            ];
        
        If [Length[ruleSets] > 0,
            (*ARCEcho[ARCSimplifyRules[ruleSets]];*)
            returnRules[
                ARCChooseBestRuleSet[
                    ARCCleanRules /@ ruleSets
                ]
            ]
        ];
        
        (* If none of the properties produced rules that span all input objects, try combining
           properties like HeightRank and HeightInverseRank to see if they can together span
           all inputs. *)
        KeyValueMap[
            Function[{rankPropertyName, rankPropertyAttributes},
                mappedInputObjects = Union[
                    ruleFindings[rankPropertyName, "MappedInputObjects"] /. _Missing :> {},
                    ruleFindings[rankPropertyAttributes["InverseRankProperty"], "MappedInputObjects"] /. _Missing :> {}
                ];
                If [SameQ[
                        Length[mappedInputObjects],
                        Length[inputObjectsNeedingMapping]
                    ],
                    returnRules[
                        Join[
                            ruleFindings[rankPropertyName, "Rules"],
                            ruleFindings[rankPropertyAttributes["InverseRankProperty"], "Rules"]
                        ]
                    ]
                ];
            ],
            Select[$properties, TrueQ[#["Rank"]] && !TrueQ[#["InverseRank"]] &]
        ];
        
        <|
            "Examples" -> examples,
            "ObjectMappings" -> objectMappings,
            "PartialRules" ->
                ARCCleanRules@
                Reverse@
                SortBy[
                    ruleFindings,
                    Length[#["MappedInputObjects"]] &
                ]
        |>
    ]

ARCFindRules[preRules_List, property: _String | None, referenceableInputObjects_Association, examples_List] :=
    Module[
        {
            unhandled,
            groupedByPattern,
            conclusion,
            rules,
            pattern,
            mutuallyExclusiveRules = True
        },
        
        (*Echo[property];*)
        
        unhandled = {};
        
        (*ARCEcho[preRules];*)
        (*ARCEcho[SimplifyObjects[preRules]];*)
        
        (* Question: Here we are first grouping by the property-value pair, and then below
                     we later group by the transformation type, and finally look for
                     rules. I wonder if there are cases where it would be better to first
                     group by transformation type, and then look for how property values
                     can be used to infer those things. Not clear in my head. *)
        
        (* Form rules based on this property. *)
        groupedByPattern =
            If [StringQ[property],
                GroupBy[
                    Flatten[
                        Function[{item},
                            propertyValue = item[[1, property]];
                            If [MemberQ[{"Shapes"}, property],
                                mutuallyExclusiveRules = False;
                                Function[{value},
                                    <|property -> value|> -> item[[2]]
                                ] /@ propertyValue
                                ,
                                <|property -> propertyValue|> -> item[[2]]
                            ]
                        ] /@ preRules
                    ]
                    ,
                    First -> Last
                ]
                ,
                (* No property was specified. Try creating rules that apply universally. *)
                <|
                    <||> -> preRules[[All, 2]]
                |>
            ];
        
        If [!TrueQ[mutuallyExclusiveRules],
            unhandled = DeleteDuplicates[preRules[[All, 2]]];
        ];
        
        (*ARCEcho[Keys[groupedByPattern]];*)
        (*ARCEcho[groupedByPattern];*)
        (*ARCEcho[SimplifyObjects[groupedByPattern]];*)
        
        groupedByPattern =
            Association@
            KeyValueMap[
                Function[{pattern, conclusionGroup},
                    
                    (*EchoTag["pattern"][pattern];*)
                    (*ARCEcho[SimplifyObjects[conclusionGroup]];*)
                    
                    (* Have all of the mappings have been transformed by the same
                       type of operation? *)
                    pattern -> (
                        
                        unhandledBeforeRuleSearch = unhandled;
                        
                        {conclusion, unhandled} =
                            ReturnIfFailure@
                            ARCFindRules[
                                conclusionGroup,
                                referenceableInputObjects,
                                examples,
                                unhandled,
                                mutuallyExclusiveRules
                            ];
                        
                        (*ARCEcho[conclusionGroup[[All, "Transform", "Components"]]];*)
                        (*ARCEcho[conclusion];*)
                        
                        (* If we were unsuccessful at finding a working ruleset, check whether
                           we should try applying rotational normalization and trying again.
                           e.g. 25d487eb *)
                        {conclusion, unhandled} =
                            ReturnIfFailure@
                            ARCFindRulesUsingRotationalNormalization[
                                conclusion,
                                unhandledBeforeRuleSearch,
                                unhandled,
                                conclusionGroup,
                                examples,
                                referenceableInputObjects,
                                mutuallyExclusiveRules
                            ];
                        
                        conclusion
                    )
                ],
                groupedByPattern
            ];
        
        (*EchoIndented[Keys[DeleteMissing[groupedByPattern]]];*)
        (*ARCEcho[SimplifyObjects[unhandled]];*)
        
        rules = Normal[DeleteMissing[groupedByPattern]];
        
        (*ARCEcho[ARCSimplifyRules[rules]];*)
        (*Echo[Length[unhandled]];*)
        
        (* Rule pruning -- removing redundant rules. *)
        If [!TrueQ[mutuallyExclusiveRules],
            (* Delete rules if there are other rules that can handle as much and more than they
               do. e.g. 0uduqqj6f *)
            rules = Select[
                rules,
                Function[{rule},
                    MissingQ[
                        SelectFirst[
                            DeleteCases[rules, rule],
                            And[
                                Length[#[[2, "InputObjects"]]] > Length[rule[[2, "InputObjects"]]],
                                Complement[rule[[2, "InputObjects"]], #[[2, "InputObjects"]]] === {}
                            ] &
                        ]
                    ]
                ]
            ];
            
            (* If there are multiple rules that can handle the same objects, then take the one
               that is more general. e.g. 0uduqqj6f
               We want to do this before considering the addition of an Except[...] rule, so that
               the Except condition is as clean as possible. Otherwise it might be the Except
               of things that later got removed, and be more complex than it needs to be. *)
            rules = Select[
                rules,
                Function[{rule},
                    With[{ruleGeneralityScore = ARCConditionsGeneralityScore[rule[[1]]]},
                        MissingQ[
                            SelectFirst[
                                DeleteCases[rules, rule],
                                And[
                                    Sort[#[[2, "InputObjects"]]] === Sort[rule[[2, "InputObjects"]]],
                                    (* Lower is better. *)
                                    ruleGeneralityScore > ARCConditionsGeneralityScore[#[[1]]]
                                ] &
                            ]
                        ]
                    ]
                ]
            ];
        ];
        
        If [And[
                Length[unhandled] > 0 &&
                property =!= None &&
                (* All of the leftover mappings have been transformed by the same
                   type of operation. *)
                Length[DeleteDuplicates[unhandled[[All, "Transform", "Type"]]]] === 1
            ],
            
            (* We have mappings/conclusions that we weren't able to create rules for using
               explicit property values, so now we can look into trying property patterns
               of the form Except[_]. *)
            
            (* I'm slightly unclear on how to do the next step.
               Option 1) Create an Except[Alternatives[...]] for cases where the
                         property value is anything other than the above rules we formed.
               Option 2) Look for colors that occur in every one of the training examples,
                         then loop over those colors and for each one, see if we can
                         create a generalized rule.
               As of July 25 2022, we'll try (1) first. *)
            pattern = <|
                property -> Except[
                    Replace[
                        rules[[All, 1, property]],
                        {
                            {singleValue_} :> singleValue,
                            multipleValues:{Repeated[_, {2, Infinity}]} :>
                                Alternatives @@
                                (* If there are items in the alternatives list that are
                                   redudant due to another item in the list being more
                                   general, then remove it. *)
                                ARCPruneAlternatives[
                                    multipleValues,
                                    property
                                ],
                            (* No values. *)
                            {} :> Return[{}, Module]
                        }
                    ]
                ]
            |>;
            
            (*ARCEcho[SimplifyObjects[groupedByConclusion]];*)
            {conclusion, unhandled} =
                ReturnIfFailure@
                ARCFindRules[
                    unhandled,
                    referenceableInputObjects,
                    examples,
                    unhandled,
                    mutuallyExclusiveRules
                ];
            
            If [!MissingQ[conclusion],
                rules = AppendTo[
                    rules,
                    pattern -> conclusion
                ]
            ]
        ];
        
        (* Try to simplify rules if possible. *)
        rules =
            ReturnIfFailure@
            ARCGroupRulesByConclusion[rules];
        
        (*ARCEcho[ARCSimplifyRules[rules]];*)
        
        (* Perhaps we should return not just the rules here, but also `unhandled` so that:
           1) Downstream code can more easily check whether there were any unhandled cases. 
           2) Downstream code can more easily take the unhandled cases and do more processing
              to try to find rules. *)
        rules
    ]

(* `conclusionGroup` is a group of conclusion RHSs that might share the fact that the
   corresponding input objects had the same value for some property, etc. *)
ARCFindRules[conclusionGroup_List, referenceableInputObjects_Association, examples_List, unhandledIn_List, mutuallyExclusiveRules: True | False, OptionsPattern[]] :=
    Module[
        {
            unhandled = unhandledIn,
            conclusion,
            theseExamples,
            exampleInstances,
            propertiesWithChangingValue
        },
        
        conclusion = Missing[];
        
        (* HERE0 *)
        
        (*ARCEcho[SimplifyObjects[groupedByConclusion]];*)
        (*ARCEcho[Values[groupedByConclusion][[All, "Shape"]]];*)
        (*ARCEcho[groupedByConclusion];*)
        
        Which[
            Quiet[
                Length[
                    conclusionTransformTypes =
                        DeleteDuplicates[conclusionGroup[[All, "Transform", "Type"]]]
                ]
             ] =!= 1,
                Missing["InconsistentTransform"],
            
            Length[
                groupedByConclusion = GroupBy[
                    conclusionGroup,
                    Function[KeyDrop[#, {"Example", "Input"}]]
                ]
            ] > 1,
                
                (* This pattern has multiple possible conclusions, but before we discard it,
                   we should see whether it's possible to generalize those conclusions. *)
                conclusion =
                    ReturnIfFailure@
                    ARCGeneralizeConclusions[
                        Flatten[Values[groupedByConclusion]],
                        referenceableInputObjects,
                        examples
                    ]
                ,
            Length[groupedByConclusion] === 1,
                (* This pattern has only one RHS, so we can form a rule using it. *)
                conclusion = groupedByConclusion[[1, 1]];
                propertiesWithChangingValue =
                    ReturnIfFailure[
                        ARCPropertiesNeededForConclusions[{conclusion}]
                    ][[2]];
                (* Only keep the conclusion property values that differ from the input. *)
                conclusion = KeyTake[conclusion, propertiesWithChangingValue[[1]]]
            (* We don't need to handle this case, since we did a GroupBy above which
                guarentees that each group has items.
            Length[groupedByConclusion] === 0,
                ...*)
        ];
        
        If [AssociationQ[conclusion],
            (* Form the "Examples" and "UseCount" properties. *)
            conclusion = Join[
                conclusion,
                <|
                    (* The training examples (indices) that this rule can be applied to. *)
                    "Examples" -> (
                        theseExamples =
                            DeleteDuplicates[
                                exampleInstances =
                                    Flatten[Values[groupedByConclusion]][[All, "Example"]]
                            ]
                    ),
                    (* The number of training examples that this rule can be applied to. *)
                    "ExampleCount" -> Length[theseExamples],
                    (* The number of objects across all training examples that this rule
                       can be applied to. *)
                    "UseCount" -> Length[exampleInstances],
                    (* The input objects (across all trianing examples) this rule can be applied to. *)
                    "InputObjects" -> Flatten[Values[groupedByConclusion]][[All, "Input", "UUID"]]
                |>
            ];
            
            (* If a rule is only supported by one example input/output pair, then we won't
               keep it, since that is very strong evidence that we haven't found a workable
               generalization. *)
            (* Question: We do the work of ARCGeneralizeConclusions above, and then we might end
                         up discarding its hard work here if it isn't supported by enough
                         examples. Should we instead _first_ check the number of examples,
                         and only if it's sufficient call ARCGeneralizeConclusions? *)
            (* Question: Should we instead check that UseCount is < 2? I experimented with that
                         quickly Aug 13 2022 and found that it didn't break any ARCWorkingQ
                         tests but did make one ARCFindRules test output hairier. *)
            If [conclusion["ExampleCount"] < $MinimumExamplesPerRule,
                conclusion = Missing["NotFound", "InsufficientRuleSupport"]
            ]
            ,
            (* This pattern has multiple conflicting conclusions that we weren't able to
               generalize, so we'll drop this rule. *)
            conclusion = Missing["NotFound"]
        ];
        
        If [MissingQ[conclusion],
            (* A workable rule wasn't found. *)
            If [TrueQ[mutuallyExclusiveRules],
                (* In this mode, `uhandled` starts out empty, and each time we find that
                   a rule can't handle its RHSs, we accumulate those RHSs in `unhandled`. *)
                unhandled =
                    DeleteDuplicates@
                    Join[
                        unhandled,
                        If [!MissingQ[OptionValue["UnnormalizedConclusionGroup"]],
                            OptionValue["UnnormalizedConclusionGroup"]
                            ,
                            conclusionGroup
                        ]
                    ]
            ]
            ,
            (* A workable rule was found. *)
            If [!TrueQ[mutuallyExclusiveRules],
                (* In this mode, `uhandled` starts out containing all RHS, and each time we find
                   a rule, we remove any RHSs that that rule can handle. *)
                unhandled = Complement[
                    unhandled,
                    If [!MissingQ[OptionValue["UnnormalizedConclusionGroup"]],
                        OptionValue["UnnormalizedConclusionGroup"]
                        ,
                        conclusionGroup
                    ]
                ]
            ]
        ];
        
        {conclusion, unhandled}
    ]

(*!
    \function Replace2
    
    \calltable
        Replace2[args] '' Like Replace, but also performs replacements on Association keys.
    
    Examples:
    
    Replace2[<|1 -> 2, 3 -> 4|>, 1 -> 999, {0, Infinity}] === <|999 -> 2, 3 -> 4|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`Replace2]
    
    \maintainer danielb
*)
Clear[Replace2];
Replace2[exprIn_, temporaryAssociationSymbol_, args___] :=
    Module[{expr},
        
        (* Turn associations into normal expressions temporarily so that our Replace will
           include keys. *)
        expr = ReplaceRepeated[
            exprIn,
            assoc_Association :> (
                temporaryAssociationSymbol @@ Normal[assoc]
            )
        ];
        
        (* Perform the replacements requested by the caller. *)
        expr = Replace[
            expr,
            args
        ];
        
        (* Restore Associations. *)
        Replace[
            expr,
            temporaryAssociationSymbol[args2___] :> Association[args2],
            {0, Infinity}
        ]
    ]

(*!
    \function ARCApplyRules
    
    \calltable
        ARCApplyRules[scene, rules] '' Applies the given rules to the given scene, returning the output scene.
    
    Examples:
    
    With[
        {trainingData = ARCParseFile[file = "0ca9ddb6"]["Train"]},
        ARCApplyRules[
            trainingData[[2, "Input"]],
            ReturnIfFailure[ARCFindRules[trainingData]]
        ]
    ]
    
    ===
    
    {
        <|"Image" -> ARCScene[{{8}}], "Position" -> {1, 4}|>,
        <|"Image" -> ARCScene[{{4, 0, 4}, {0, 2, 0}, {4, 0, 4}}], "Position" -> {2, 6}|>,
        <|"Image" -> ARCScene[{{0, 7, 0}, {7, 1, 7}, {0, 7, 0}}], "Position" -> {3, 2}|>,
        <|"Image" -> ARCScene[{{0, 7, 0}, {7, 1, 7}, {0, 7, 0}}], "Position" -> {6, 6}|>,
        <|"Image" -> ARCScene[{{4, 0, 4}, {0, 2, 0}, {4, 0, 4}}], "Position" -> {7, 1}|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCApplyRules]
    
    \maintainer danielb
*)
Clear[ARCApplyRules];

ARCApplyRules[scene_ARCScene, rules_Association] :=
    Module[{parsedScene, objects, ruleList = rules["Rules"], addObjects, outputScene},
        
        If [!ListQ[ruleList],
            ReturnFailure[
                "ARCApplyRuleFailure",
                "No rules were found.",
                "Scene" -> scene,
                "ARCFindRulesResult" -> rules
            ]
        ];
        
        parsedScene =
            ReturnIfFailure@
            ARCParseScene[
                scene,
                If [rules["FormMultiColorCompositeObjects"] === False,
                    "FormMultiColorCompositeObjects" -> False
                    ,
                    Sequence @@ {}
                ]
            ];
        
        objects = parsedScene["Objects"];
        
        (* Is there a 'rule' for adding objects which don't occur in the input scene? *)
        addObjects = FirstCase[
            ruleList,
            KeyValuePattern["Transform" -> KeyValuePattern["Type" -> "AddObjects"]]
        ];
        If [!MissingQ[addObjects],
            ruleList = DeleteCases[ruleList, addObjects]
        ];
        
        objects =
            ReturnIfFailure@
            ARCFormGroupsWhenApplyingRules[
                objects,
                ruleList,
                ImageWidth[scene[[1]]],
                ImageHeight[scene[[1]]]
            ];
        
        (*Global`rules = ruleList;
        Global`object = objects[[1]];*)
        
        objects =
            Function[{object},
                ReturnIfFailure@
                ARCApplyRules[object, ruleList, parsedScene]
            ] /@ objects;
        
        outputScene = Sett[
            parsedScene,
            "Objects" -> objects
        ];
        
        (* Convert our sparse output objects to fuller objects that have their various
           properties set so that when applying "AddObjects" rules, if their object
           reference patterns need to make use of those properties, they'll be set. *)
        outputScene["Objects"] =
            Function[{object},
                ARCInferObjectProperties[
                    <|
                        "Image" -> ReturnFailureIfMissing[
                            object["Image"],
                            "MissingOutputImage",
                            "An output object is missing its image.",
                            "Object" -> object
                        ],
                        (*"PixelPositions" -> TODO,*)
                        ARCInferShapeAndShapes[object["Image"][[1]]],
                        "Colors" -> DeleteCases[DeleteDuplicates[Flatten[object["Image"][[1]]]], $nonImageColor],
                        "Position" -> object["Position"]
                    |>,
                    outputScene["Width"],
                    outputScene["Height"]
                ]
            ] /@ outputScene["Objects"];
        
        If [!MissingQ[addObjects],
            (* Add objects which don't correspond with objects from the input. *)
            outputScene["Objects"] = Join[
                outputScene["Objects"],
                ReturnIfFailure@
                ResolveValues[
                    addObjects["Transform", "Objects"],
                    <||>,
                    outputScene,
                    "Activate" -> True
                ]
            ]
        ];
        
        ARCRenderScene[outputScene]
    ]

ARCApplyRules[objectIn_Association, rules_List, scene_Association] :=
    Module[{object = objectIn},
        Function[{rule},
            object = Replace[
                ReturnIfFailure[ARCApplyRules[object, rule, scene]],
                Nothing :> Return[Nothing, Module]
            ]
        ] /@ rules;
        
        object
    ]

ARCApplyRules[objectIn_Association, rule_Rule, scene_Association] :=
    Module[{object = objectIn, pattern = rule[[1]], conclusion = rule[[2]]},
        
        If [And[
                Or[
                    (* Does this pattern apply to all objects? *)
                    pattern === <||>,
                    (* Does this pattern match our object? *)
                    MatchQ[
                        objectIn,
                        ARCRuleToPattern[pattern]
                    ]
                ],
                !MatchQ[conclusion, KeyValuePattern["Same" -> True]]
            ],
            (* The rule matches, so apply its conclusion. *)
            object = ARCApplyConclusion[object, conclusion, scene];
        ];
        
        object
    ]

(*!
    \function ARCApplyConclusion
    
    \calltable
        ARCApplyConclusion[object, conclusion, scene] '' Applies a rule's conclusion to an object.
    
    Examples:
    
    ARCApplyConclusion[
        "Position",
        <|"RelativePosition" -> {1, 1}|>,
        <|"Position" -> {1, 1}|>,
        <|"Image" -> "..."|>
    ]
    
    ===
    
    <|"Image" -> "...", "Position" -> {2, 2}|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCApplyConclusion]
    
    \maintainer danielb
*)
Clear[ARCApplyConclusion];
ARCApplyConclusion[objectIn_Association, conclusion_Association, scene_Association] :=
    Module[{object = objectIn, key, value, objectOut = <||>},
        
        If [TrueQ[conclusion["RotationNormalization"]],
            object = ARCNormalizeObjectRotation[
                Sett[
                    object,
                    {
                        "ParentWidth" -> scene["Width"],
                        "ParentHeight" -> scene["Height"]
                    }
                ]
            ];
        ];
        
        If [MissingQ[conclusion["Transform"]] && MissingQ[conclusion["Position"]],
            (* Incase any ARCApplyConclusion handlers need to know the position, such as
               X2Inverse. *)
            objectOut["Position"] = objectIn["Position"]
        ];
        
        KeyValueMap[
            Function[{keyIn, valueIn},
                
                key = keyIn;
                value = valueIn;
                
                If [key === "Color",
                    key = "Colors";
                    value = {value}
                ];
                
                objectOut =
                    Replace[
                        ReturnIfFailure@
                        ARCApplyConclusion[
                            key,
                            ResolveValues[value, object, scene, "Activate" -> True],
                            object,
                            objectOut,
                            scene
                        ],
                        Nothing :> Return[Nothing, Module]
                    ];
            ],
            KeyDrop[
                conclusion,
                {
                    "Examples",
                    "ExampleCount",
                    "UseCount",
                    "InputObjects",
                    "RotationNormalization"
                }
            ]
        ];
        
        (* If this isn't a named "transform" but rather is just setting one or more
           property values of the object, then we want to be sure to keep properties
           if the conclusion didn't specify them. For example, in 178fcbfb-easier,
           the conclusion doesn't alter the object's color, so we want to be sure to
           inherit that from the input object. *)
        If [MissingQ[conclusion["Transform"]],
            If [MissingQ[objectOut["Image"]],
                If [MissingQ[objectOut["Color"]] && MissingQ[objectOut["Colors"]],
                    objectOut = Join[objectOut, KeyTake[object, {"Colors", "Color"}]]
                ];
                If [MissingQ[objectOut["Shape"]] && !MissingQ[objectOut["Shapes"]],
                    objectOut = Append[objectOut, "Shape" -> First[objectOut["Shapes"]]]
                ];
                If [MissingQ[objectOut["Width"]] && !MissingQ[object["Width"]],
                    objectOut["Width"] = object["Width"]
                ];
                If [MissingQ[objectOut["Height"]] && !MissingQ[object["Height"]],
                    objectOut["Height"] = object["Height"]
                ];
            ];
        ];
        
        If [MissingQ[objectOut["Position"]],
            Which[
                MissingQ[objectOut["X"]] && MissingQ[objectOut["Y"]],
                    objectOut["Position"] = {object["Y"], object["X"]},
                MissingQ[objectOut["Y"]],
                    objectOut["Position"] = {
                        object["Y"],
                        objectOut["X"]
                    },
                MissingQ[objectOut["X"]],
                    objectOut["Position"] = {
                        objectOut["Y"],
                        object["X"]
                    }
            ];
        ];
        
        If [And[
                TrueQ[conclusion["RotationNormalization"]],
                NumberQ[objectIn["Shape", "Transform", "Angle"]]
            ],
            (* Because we rotated the object earlier into a normalized orientation
               so that we could apply a conclusion that assumes that orientation,
               we now need to rotate it in the opposite way so that we can use it
               as part of the output scene. *)
            objectOut =
                ReturnIfFailure@
                ARCRotateObjectFrame[
                    ARCInferObjectProperties[objectOut, scene["Width"], scene["Height"]],
                    objectIn["Shape", "Transform", "Angle"],
                    Sequence @@
                    Switch[
                        objectIn["Shape", "Transform", "Angle"],
                        90 | 270,
                            {
                                scene["Height"],
                                scene["Width"],
                                scene["Height"],
                                scene["Width"]
                            },
                        _,
                            {
                                scene["Width"],
                                scene["Height"],
                                scene["Width"],
                                scene["Height"]
                            }
                    ]
                ]
        ];
        
        (* e.g. Infer the Image if necessary. *)
        objectOut = ReturnIfFailure[ARCConstructObject[objectOut]];
        
        objectOut
    ]

ARCApplyConclusion[key:"Transform", value:KeyValuePattern["Type" -> "Delete"], objectIn_Association, objectOut_Association, scene_Association] :=
    Nothing

ARCApplyConclusion[key:"Position", KeyValuePattern["RelativePosition" -> relativePosition_], objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        key -> objectIn["Position"] + relativePosition
    ]

ARCApplyConclusion[key:"Position", positionIn_Association, objectIn_Association, objectOut_Association, scene_Association] :=
    Module[{position},
        position = Replace[
            objectIn["Position"],
            _Missing :> <||>
        ];
        Sett[
            objectOut,
            "Position" ->
                If [ListQ[position],
                    KeyValueMap[
                        Function[{thisKey, value},
                            If [thisKey === "X",
                                position[[2]] = value
                            ];
                            If [thisKey === "Y",
                                position[[1]] = value
                            ];
                        ],
                        positionIn
                    ];
                    position
                    ,
                    Sett[
                        position,
                        Normal[positionIn]
                    ]
                ]
        ]
    ]

ARCApplyConclusion[key:"Y", y_Integer, objectIn_Association, objectOut_Association, scene_Association] :=
    Module[{},
        Sett[
            objectOut,
            {
                "Y" -> y,
                If [ListQ[objectOut["Position"]],
                    "Position" -> ReplacePart[objectOut["Position"], 1 -> y]
                    ,
                    Nothing
                ]
            }
        ]
    ]

ARCApplyConclusion[key:"X", x_Integer, objectIn_Association, objectOut_Association, scene_Association] :=
    Module[{},
        Sett[
            objectOut,
            {
                "X" -> x,
                If [ListQ[objectOut["Position"]],
                    "Position" -> ReplacePart[objectOut["Position"], 2 -> x]
                    ,
                    Nothing
                ]
            }
        ]
    ]

ARCApplyConclusion[key:"X2Inverse", x2Inverse_Integer, objectIn_Association, objectOut_Association, scene_Association] :=
    Module[{x},
        x = Replace[
            objectOut["Position"],
            {
                _Association :> objectOut["Position", "X"],
                _ :> objectOut[["Position", 2]]
            }
        ];
        Sett[
            objectOut,
            "Width" -> (scene["Width"] - x2Inverse + 1) - x + 1
        ]
    ]

ARCApplyConclusion[key:"Y2Inverse", y2Inverse_Integer, objectIn_Association, objectOut_Association, scene_Association] :=
    Module[{y},
        y = Replace[
            objectOut["Position"],
            {
                _Association :> objectOut["Position", "Y"],
                _ :> objectOut[["Position", 1]]
            }
        ];
        Sett[
            objectOut,
            "Height" -> (scene["Height"] - y2Inverse + 1) - y + 1
        ]
    ]

ARCApplyConclusion[key:"Shape", value: KeyValuePattern["Image" -> _], objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        "Image" -> ARCColorize[value, objectIn[["Colors", 1]]]
    ]

ARCApplyConclusion[key:"Colors", {value_}, objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        "Image" -> ARCColorize[objectIn["Image"], value]
    ]

ARCApplyConclusion[key:"Transform", value:KeyValuePattern["Type" -> "Rotation"], objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        "Image" -> RotateImage[objectIn["Image"], value["Angle"]]
    ]

ARCApplyConclusion[key:"Transform", value:KeyValuePattern[{"Type" -> "Move", "Position" -> _}], objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        {
            "Image" -> objectIn["Image"],
            "Position" ->
                (* TODO: Move this Replace into a re-usable function, such as NormalizePosition. *)
                Replace[
                    value["Position"],
                    {
                        <|"Y" -> y_|> :> {y, objectIn["X"]},
                        <|"X" -> x_|> :> {objectIn["Y"], x},
                        KeyValuePattern[{"Y" -> y_, "X" -> x_}] :> {objectIn["Y"], objectIn["X"]}
                    }
                ]
        }
    ]

ARCApplyConclusion[key:"Transform", value:KeyValuePattern[{"Type" -> "Move", "Offset" -> _}], objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        {
            "Image" -> objectIn["Image"],
            "Position" ->
                objectIn["Position"] +
                (* TODO: Move this Replace into a re-usable function, such as NormalizePosition. *)
                Replace[
                    value["Offset"],
                    {
                        <|"Y" -> y_|> :> {y, 0},
                        <|"X" -> x_|> :> {0, x},
                        KeyValuePattern[{"Y" -> y_, "X" -> x_}] :> {y, x}
                    }
                ]
        }
    ]

ARCApplyConclusion[key:"Transform", value:KeyValuePattern[{"Type" -> "Move", "BlockedBy" -> blockingObject_}], objectIn_Association, objectOut_Association, scene_Association] :=
    Module[{blockingDirection},
        Sett[
            objectOut,
            {
                "Image" -> objectIn["Image"],
                "Position" -> (
                    blockingDirection = Replace[
                        ARCBlockingDirection[objectIn, blockingObject],
                        None :> ReturnFailure[
                            "BlockingDirectionFailure",
                            "Couldn't determine the axis-aligned direction of blockage.",
                            "Object" -> objectIn,
                            "BlockingObject" -> blockingObject
                        ]
                    ];
                    Replace[
                        ReturnIfFailure@
                        ARCBlockingQ[objectIn, blockingObject, blockingDirection, scene],
                        {
                            position: {_, _} :> position,
                            _ :> ReturnFailure[
                                "BlockingFailure",
                                "Couldn't determine how to move the object to be blocked by another object.",
                                "Object" -> objectIn,
                                "BlockingObject" -> blockingObject
                            ]
                        }
                    ]
                )
            }
        ]
    ]

ARCApplyConclusion[key:"Transform", value:KeyValuePattern[{"Type" -> "AddComponents"}], objectIn_Association, objectOut_Association, scene_Association] :=
    Module[{finalObject = objectIn},
        finalObject["Components"] = Join[
            Lookup[objectIn, "Components", {KeyTake[objectIn, {"Image", "Position"}]}],
            value["Components"]
        ];
        finalObject["Components"] = Function[{component},
             ReturnIfFailure@
             ARCConstructObject[component, "Parent" -> objectIn, "Scene" -> scene]
        ] /@ finalObject["Components"];
        (*ARCEcho2[finalObject["Components"]];*)
        ARCObjectImageFromComponents[finalObject]
    ]

ARCApplyConclusion[key:"Transform", transform_, objectIn_Association, objectOut_Association, scene_Association] :=
    Module[{},
        ReturnFailure[
            "UnsupportedTransform",
            "This transformation isn't yet supported by ARCApplyConclusion.",
            "Transform" -> transform
        ]
    ]

ARCApplyConclusion[key_String, value_, objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        key -> value
    ]

(*!
    \function ARCRenderScene
    
    \calltable
        ARCRenderScene[scene] '' Turns a parsed scene back into an image.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRenderScene]
    
    \maintainer danielb
*)
Clear[ARCRenderScene];
ARCRenderScene[scene_Association] :=
    Module[{output, image, posX, posY},
        
        (* Empty output image using background color. *)
        output =
            With[{backgroundColor = ARCColorToInteger[scene["Background"]]},
                ConstantArray[
                    backgroundColor,
                    {
                        scene["Height"],
                        scene["Width"]
                    }
                ]
            ];
        
        Function[{object},
            
            If [ListQ[object["Position"]],
                posY = object["Position"][[1]];
                posX = object["Position"][[2]];
                ,
                posY = object["Y"];
                posX = object["X"];
            ];
            
            image = object["Image"][[1]];
            
            Which[
                posY + ImageHeight[image] - 1 > scene["Height"],
                    ReturnFailure[
                        "ObjectOutsideOfSceneBoundary",
                        "The image extends beyond the bottom of the scene.",
                        "Object" -> object,
                        "ObjectY" -> posY,
                        "ObjectHeight" -> ImageHeight[image],
                        "SceneHeight" -> scene["Height"]
                    ],
                posX + ImageWidth[image] - 1 > scene["Width"],
                    ReturnFailure[
                        "ObjectOutsideOfSceneBoundary",
                        "The image extends beyond the right side of the scene.",
                        "Object" -> object,
                        "ObjectX" -> posX,
                        "ObjectHeight" -> ImageWidth[image],
                        "SceneHeight" -> scene["Width"]
                    ],
                posY < 1,
                    ReturnFailure[
                        "ObjectOutsideOfSceneBoundary",
                        "The image extends beyond the above the top of the scene.",
                        "Object" -> object,
                        "ObjectY" -> posY
                    ],
                posX < 1,
                    ReturnFailure[
                        "ObjectOutsideOfSceneBoundary",
                        "The image extends beyond the left side of the scene.",
                        "Object" -> object,
                        "ObjectX" -> posX
                    ]
            ];
            
            Function[{y},
                Function[{x},
                    If [image[[y, x]] =!= $nonImageColor,
                        output[[posY + y - 1, posX + x - 1]] = image[[y, x]]
                    ]
                ] /@ Range[ImageWidth[image]]
            ] /@ Range[ImageHeight[image]];
            
        ] /@ scene["Objects"];
        
        ARCScene@
        output
    ]

(*!
    \function ARCTestRules
    
    \calltable
        ARCTestRules[example, rules] '' Applies the given rules to the input, checking to see whether it produces the desired output.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCTestRules]
    
    \maintainer danielb
*)
Clear[ARCTestRules];
Options[ARCTestRules] =
{
    "TrainingExamplesOnly" -> False     (*< Only check training examples? *)
};

ARCTestRules[ARCExample[example: KeyValuePattern[{"Train" -> _, "Test" -> _}]], rules_Association, opts:OptionsPattern[]] :=
    Module[{test, train, failures, successes},
        
        train = ReturnIfFailure[ARCTestRules[example["Train"], rules]];
        
        test =
            If [!TrueQ[OptionValue["TrainingExamplesOnly"]],
                ReturnIfFailure[ARCTestRules[example["Test"], rules]]
                ,
                <|"Failures" -> {}, "Successes" -> {}|>
            ];
        
        failures = Join[train["Failures"], test["Failures"]];
        successes = Join[train["Successes"], test["Successes"]];
        
        <|
            "File" -> example["File"],
            ARCSummarizeTestResultObjects[Join[failures, successes]],
            "Train" -> train,
            "Test" -> test
        |>
    ]

ARCTestRules[example_Association, rules_Association] :=
    Module[{},
        VerificationTest[
            ARCApplyRules[example["Input"], rules],
            example["Output"]
        ]
    ]

ARCTestRules[examples_List, rules_Association] :=
    ARCSummarizeTestResultObjects[
        Function[{example},
            ARCTestRules[example, rules]
        ] /@ examples
    ]

(*!
    \function ARCSummarizeTestResultObjects
    
    \calltable
        ARCSummarizeTestResultObjects[testResultObjects] '' Given a list of test result objects, returns an association of success/failure metrics.
    
    \maintainer danielb
*)
Clear[ARCSummarizeTestResultObjects];
ARCSummarizeTestResultObjects[testResultObjects_List] :=
    Module[{failures, successes},
        
        failures = Select[testResultObjects, #["Outcome"] =!= "Success" &];
        successes = Select[testResultObjects, #["Outcome"] === "Success" &];
        
        <|
            "PassPercentage" ->
                Round[
                    Length[successes] / (Length[successes] + Length[failures]),
                    0.1
                ],
            "Failures" -> failures,
            "Successes" -> successes
        |>
    ]

(*!
    \function ARCTest
    
    \calltable
        ARCTest[file] '' Tries to find a set of rules for the training examples in the given file, and if successful, tests the set of rules on the training and test data, returning the results.
    
    \maintainer danielb
*)
Clear[ARCTest];
Options[ARCTest] =
{
    "TrainingExamplesOnly" -> False     (*< Only check training examples? *)
};

ARCTest[example_ARCExample, opts:OptionsPattern[]] :=
    Module[{rules},
        
        rules =
            ReturnIfFailure@
            ARCFindRules[example["Train"]];
        
        ARCTestRules[
            example,
            rules,
            opts
        ]
    ]

ARCTest[file_String, opts:OptionsPattern[]] :=
    Module[{},
        ARCTest[
            ReturnIfFailure@
            ARCParseFile[file],
            opts
        ]
    ]

(*!
    \function ARCImageRotations
    
    \calltable
        ARCImageRotations[image] '' Given an image, produces a list of rotated versions.
    
    Examples:
    
    ARCImageRotations[{{1, 0, 1}, {0, 1, 0}, {0, 0, 1}}]
    
    ===
    
    {
        <|"Image" -> ARCScene[{{1, 0, 1}, {0, 1, 0}, {0, 0, 1}}]|>,
        <|
            "Image" -> ARCScene[{{0, 0, 1}, {0, 1, 0}, {1, 0, 1}}],
            "Transform" -> <|"Type" -> "Rotation", "Angle" -> 270|>
        |>,
        <|
            "Image" -> ARCScene[{{1, 0, 0}, {0, 1, 0}, {1, 0, 1}}],
            "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>
        |>,
        <|
            "Image" -> ARCScene[{{1, 0, 1}, {0, 1, 0}, {1, 0, 0}}],
            "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
        |>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCImageRotations]
    
    \maintainer danielb
*)
Clear[ARCImageRotations];
ARCImageRotations[imageIn_List] :=
    Module[{image = imageIn},
        Join[
            {
                <|"Image" -> ARCScene[image]|>
            },
            Function[{angle},
                (* Rotate by 90 degrees. *)
                image = RotateImage[image, 90];
                If [image =!= imageIn,
                    <|"Image" -> ARCScene[image], "Transform" -> <|"Type" -> "Rotation", "Angle" -> angle|>|>
                    ,
                    Nothing
                ]
            ] /@ {270, 180, 90}
        ]
    ]

(*!
    \function ARCGoodRulesQ
    
    \calltable
        ARCGoodRulesQ[rules, examples] '' Given a list of rules, returns True if this looks like a good ruleset.
    
    Examples:
    
    ARCGoodRulesQ[{}, {1, 2, 3}] === False
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGoodRulesQ]
    
    \maintainer danielb
*)
Clear[ARCGoodRulesQ];

(* No rules. *)
ARCGoodRulesQ[{}, examples_List] :=
    False

ARCGoodRulesQ[rules_List, examples_List] :=
    Module[{ruleUses, metrics},
        
        ruleUses = Values[rules][[All, "Examples"]];
        
        metrics = <|
            (* On average, how many different examples does a rule apply to? *)
            "MeanExamplesPerRule" -> N[Length[Flatten[ruleUses]] / Length[ruleUses]],
            (* On average, how many times does a rule get applied? *)
            "MeanUseCount" -> N[Mean[Values[rules][[All, "UseCount"]]]]
        |>;
        
        (* TODO: How should this work? For now we'll just use a very crude heuristic. *)
        metrics["MeanExamplesPerRule"] >= 1.3
    ]

(*!
    \function ARCWorkingQ
    
    \calltable
        ARCWorkingQ[file] '' Checks whether a particular ARC example is working or not.
    
    Examples:
    
    ARCWorkingQ["0ca9ddb6"] === True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCWorkingQ]
    
    \maintainer danielb
*)
Clear[ARCWorkingQ];
Options[ARCWorkingQ] =
{
    "TrainingExamplesOnly" -> False     (*< Only check training examples? *)
};
ARCWorkingQ[file_String, opts:OptionsPattern[]] :=
    Module[{},
        MatchQ[
            ARCTest[file, opts],
            KeyValuePattern["PassPercentage" -> 1. | 1]
        ]
    ]

ARCWorkingQ[examples_List, rules_Association] :=
    Module[{},
        MatchQ[
            ARCTestRules[examples, rules],
            KeyValuePattern["PassPercentage" -> 1. | 1]
        ]
    ]

(*!
    \function RotateImage
    
    \calltable
        RotateImage[image, angle] '' Rotates an image by some multiple of 90 degrees.
    
    Examples:
    
    RotateImage[{{1, 0}, {0, 1}}, 90] === {{{0, 1}, {1, 0}}}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`RotateImage]
    
    \maintainer danielb
*)
Clear[RotateImage];
RotateImage[imageIn_List, angle_] :=
    Module[{image = imageIn},
        Function[{i},
            image = Transpose[Reverse[image]];
        ] /@ Range[Mod[angle + 360, 360] / 90];
        image
    ]

RotateImage[ARCScene[image_List], angle_] :=
    ARCScene[RotateImage[image, angle]]

(*!
    \function ARCParseExamples
    
    \calltable
        ARCParseExamples[examples] '' Given a list of examples, parses/interprets their input and outputs.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCParseExamples]
    
    \maintainer danielb
*)
Clear[ARCParseExamples];
ARCParseExamples[examples_List] :=
    Module[{},
        Function[{example},
            Sett[
                example,
                {
                    "Input" -> ARCParseScene[example["Input"]],
                    "Output" -> ARCParseScene[example["Output"]]
                }
            ]
        ] /@ examples
    ]

ARCParseExamples[file_String] :=
    Module[{},
        ARCParseExamples[
            ReturnIfFailure@
            ARCParseFile[file]["Train"]
        ]
    ]

(*!
    \function ARCMakeObjectsReferenceable
    
    \calltable
        ARCMakeObjectsReferenceable[parsedScenes] '' Given a list of parsed scenes, returns a list of references that can be used to refer to / differentiate each of the objects in all scenes.
    
    TODO: Property supporting the "Shapes" property wil require more work as of July 23 2022.
    
    Examples:
    
    ARCMakeObjectsReferenceable[
        ARCParseExamples[file = "1caeab9d"][[All, "Input"]]
    ]
    
    ===
    
    {Object[<|"Colors" -> {1}|>], Object[<|"Colors" -> {2}|>], Object[<|"Colors" -> {4}|>]}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCMakeObjectsReferenceable]
    
    \maintainer danielb
*)
Clear[ARCMakeObjectsReferenceable];
Options[ARCMakeObjectsReferenceable] =
{
    "AdditionalConditions" -> Nothing       (*< Additional conditions that should be added to any referenceable object patterns. e.g. <|"Context" -> "Components"|> *)
};

ARCMakeObjectsReferenceable[parsedScenes_List, opts:OptionsPattern[]] :=
    ARCMakeObjectsReferenceable[
        "ObjectLists" -> parsedScenes[[All, "Objects"]],
        opts
    ]

ARCMakeObjectsReferenceable["ObjectLists" -> objectsForAllExamples_List, opts:OptionsPattern[]] :=
    Module[
        {
            usablePropertiesAndValues,
            valueCounts,
            uniqueValues,
            countsForValue,
            countsForNotValue,
            res,
            objectSetsSeen
        },
        
        usablePropertiesAndValues = Association[
            Function[{property},
                property ->
                (* Sort the referenceable objects that use this property so that ones that
                   don't use Except are above ones that do use except so that rules are
                   more likely to refer to things without the use of Except where possible.
                   e.g. 05f2a901 (ARCFindRules-20220804-KVNY6K) *)
                Function[{list}, SortBy[list, Function[{item}, !FreeQ[item, _Except]]]]@
                Flatten[
                    
                    (* For each scene, take its group of objects and determine the value counts
                       for the current property being considered. *)
                    valueCounts = Function[{objects},
                        Counts[
                            Replace[
                                (* For now we won't use Missing as a referenceable value. If we decide to
                                   use it, we'll need to update GetObject to be compatible with it. *)
                                DeleteMissing[
                                    objects[[All, property]]
                                ],
                                lists:{Repeated[_List]} :> (
                                    If [MatchQ[$properties[property, "Type"], _Repeated],
                                        (* This property's values are lists of things, so we sort
                                           them to try to normalize them so that if two objects
                                           have the same items in a list, any ordering differences
                                           don't prevent us finding commonalities / rules. *)
                                        Sort /@ lists
                                        ,
                                        (* Some properties like Position have values that are
                                           lists, but they aren't orderless lists -- the
                                           position of a value relates to its semantics,
                                           so we definitely can't sort those lists here. *)
                                        lists
                                    ]
                                )
                            ]
                        ]
                    ] /@ objectsForAllExamples;
                    
                    (* For this property, what are the values that show up in at least one scene? *)
                    uniqueValues = DeleteDuplicates[Flatten[Keys /@ valueCounts, 1]];
                    
                    Function[{value},
                        {
                            countsForValue = #[value] & /@ valueCounts;
                            If [MatchQ[countsForValue, {Repeated[1]}],
                                (* There is always 1 object with this value, so we can introduce
                                   it as a referenceable thing. *)
                                value
                                ,
                                Nothing
                            ]
                            ,
                            countsForNotValue =
                                Function[{valueCountsForScene},
                                    Plus[
                                        Total[valueCountsForScene],
                                        -Replace[valueCountsForScene[value], _Missing -> 0]
                                    ]
                                ] /@ valueCounts;
                            If [And[
                                    (* In every scene, this is always at least one object with
                                       this color. Note: I'm a bit unsure whether we want this
                                       condition, since in theory you could still use an Except
                                       pattern even if there isn't always an object(s) _with_
                                       that value. *)
                                    FreeQ[countsForValue, _Missing],
                                    (* In every scene, there is only one object that doesn't have
                                       this property value. *)
                                    MatchQ[countsForNotValue, {Repeated[1]}]
                                ],
                                (* There is always 1 object _not_ with this value and the rest of
                                   the objects with this value, so we can introduce it as
                                   a referenceable thing. *)
                                Except[value]
                                ,
                                Nothing
                            ]
                        }
                    ] /@ uniqueValues,
                    1
                ]
            ] /@ DeleteCases[
                Keys[$properties],
                "Shapes"
            ]
        ];
        
        usablePropertiesAndValues = DeleteCases[usablePropertiesAndValues, {}];
        
        objectReferences =
            Flatten@
            KeyValueMap[
                Function[{property, values},
                    Function[{value},
                        Object[
                            <|
                                property -> value
                            |>
                        ]
                    ] /@ values
                ],
                usablePropertiesAndValues
            ];
        
        res =
            ReturnIfFailure@
            ARCReferenceableObjectProperties[
                objectReferences,
                objectsForAllExamples
            ];
        
        objectSetsSeen = <||>;
        res =
            Association@
            KeyValueMap[
                Function[{objectReference, properties},
                    If [TrueQ[objectSetsSeen[properties["Objects"]]],
                        (* We already have a reference that refers to this group of
                           objects, so to avoid creating "duplicate" references to
                           this object set, we'll discard this object reference. *)
                        Nothing
                        ,
                        objectSetsSeen[properties["Objects"]] = True;
                        objectReference -> KeyDrop[properties, "Objects"]
                    ]
                ],
                res
            ];
        
        If [OptionValue["AdditionalConditions"] =!= Nothing,
            res = KeyMap[
                Function[{objectReference},
                    ReplacePart[
                        objectReference,
                        1 -> Join[objectReference[[1]], OptionValue["AdditionalConditions"]]
                    ]
                ],
                res
            ]
        ];
        
        res
    ]

(*!
    \function GetObject
    
    \calltable
        GetObject[object, parsedScene] '' Gets a referenceable object from a parsed scene.
    
    Examples:
    
    GetObject[
        Object[<|"Colors" -> {"Blue"}|>],
        <|"Objects" -> {<|"Colors" -> {"Blue"}, "Position" -> {1, 1}|>}|>
    ]
    
    ===
    
    <|"Colors" -> {"Blue"}, "Position" -> {1, 1}|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`GetObject]
    
    \maintainer danielb
*)
Clear[GetObject];
GetObject[object_Object, parsedSceneOrObjectsList_, namedObjects_Association : <||>] :=
    GetObject[object[[1]], parsedSceneOrObjectsList, namedObjects]

GetObject[object: _Association | _String, parsedScene_Association, namedObjects_Association : <||>] :=
    Which[
        (* Note that `object` can be a string, so we explicitly check first that it's an
           association prior to checking its Context value. *)
        AssociationQ[object] && object["Context"] === "Component",
            GetObject[
                object,
                Replace[
                    namedObjects["InputObject", "Components"],
                    Except[_List] :> {}
                ],
                namedObjects
            ],
        AssociationQ[object] && object["Context"] === "Output",
            (* Requires that the caller correctly passes in the _output_ scene. *)
            GetObject[object, parsedScene["Objects"], namedObjects],
        StringQ[object["Context"]],
            ReturnFailure[
                "UnsupportedContext",
                "GetObject doesn't currently support the context '" <> ToString[object["Context"]] <> "'.",
                "Object" -> object
            ],
        True,
            GetObject[object, parsedScene["Objects"], namedObjects]
    ]

GetObject[object_Association, objects_List, namedObjects_Association : <||>] :=
    Module[{},
        Replace[
            Cases[
                objects,
                KeyValuePattern@
                Normal@
                (* We drop the "Context" key since that should be handled by higher-level
                   code to ensure that `objects` is for that context. *)
                KeyDrop[object, "Context"]
            ],
            {
                {matchingObject_} :> matchingObject,
                {} :> ReturnFailure[
                    "ObjectNotFound",
                    "The object wasn't found in the scene.",
                    "Object" -> object,
                    "Objects" -> objects
                ],
                multipleObjects:{_, __} :> ReturnFailure[
                    "AmbiguousObject",
                    "Multiple matching objects were found, but only 1 match was expected.",
                    "ObjectPattern" -> object,
                    "MatchingObjects" -> SimplifyObjects[objects]
                ]
            }
        ]
    ]

GetObject[objectName_String, objects_List, namedObjects_Association : <||>] :=
    Module[{},
        ReturnFailureIfMissing[
            namedObjects[objectName],
            "NamedObjectNotFound",
            "An object with the name " <> objectName <> " wasn't specified."
        ]
    ]

(*!
    \function ARCReferenceableObjectProperties
    
    \calltable
        ARCReferenceableObjectProperties[objects, parsedScenes] '' Given a list of objects that occur in each example scene, determine what property values they have in all examples.
    
    TODO: If we have multiple references that refer to the same object in each
          training example, should we leave them, or should we choose one of
          them? At the very least we should probably prioritize them, although
          the ordering in $properties may implicitly do that.
    
    Examples:
    
    Module[
        {parsedScenes},
        parsedScenes = ReturnIfFailure[
            ARCParseExamples[file = "1caeab9d"][[All, "Input"]]
        ];
        ARCReferenceableObjectProperties[
            ARCMakeObjectsReferenceable[parsedScenes],
            parsedScenes[[All, "Objects"]]
        ]
    ]
    
    ===
    
    {
        Object[<|"Colors" -> {1}|>] -> <|"Height" -> 2|>,
        Object[<|"Colors" -> {2}|>] -> <|"Height" -> 2|>,
        Object[<|"Colors" -> {4}|>] -> <|"Height" -> 2|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCReferenceableObjectProperties]
    
    \maintainer danielb
*)
Clear[ARCReferenceableObjectProperties];
ARCReferenceableObjectProperties[objects_List, objectLists_List] :=
    Module[{res, objectsOfType, propertyValues, constantProperties},
        
        (* What property values are consistent for all objects and thus not worth including
           on RHSs? *)
        constantProperties = Select[
            Keys[$properties],
            Length[DeleteDuplicates[Flatten[objectLists][[All, #]]]] === 1 &
        ];
        
        res = Function[{objectReference},
            
            (* Find the objects of this type from the given scene. *)
            objectsOfType = Function[{objectList},
                object =
                    ReturnIfFailure@
                    GetObject[objectReference, objectList]
            ] /@ objectLists;
            
            (* Find the commonalities between these objects. *)
            objectReference -> Append[
                Association[
                    Function[{property},
                        propertyValues = DeleteDuplicates[objectsOfType[[All, property]]];
                        If [property === "Shapes",
                            commonShapes = Intersection @@ propertyValues;
                            If [MatchQ[commonShapes, {__}],
                                propertyValues = {commonShapes}
                            ]
                        ];
                        If [Length[propertyValues] === 1,
                            (* All objects of this type have the same value for this property. *)
                            property -> First[propertyValues]
                            ,
                            (* Not all objects of this type have the same value for this property. *)
                            Nothing
                        ]
                    ] /@ DeleteCases[
                        Keys[$properties],
                        (* Since we know all objects share property values for the properties in the
                        object reference, we will for now remove them from the RHSs, although
                        it's possible we should leave them if they are for any reason useful
                        in the future. *)
                        Alternatives @@ Join[
                            Keys[objectReference[[1]]],
                            constantProperties
                        ]
                    ]
                ],
                "Objects" -> Sort[objectsOfType[[All, "UUID"]]]
            ]
            
        ] /@ objects;
        
        Association[res]
    ]

(*!
    \function ARCSelectMatchingObject
    
    \calltable
        ARCSelectMatchingObject[objects, object] '' Selects the object from `objects` that matches `object` wrt Image and Position. Returns Missing if not found.
    
    Examples:
    
    ARCSelectMatchingObject[
        {
            <|"UUID" -> 1, "Image" -> {{1, 0}, {0, 1}}, "Position" -> {1, 1}|>,
            <|"UUID" -> 2, "Image" -> {{0, 1}, {1, 0}}, "Position" -> {3, 3}|>
        },
        <|"Image" -> {{1, 0}, {0, 1}}, "Position" -> {1, 1}|>
    ]
    
    ===
    
    <|"UUID" -> 1, "Image" -> {{1, 0}, {0, 1}}, "Position" -> {1, 1}|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSelectMatchingObject]
    
    \maintainer danielb
*)
Clear[ARCSelectMatchingObject];
ARCSelectMatchingObject[objects_List, object_Association] :=
    SelectFirst[
        objects,
        ARCSameQ[#, object] &
    ]

(*!
    \function ARCMatchingObjectExistsQ
    
    \calltable
        ARCMatchingObjectExistsQ[objects, object] '' Returns True if there is a matching object in `objects` that matches `object` wrt Image and Position.
    
    Examples:
    
    ARCMatchingObjectExistsQ[
        {
            <|"UUID" -> 1, "Image" -> {{1, 0}, {0, 1}}, "Position" -> {1, 1}|>,
            <|"UUID" -> 2, "Image" -> {{0, 1}, {1, 0}}, "Position" -> {3, 3}|>
        },
        <|"Image" -> {{1, 0}, {0, 1}}, "Position" -> {1, 1}|>
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCMatchingObjectExistsQ]
    
    \maintainer danielb
*)
Clear[ARCMatchingObjectExistsQ];
ARCMatchingObjectExistsQ[objects_List, object_Association] :=
    !MissingQ[
        ARCSelectMatchingObject[objects, object]
    ]

(*!
    \function ARCEcho
    
    \calltable
        ARCEcho[expr] '' Echoes the given ARC expression indented.
    
    \maintainer danielb
*)
Clear[ARCEcho];
ARCEcho[expr_] :=
    (
        Echo[ARCIndent[expr]];
        expr
    )

(*!
    \function ARCEcho2
    
    \calltable
        ARCEcho2[expr] '' Like ARCEcho but also uses SimplifyObjects.
    
    \maintainer danielb
*)
Clear[ARCEcho2];
ARCEcho2[expr_] :=
    (
        ARCEcho[SimplifyObjects["Expression" -> expr]];
        expr
    )

(*!
    \function ARCGeneralizeConclusions
    
    \calltable
        ARCGeneralizeConclusions[conclusions, referenceableInputObjects, examples] '' Given a list of conclusions, attempts to produce a single general conclusion that can be used instead.
    
    TODO: IIRC, as of July 25 2022, we are using reference objects to try to dynamically infer
          conclusion values, but I don't think we're yet using the _input object_'s property
          values to try to dynamically infer conclusion values.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGeneralizeConclusions]
    
    \maintainer danielb
*)
$transformTypes = <|
    Automatic -> <|
        "MinimalPropertySets" -> {
            {"Image", "Position"},
            {"Shape" | "Shapes", "Color", "Position", "Width" | "X2Inverse", "Height" | "Y2Inverse"},
            {"Shape" | "Shapes", "Color", "X" | "XInverse", "Y" | "YInverse", "Width" | "X2Inverse", "Height" | "Y2Inverse"}
        },
        "SubProperties" -> {
            "Image" -> <||>,
            "Position" -> <|
                "SubProperties" -> {
                    "RelativePosition" -> <||>,
                    "Y" -> <|
                        "ObjectGet" -> Function[#["Y"]]
                    |>,
                    "X" -> <|
                        "ObjectGet" -> Function[#["X"]]
                    |>
                },
                "MinimalPropertySets" -> {
                    {"RelativePosition"},
                    {"Y", "X"}
                }
            |>,
            "Shapes" -> <|
                "ClassList" -> True
            |>
        }
    |>,
    "Move" -> <|
        (* MinimalPropertySets are sets of properties that can fully specify the transform
           given that you also know the input object. For example, a move can be specified
           either by just the Offset, or by just the Position. *)
        "MinimalPropertySets" -> {
            {"BlockedBy"},
            {"Offset"},
            {"Position"}
        },
        "SubProperties" -> {
            "Offset" -> <|
                "SubProperties" -> {"Y" | Missing["Y"], "X" | Missing["X"]}
            |>,
            "Position" -> <|
                "SubProperties" -> {
                    "Y" -> <|
                        "ObjectGet" -> Function[#["Y"]]
                    |>,
                    "X" -> <|
                        "ObjectGet" -> Function[#["X"]]
                    |>
                }
            |>,
            "BlockedBy" -> <||>
        }
    |>,
    "AddComponents" -> <|
        "MinimalPropertySets" -> {
            {"Components"}
        },
        "SubProperties" -> {
            "Components" -> <|
                "MinimalPropertySets" -> {
                    {"Image", "Position"},
                    {"Shapes", "Width", "Height", "Color", "Position"},
                    {"Shape", "Width", "Height", "Color", "Position"},
                    (* TODO: We need two rules for this, one for X, and one for Y.
                                See: 25d487eb *)
                    {"Outward", "Shape", "Direction", "Color", "X"}
                },
                "SubProperties" -> {
                    "Image" -> <||>,
                    "Position" -> <|
                        "SubProperties" -> {
                            "RelativePosition" -> <|
                                "SubProperties" -> {
                                    "Y" | "YInverse",
                                    "X" | "XInverse"
                                }
                            |>
                        }
                    |>,
                    "Shape" -> <|
                        "ObjectGet" -> Function[#["Shape"]]
                    |>,
                    "Shapes" -> <|
                        "ClassList" -> True
                    |>,
                    "Color" -> <|
                        "ObjectGet" -> Function[InferColor[#]]
                    |>,
                    "Width" -> <|
                        "ObjectGet" -> Function[#["Width"]]
                    |>,
                    "Height" -> <|
                        "ObjectGet" -> Function[#["Height"]]
                    |>,
                    "Outward" -> <||>,
                    "Direction" -> <||>,
                    "Y" -> <|
                        "ObjectGet" -> Function[#["Y"]]
                    |>,
                    "X" -> <|
                        "ObjectGet" -> Function[#["X"]]
                    |>
                }
            |>
        }
    |>,
    "AddObjects" -> <|
        "MinimalPropertySets" -> {
            {"Objects"}
        },
        "SubProperties" -> {
            "Objects" -> <|
                "SubProperties" -> {
                    "Image" -> <||>,
                    "Y" -> <||>,
                    "X" -> <||>,
                    "Shape" -> <||>,
                    "Color" -> <||>,
                    "Width" -> <||>,
                    "Height" -> <||>
                },
                "MinimalPropertySets" -> {
                    {"Image", "Y", "X"},
                    {"Shape", "Width", "Height", "Color", "Y", "X"}
                }
            |>
        }
    |>
|>;
Clear[ARCGeneralizeConclusions];
ARCGeneralizeConclusions[conclusionsIn_List, referenceableInputObjects_Association, examples_List] :=
    Module[
        {
            conclusions = conclusionsIn,
            inputObjectComponentSets,
            referenceableComponents = <||>,
            referenceableObjects = referenceableInputObjects,
            transformType,
            transformDetails
        },
        
        (* HERE1 *)
        
        inputObjectComponentSets = conclusions[[All, "Input", "Components"]];
        If [MatchQ[inputObjectComponentSets, {Repeated[{__}]}],
            (* All input objects have components. *)
            referenceableComponents =
                ReturnIfFailure@
                ARCMakeObjectsReferenceable[
                    "ObjectLists" -> inputObjectComponentSets,
                    "AdditionalConditions" -> <|"Context" -> "Component"|>
                ];
            If [Length[referenceableComponents] > 0,
                (* We have found some referenceable components. *)
                referenceableObjects = Join[
                    (* We'll put the referenceable _components_ first since it seems more likely
                       that we'd be able to infer something using the more local context of the
                       input object's components than using something from the global scene.
                       That said, perhaps that's only true about position related properties? *)
                    referenceableComponents,
                    referenceableObjects
                ]
            ]
        ];
        
        Which[
            (* Always a transform of the same type? *)
            AllTrue[
                conclusions,
                MatchQ[#, KeyValuePattern["Transform" -> type_]] &
            ],
                transformType = conclusions[[1, "Transform", "Type"]];
                conclusions = Function[{conclusion},
                    Prepend[
                        KeyDrop[conclusion, "Transform"],
                        "Value" -> KeyDrop[conclusion["Transform"], "Type"]
                    ]
                ] /@ conclusions,
            (* Not a named transform type, but rather each conclusion is just updating
               one or more property values? *)
            MatchQ[
                DeleteDuplicates[conclusions[[All, "Transform"]]],
                {_Missing}
            ],
                conclusions = Function[{conclusion},
                    Prepend[
                        KeyTake[conclusion, {"Example", "Input"}],
                        "Value" -> KeyDrop[conclusion, {"Example", "Input"}]
                    ]
                ] /@ conclusions;
                transformType = Automatic
        ];
        
        If [StringQ[transformType] || transformType === Automatic,
            
            transformDetails = ReturnFailureIfMissing[
                $transformTypes[transformType],
                "MissingTransformationDetails",
                "$transformTypes doesn't specify details for the transform type " <> ToString[transformType] <> ".",
                "Conclusions" -> conclusions
            ];
            
            Replace[
                ReturnIfFailure@
                ARCGeneralizeConclusionValue[
                    {},
                    transformDetails,
                    conclusions,
                    referenceableObjects,
                    examples
                ],
                Rule[
                    _,
                    ruleRHS_
                ] :>
                    If [transformType === Automatic,
                        ruleRHS
                        ,
                        <|
                            "Transform" -> Prepend[
                                ruleRHS,
                                "Type" -> transformType
                            ]
                        |>
                    ]
            ]
            ,
            Missing["NotFound"]
        ]
    ]

(*!
    \function ToXY
    
    \calltable
        ToXY[positionOrOffset] '' Given a list with two components, represent it as an Association with an X and a Y.
    
    Examples:
    
    ToXY[{1, 2}] === <|"X" -> 1, "Y" -> 2|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ToXY]
    
    \maintainer danielb
*)
Clear[ToXY];
Options[ToXY] =
{
    "RemoveZeroes" -> False     (*< If one or both of the components have 0 values, should they be not specified explicitly? *)
};
ToXY[positionOrOffset: {y_, x_}, OptionsPattern[]] :=
    If [TrueQ[OptionValue["RemoveZeroes"]],
        <|
            If [y =!= 0,
                "Y" -> y
                ,
                Nothing
            ],
            If [x =!= 0,
                "X" -> x
                ,
                Nothing
            ]
        |>
        ,
        <|"Y" -> y, "X" -> x|>
    ]

(*!
    \function ToPosition
    
    \calltable
        ToPosition[positionAssoc] '' Converts a position from association from to list form.
    
    Examples:
    
    ToPosition[<|"Y" -> 1, "X" -> 2|>] === {1, 2}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ToPosition]
    
    \maintainer danielb
*)
Clear[ToPosition];
ToPosition[position: KeyValuePattern[{"Y" -> y_, "X" -> x_}]] :=
    {y, x}

ToPosition[position: KeyValuePattern[{("Y" | "YInverse") -> y_, ("X" | "XInverse") -> x_}], parentObject_Association] :=
    {
        If [MissingQ[position["Y"]],
            (* YInverse *)
            parentObject["Height"] + position["YInverse"] - 1
            ,
            y
        ]
        ,
        If [MissingQ[position["X"]],
            (* XInverse *)
            parentObject["Width"] + position["XInverse"] - 1
            ,
            x
        ]
    }

ToPosition[position: KeyValuePattern[{"Y" -> y_}]] :=
    {y, 0}

ToPosition[position: KeyValuePattern[{"X" -> x_}]] :=
    {0, x}

(* Already a position. *)
ToPosition[position:{_, _}, parentObject_ : Null] := position

ToPosition[expr_, parentObject_ : Null] :=
    ReturnFailure[
        "ToPositionFailure",
        "Unable to convert the given expression to a position.",
        "Position" -> expr
    ]

(*!
    \function ARCGeneralizeConclusionValue
    
    \calltable
        ARCGeneralizeConclusionValue[propertyPath, propertyAttributes, conclusions, referenceableObjects, examples] '' Given a list of conclusion values that we'd like to generalize for a given property (or sub-property), attempts to determine how to dynamically produce the given values from the input objects.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGeneralizeConclusionValue]
    
    \maintainer danielb
*)
Clear[ARCGeneralizeConclusionValue];
ARCGeneralizeConclusionValue[propertyPath_List, propertyAttributes: _Association | Automatic, conclusions_List, referenceableObjects_Association, examples_List] :=
    (*EchoTag["ARCGeneralizeConclusionValue result" -> propertyPath]@*)
    Module[
        {
            property =
                If [propertyPath =!= {},
                    Last[propertyPath]
                    ,
                    None
                ],
            values,
            commonValues,
            uniqueValue,
            subPropertySets
        },
        
        (* HERE2 *)
        
        ARCEcho3["propertyPath" -> propertyPath];
        
        values = conclusions[[All, "Value"]];
        
        (*If [property === "Angle",
            EchoTag["values"][values];
            (*EchoTag["Conclusion values"][conclusions[[All, "Input", property]]];*)
        ];*)
        
        If [!FreeQ[values, _Missing],
            Return[Missing["NotInferrable", "RequiredValuesMissing"], Module]
        ];
        
        (* The values in the conclusions are the same as the values in the inputs, so we
           don't need (or want) to include this property in the conclusion. Our quick check
           here doesn't take into account "GetFunction" property attributes, so perhaps
           we should enhance it to do that. We do check for that later below by calling
           ARCGeneralizeConclusionValueNonRecursive if we detect a unique value, but
           that is only one case. (and we call ARCGeneralizeConclusionValueNonRecursive
           at the very bottom of this function, but again, that won't catch all
           cases prior to other code below evaluating, such as the code we have for
           dealing with ClassList values, etc.) *)
        If [property =!= None && conclusions[[All, "Input", property]] === values,
            (* But if we're adding a component, then I don't think we want to skip
               including this property value, since the added component isn't the
               same object as the input. e.g. 253bf280
               See also equivalent logic in ARCGeneralizeConclusionValueNonRecursive. *)
            If [!MatchQ[propertyPath, {"Components", ___}],
                Return[Nothing, Module]
            ]
        ];
        
        If [And[
                AssociationQ[propertyAttributes],
                TrueQ[propertyAttributes["ClassList"]]
            ],
            (* The values of this property are lists of classes that the object is a member
               of, so what we need to do is check if all of the objects share a common
               intersection of those classes. *)
            Replace[
                Intersection[
                    Sequence @@ values,
                    (* I'm not sure why this is necessary, but if we don't specify it, then:
                       Intersection[
                           {
                               <|"a" -> 1, "b" -> 2|>
                           },
                           {
                               <|"a" -> 1|>
                           }
                       ]
                      ... doesn't work correctly. *)
                    SameTest -> SameQ
                ],
                intersection:{__} :> Return[
                    
                    commonValues =
                        (* Because our conclusion will be used to generate a scene,
                           I think we can get away with just keeping the most specific
                           classes. e.g. ifmyulnv8-shape *)
                        ARCPruneAlternatives[
                            intersection,
                            property,
                            "Most" -> "Specific"
                        ];
                    
                    property -> commonValues,
                    Module
                ]
            ]
            ,
            If [Length[uniqueValue = DeleteDuplicates[values]] === 1,
                (* This property has a predictable value. *)
                If [ARCGeneralizeConclusionValueNonRecursive[
                        propertyPath,
                        propertyAttributes,
                        conclusions,
                        referenceableObjects,
                        examples
                    ] === Nothing,
                    (* But actually, its value is always the same as the input's value,
                       so we don't need to include this property in our rule's conclusion. *)
                    Return[Nothing, Module]
                    ,
                    (* Constant value, and different than input. *)
                    (* TODO: In cases like 66e6c45b, this results in us returning
                             <|"Position" -> ..., "Offset"|>, but we only want to return
                             one of those, I think. Should we _not_ return here and let
                             execution flow below where it looks for a working minimal
                             property set? (related: Did we add this Return here as a
                             performance optimization, or to fix something else?)
                             For now we'll handle this in ARCCleanRules. *)
                    Return[property -> uniqueValue[[1]], Module]
                ]
            ]
        ];
        
        If [And[
                AssociationQ[propertyAttributes],
                Or[
                    AssociationQ[conclusions[[1, "Value"]]],
                    And[
                        ListQ[conclusions[[1, "Value"]]],
                        (* Only consider this a list of nested structures if the property
                           attributes defined sub-properties. For example, we don't want
                           to accidentally treat treat Position as a list of nested
                           structures. *)
                        ListQ[propertyAttributes["SubProperties"]]
                    ]
                ]
            ],
            subPropertySets = Replace[
                ReturnIfFailure@
                ARCSubPropertySets[propertyAttributes],
                _Missing :> (
                    (* $transformTypes doesn't specify which sub-properties we need to be able
                       to infer -- which it really should. As a fallback, we'll just try iterating
                       over the keys that are specified in this conclusion association. *)
                    {
                        Keys[values[[1]]]
                    }
                )
            ];
            
            rules =
                ReturnIfFailure@
                Module[{},
                    Function[{theseSubProperties},
                        (*ReturnIfNotMissing@*)
                        If [ListQ[conclusions[[1, "Value"]]],
                            (* This property's values are actually lists of
                               nested objects, so we need to process them
                               specially. *)
                            valueCounts = Length /@ conclusions[[All, "Value"]];
                            If [Length[DeleteDuplicates[valueCounts]] =!= 1,
                                (* Not all lists are of the same size, so for now we'll
                                   give up on this case. *)
                                Return[Missing["NotImplemented", "ListsOfDifferingSizes"], Module]
                                ,
                                Module[{},
                                    Function[{listPosition},
                                        Replace[
                                            ReturnIfFailure@
                                            arcGeneralizeConclusionValueHelper[
                                                propertyPath,
                                                theseSubProperties,
                                                Function[{conclusion},
                                                    Prepend[
                                                        KeyTake[conclusion, {"Example", "Input"}],
                                                        "Value" -> conclusion[["Value", listPosition]]
                                                    ]
                                                ] /@ conclusions,
                                                referenceableObjects,
                                                examples
                                            ],
                                            Nothing | _Missing :> Return[Missing["NotFound"], Module]
                                        ]
                                    ] /@ Range[valueCounts[[1]]]
                                ]
                            ],
                            ReturnIfFailure@
                            arcGeneralizeConclusionValueHelper[
                                propertyPath,
                                theseSubProperties,
                                conclusions,
                                referenceableObjects,
                                examples
                            ]
                        ]
                    ] /@ subPropertySets
                ];
            
            If [!MatchQ[rules, _Missing],
                Replace[
                    Cases[rules, Except[_Missing]],
                    possibleRules:{__} :> (
                        (*Echo[propertyPath -> possibleRules];*)
                        Return[
                            property -> ARCChooseBestTransform[possibleRules],
                            Module
                        ]
                    )
                ]
            ]
        ];
        
        If [propertyPath =!= {},
            (* Try to infer the values as whole values, as opposed to trying to infer their
               sub-properties one at a time. *)
            ARCGeneralizeConclusionValueNonRecursive[
                propertyPath,
                propertyAttributes,
                conclusions,
                referenceableObjects,
                examples
            ]
            ,
            Missing["NotFound"]
        ]
    ]

(*!
    \function ARCGeneralizeConclusionValueNonRecursive
    
    \calltable
        ARCGeneralizeConclusionValueNonRecursive[propertyPath, propertyAttributes, conclusions, referenceableInputObjects, examples] '' Helper for ARCGeneralizeConclusionValue that handles the non-recursive case where we aren't trying to infer deeper sub-properties but rather simply trying to infer these as whole values.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGeneralizeConclusionValueNonRecursive]
    
    \maintainer danielb
*)
Clear[ARCGeneralizeConclusionValueNonRecursive];
ARCGeneralizeConclusionValueNonRecursive[propertyPath_List, propertyAttributes: _Association | Automatic, conclusions_List, referenceableObjects_Association, examples_List] :=
    Module[
        {
            property =
                If [propertyPath === {},
                    None
                    ,
                    Last[propertyPath]
                ],
            values,
            defaultGetFunction,
            getFunction,
            inputObjectValues
        },
        
        values = conclusions[[All, "Value"]];
        
        (*If [MatchQ[propertyPath, {___, "Y2Inverse"}],
            EchoTag["values"][values]
        ];*)
        
        defaultGetFunction =
            If [propertyPath =!= {},
                With[{property = property},
                    Function[#[property]]
                ]
                ,
                Missing["None"]
            ];
        
        getFunction =
            If [propertyAttributes === Automatic,
                defaultGetFunction
                ,
                Lookup[
                    propertyAttributes,
                    "ObjectGet",
                    defaultGetFunction
                ]
            ];
        
        Which[
            !MatchQ[getFunction, _Function | _Missing],
                ReturnFailure[
                    "MissingObjectGetFunction",
                    "The transformation property (or sub-property) doesn't specify its ObjectGet function.",
                    "PropertyPath" -> propertyPath,
                    "PropertyAttributes" -> propertyAttributes
                ],
            MatchQ[getFunction, _Function],

                inputObjectValues = getFunction /@ conclusions[[All, "Input"]];
                
                Which[
                    (* The first thing we should check is to ensure that these
                       sub-properties actually change from the values they have
                       in the inputs. If not, we can actually just drop this key
                       from our rule conclusion. (Actually, for nested transform
                       properties, like a component in an AddComponents, I don't
                       think we'd actually want to _drop_ these keys. Wouldn't
                       it be better to replace them with something like:
                       ObjectValue["InputObject"],
                       or ObjectValue["InputObject", "MyProperty"]? *)
                    And[
                        values === inputObjectValues,
                        (* But if we're adding a component, then I don't think we want to skip
                           including this property value, since the added component isn't the
                           same object as the input. e.g. 253bf280 *)
                        !MatchQ[propertyPath, {"Components", ___}]
                    ],
                        Return[Nothing, Module],
                    And[
                        AllTrue[inputObjectValues, NumberQ],
                        Length[differences = DeleteDuplicates[values - inputObjectValues]] === 1
                    ],
                        (* The transform values appear to be a predictable
                           arithmetic difference away from the object's values. *)
                        Return[
                            (* TODO: We are using ObjectGet functions to abstract away how we
                                     lookup values from the object for a transform's property,
                                     but here we want a particular key name. For now we'll
                                     just assume the property names match, but we should
                                     perhaps move away from using ObjectGet _functions_
                                     and instead specify them as the corresponding property
                                     name. *)
                            property -> Inactive[Plus][
                                ObjectValue["InputObject", property],
                                First[differences]
                            ],
                            Module
                        ]
                ]
        ];
        
        (* Check whether any of the referenceable objects can be used to infer the values. *)
        property ->
            ReturnIfMissing@
            ReturnIfFailure@
            ARCGeneralizeConclusionValueUsingReferenceableObjects[
                propertyPath,
                KeyTake[conclusions, {"Value", "Example", "Input"}],
                referenceableObjects,
                examples,
                (* e.g. referenceable-components *)
                "RelativePosition" -> Or[
                    MemberQ[propertyPath, "RelativePosition"],
                    And[
                        propertyPath =!= {},
                        StringContainsQ[Last[propertyPath], "Relative"]
                    ]
                ]
            ]
    ]

(*!
    \function arcGeneralizeConclusionValueHelper
    
    \calltable
        arcGeneralizeConclusionValueHelper[propertyPath, subProperties, conclusions, referenceableInputObjects, examples] '' Helper for ARCGeneralizeConclusionValue that considers a specific set of sub properties.
    
    \maintainer danielb
*)
Clear[arcGeneralizeConclusionValueHelper];
arcGeneralizeConclusionValueHelper[propertyPath_List, subProperties_List, conclusions_List, referenceableInputObjects_Association, examples_List] :=
    Module[
        {
            subPropertyAlternatives,
            subPropertyResults
        },
        Association[
            Function[{subPropertySpec},
                
                subPropertyAlternatives = Replace[
                    subPropertySpec,
                    {
                        values_Alternatives :> List @@ values,
                        other_ :> {other}
                    }
                ];
                
                subPropertyAlternatives =
                    Association@
                    Replace[
                        subPropertyAlternatives,
                        propertyName: _String | Missing[_String] :> propertyName -> <||>,
                        {1}
                    ];
                
                subPropertyResults =
                    ReturnIfFailure@
                    Module[{},
                        KeyValueMap[
                            Function[{subPropertyName, subPropertyAttributes},
                                If [MatchQ[subPropertyName, Missing[_String]],
                                    (* We're OK with this property simply being unspecified
                                       in the conclusions. If so, we don't need to specify
                                       this property in the final rule's conclusion. *)
                                    With[{propertyName = subPropertyName[[1]]},
                                        If [MatchQ[
                                                conclusions[[All, "Value", propertyName]],
                                                {Repeated[_Missing]}
                                            ],
                                            (* We don't need to specify this property since
                                               it's always missing. *)
                                            Return[{}, Module]
                                            ,
                                            (* The values aren't always missing, so we do
                                               need to specify this property. *)
                                            Nothing
                                        ]
                                    ]
                                    ,
                                    ReturnIfFailure@
                                    ARCGeneralizeConclusionValue[
                                        Append[propertyPath, subPropertyName],
                                        (* Property attributes *)
                                        subPropertyAttributes,
                                        AssociationApply[
                                            conclusions,
                                            <|
                                                "Value" -> Function[
                                                    #[subPropertyName]
                                                ]
                                            |>
                                        ],
                                        referenceableInputObjects,
                                        examples
                                    ]
                                ]
                            ],
                            subPropertyAlternatives
                        ]
                    ];
                
                If [Or[
                        DeleteMissing[subPropertyResults] =!= {},
                        (* No sub-properties needed to be inferred because they
                           don't change. *)
                        subPropertyResults === {}
                    ],
                    ARCChooseBestTransform[DeleteMissing[subPropertyResults]]
                    ,
                    Return[
                        Missing[
                            "NotInferrable",
                            Replace[
                                subPropertyAlternatives,
                                {
                                    {item} :> item[[1]],
                                    items_List :> Alternatives @@ items[[All, 1]]
                                }
                            ]
                        ],
                        Module
                    ]
                ]
                
            ] /@ subProperties
        ] 
    ]

(*!
    \function ARCGeneralizeConclusionValueUsingReferenceableObjects
    
    \calltable
        ARCGeneralizeConclusionValueUsingReferenceableObjects[propertyPath, values, referenceableObjects, examples] '' Checks whether any of the referenceable objects can be used to infer the given values.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGeneralizeConclusionValueUsingReferenceableObjects]
    
    \maintainer danielb
*)
Clear[ARCGeneralizeConclusionValueUsingReferenceableObjects];
Options[ARCGeneralizeConclusionValueUsingReferenceableObjects] =
{
    "RelativePosition" -> False     (*< Can be set to True if we are trying to infer a relative position, in which case we only want to consider particular properties. For example, we shouldn't use an absolute Y property value to infer a relative position property. *)
};
ARCGeneralizeConclusionValueUsingReferenceableObjects[propertyPath_List, values_List, referenceableObjects_Association, examples_List, opts:OptionsPattern[]] :=
    Module[{theseExamples, theseComponents, objects, valuesToInfer, property},
        
        $debugProperty = "Y";
        
        theseExamples = examples[[values[[All, "Example"]]]];
        theseComponents = values[[All, "Input", "Components"]];
        
        (* For now, because we're only considering values in referenceable objects on their
           own (not combined with values from any input objects), we can skip this function
           if we find that not all objects in a particular example share the same
           to-be-inferred value. If we ever remove this constraint, then we should take
           care to avoid re-computing the below on multiple instances from `values` that
           are objects from the same example. *)
        FirstCase[
            Length /@ (DeleteDuplicates /@ GroupBy[values, Function[#["Example"]] -> Function[#["Value"]]]),
            Except[1] :> Return[Missing["NotInferrable"], Module]
        ];
        
        valuesToInfer = values[[All, "Value"]];
        
        (*If [Last[propertyPath] === $debugProperty,
            ARCEcho[
                valuesToInfer
            ]
        ];*)
        
        referenceableValues =
            Function[{reference},
                
                Switch[
                    reference[[1, "Context"]],
                    "Component",
                        objects = Function[{components},
                            ReturnIfFailure@
                            GetObject[reference, components]
                        ] /@ theseComponents,
                    "Output",
                        objects = Function[{example},
                            ReturnIfFailure@
                            GetObject[reference, example["Output"]]
                        ] /@ theseExamples,
                    _Missing,
                        objects = Function[{example},
                            ReturnIfFailure@
                            GetObject[reference, example["Input"]]
                        ] /@ theseExamples,
                    _,
                        ReturnFailure[
                            "UnsupportedReferenceContext",
                            "The reference context '" <> reference[[1, "Context"]] <> "' isn't supported by ARCGeneralizeConclusionValueUsingReferenceableObjects."
                        ]
                ];
                
                (*If [reference === Object[<|"Colors" -> {1}, "Context" -> "Component"|>],
                    Echo["valuesToInfer" -> valuesToInfer];
                    ARCEcho[
                        KeyTake[objects, {"Colors", "YRelative"}]
                    ]
                ];*)
                
                property =
                    ARCFindPropertyToInferValues[
                        propertyPath,
                        objects,
                        valuesToInfer,
                        opts
                    ];
                
                (*If [And[
                        Last[propertyPath] === $debugProperty,
                        reference === Object[<|"Colors" -> {1}|>]
                    ],
                    ARCEcho[
                        {
                            "Objects" -> SimplifyObjects[objects],
                            "ValuesToInfer" -> valuesToInfer
                        }
                    ]
                ];*)
                
                If [!MissingQ[property],
                    If [FreeQ[property, TODO],
                        ObjectValue[reference[[1]], property]
                        ,
                        (* We didn't get back a property name but rather an expression
                           involving the property, which needs the object reference pattern
                           substituted into it. *)
                        Replace[
                            property,
                            TODO -> reference[[1]],
                            {1, Infinity}
                        ]
                    ]
                    ,
                    Nothing
                ]
                
            ] /@ Keys[referenceableObjects];
        
        (* Echo[referenceableObjects -> referenceableValues]; *)
        
        If [MatchQ[referenceableValues, {__}],
            (* TODO: Instead of just choosing the first one, choose the best one. *)
            (*If [Last[propertyPath] === $debugProperty,
                ARCEcho["referenceableValues" -> referenceableValues]
            ];*)
            First[referenceableValues]
            ,
            Missing["NotFound"]
        ]
    ]

(*!
    \function ARCFindPropertyToInferValues
    
    \calltable
        ARCFindPropertyToInferValues[propertyPath, objects, values] '' Given a list of objects and a corresponding list of values that need to be inferred, returns the property that can be used to perform the inference, or Missing if none found.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFindPropertyToInferValues]
    
    \maintainer danielb
*)
Clear[ARCFindPropertyToInferValues];
Options[ARCFindPropertyToInferValues] =
{
    "RelativePosition" -> False     (*< Can be set to True if we are trying to infer a relative position, in which case we only want to consider particular properties. For example, we shouldn't use an absolute Y property value to infer a relative position property. *)
};
ARCFindPropertyToInferValues[propertyPath_List, objects_List, values_List, opts:OptionsPattern[]] :=
    Module[{transposedObjects, matchingProperties, values2},
        
        transposedObjects = AssociationTranspose[
            KeyDrop[
                objects,
                {"UUID"}
            ]
        ];
        
        (* What properties of these objects appear to be usable to infer these values? *)
        matchingProperties = Select[
            transposedObjects,
            # === values &
        ];
        
        (* What properties of these objects, if we use some math, appear to be usable
           to infer these values? *)
        matchingPropertiesUsingMath = Select[
            transposedObjects,
            And[
                AllTrue[values, NumberQ],
                AllTrue[#, NumberQ],
                (* TODO: Why do we need this condition? Shouldn't the lengths of these things
                         always be the same. e.g. relative-components *)
                Length[values] === Length[#],
                And[
                    Length[differences = DeleteDuplicates[values - #]] === 1,
                    differences =!= {0}
                ]
            ] &
        ];
        
        (* HERE *)
        
        matchingProperties =
            ARCPruneMatchingPropertiesForRelativePositions[
                matchingProperties,
                OptionValue["RelativePosition"]
            ];
        
        matchingPropertiesUsingMath =
            ARCPruneMatchingPropertiesForRelativePositions[
                matchingPropertiesUsingMath,
                OptionValue["RelativePosition"]
            ];
        
        Which[
            Length[matchingProperties] > 0,
                (* TODO: What to do if there are multiple properties that could
                         be used? *)
                First[Keys[matchingProperties]],
            Length[matchingPropertiesUsingMath] > 0,
                (* NOTE: As of Aug 18 2022, this function is called with one referenceable object
                         after another, and the first one that has a suitable property results in
                         that property being used. Related to that is that when we form the list
                         of referenceable objects, we put the "Context" -> "Component" ones first,
                         since we feel it's more likely that a property of a component will yield
                         the best property to use. (it feels "closer" to the thing we're trying
                         to infer) This has interplay though with `matchingProperties` vs
                         `matchingPropertiesUsingMath` in that even if there is a referenceable
                         object with a property that doesn't need math, we might choose a
                         property that _does_ need math given how to iterate over objects
                         and choose the first usable property of the first visited object.
                         It could easily be the case that that isn't desirable. *)
                (* TODO: What to do if there are multiple properties that could
                         be used? *)
                With[{property = First[Keys[matchingPropertiesUsingMath]]},
                    Inactive[Plus][
                        ObjectValue[
                            (* The caller is responsible for filling in the object reference
                               pattern here. e.g. referenceable-components *)
                            TODO,
                            property
                        ],
                        With[{difference = values[[1]] - transposedObjects[[property, 1]]},
                            difference
                        ]
                    ]
                ],
            True,
                (* Also check if there are any properties that have list values containing
                   a single item, where our value is the single value. For example, if we
                   are trying to infer a "Color" transform property, and the object has
                   "Colors" -> {<that-color>}. *)
                values2 = {#} & /@ values;
                matchingProperties = Select[
                    transposedObjects,
                    # === values2 &
                ];
                
                If [Length[matchingProperties] > 0,
                    (* TODO: What to do if there are multiple properties that could
                             be used? *)
                    Inactive[First][
                        First[Keys[matchingProperties]]
                    ]
                    ,
                    Missing["NotFound"]
                ]
        ]
    ]

(*!
    \function AssociationTranspose
    
    \calltable
        AssociationTranspose[assocs] '' Given a list of associations, transposes them into a single Association who's keys map to lists.
    
    Examples:
    
    AssociationTranspose[
        {<|"a" -> 1, "b" -> 4|>, <|"a" -> 2, "b" -> 5|>, <|"a" -> 3, "b" -> 6|>}
    ]
    
    ===
    
    <|"a" -> {1, 2, 3}, "b" -> {4, 5, 6}|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`AssociationTranspose]
    
    \maintainer danielb
*)
Clear[AssociationTranspose];
AssociationTranspose[assocs_] :=
    GroupBy[
        Flatten[Normal[assocs]],
        First -> Last
    ]

(*!
    \function ResolveValues
    
    \calltable
        ResolveValues[expr, inputAssociation, scene] '' Given an expression, replaces uses of ObjectValue with their resolved values.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ResolveValues]
    
    \maintainer danielb
*)
Clear[ResolveValues];
Options[ResolveValues] =
{
    "Activate" -> False     (*< If there are an Inactive parts of the resultant expression, should we activate them? *)
};
ResolveValues[expr_, inputObject_Association, scene_Association, OptionsPattern[]] :=
    Module[{resolvedObject, propertyValue, head},
        res = Replace[
            expr,
            {
                (* Resolve an object's value. *)
                ObjectValue[pattern_, property_] :> (
                    
                    head = None;
                    
                    resolvedObject =
                        ReturnIfFailure@
                        GetObject[pattern, scene, <|"InputObject" -> inputObject|>];
                    
                    propertyValue = ReturnFailureIfMissing[
                        Replace[
                            property,
                            {
                                Inactive[h_][propertyName_String] :> (
                                    (* A function should be applied to the property value. *)
                                    head = h;
                                    resolvedObject[propertyName]
                                ),
                                propertyName_String :> resolvedObject[property]
                            }
                        ],
                        "MissingPropertyValue",
                        "A property's value couldn't be found for a resolved object.",
                        "ObjectPattern" -> pattern,
                        "ResolvedObject" -> resolvedObject,
                        "Property" -> property
                    ];
                    
                    If [head =!= None,
                        (* A function should be applied to the property value. *)
                        head[propertyValue]
                        ,
                        propertyValue
                    ]
                ),
                (* Resolve an object. *)
                Object[pattern_] :>
                    ReturnFailureIfMissing[
                        GetObject[pattern, scene, <|"InputObject" -> inputObject|>],
                        "MissingObject",
                        "An object couldn't be resolved.",
                        "ObjectPattern" -> pattern
                    ]
            },
            {0, Infinity}
        ];
        
        If [TrueQ[OptionValue["Activate"]],
            res = Replace[
                res,
                (* Curiously Activate[...] doesn't seem to work. *)
                Inactive[h_] :> h, {0, Infinity},
                Heads -> True
            ]
        ];
        
        res
    ]

(*!
    \function ARCTry
    
    \calltable
        ARCTry[file, trainOrTest, exampleIndex] '' Given an ARC example, tries finding transformation rules and then applying them to the given example.
    
    \maintainer danielb
*)
Clear[ARCTry];
Options[ARCTry] =
{
    "FormMultiColorCompositeObjects" -> Automatic       (*< Whether connected single-color objects should be combined to form multi-color composite objects. If Automatic, we will try forming them, but if that isn't looking to work, we may also try not forming them. *)
};
ARCTry[file_String, trainOrTest_String, exampleIndex_Integer, OptionsPattern[]] :=
    Module[{parsedFile, rules, output, successQ},
        
        parsedFile = ReturnIfFailure[ARCParseFile[file]];
        
        rules =
            ReturnIfFailure@
            ARCFindRules[
                parsedFile["Train"],
                "FormMultiColorCompositeObjects" -> OptionValue["FormMultiColorCompositeObjects"]
            ];
        
        If [MatchQ[rules, KeyValuePattern["Rules" -> _]],
            output = ARCApplyRules[
                parsedFile[trainOrTest, exampleIndex, "Input"],
                rules
            ];
            
            successQ = (output === parsedFile[trainOrTest, exampleIndex, "Output"]);
            ,
            (* We weren't able to come up with a workable rule set. *)
            output = Null;
            successQ = False
        ];
        
        <|
            "Result" ->
                If [successQ,
                    "Success"
                    ,
                    "Failure"
                ],
            "Input" -> parsedFile[trainOrTest, exampleIndex, "Input"],
            "Output" -> output,
            If [!TrueQ[successQ],
                "Expected" -> parsedFile[trainOrTest, exampleIndex, "Output"]
                ,
                Nothing
            ]
        |>
    ]

(*!
    \function ARCNotableSubImages
    
    \calltable
        ARCNotableSubImages[objects] '' Given a list of objects, returns unique images of objects that we should use to potentially split up contiguous objects.
    
    Examples:
    
    ARCNotableSubImages[
        {
            <|"Image" -> ARCScene[{{1, -1}, {-1, 1}}]|>,
            <|"Image" -> ARCScene[{{1, 1}}]|>,
            <|"Image" -> ARCScene[{{1, -1, 1}, {-1, 1, -1}, {1, -1, 1}}]|>
        },
        3,
        3
    ]
    
    ===
    
    {{{1, -1}, {-1, 1}} -> <|"Image" -> ARCScene[{{1, -1}, {-1, 1}}]|>}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCNotableSubImages]
    
    \maintainer danielb
*)
Clear[ARCNotableSubImages];
ARCNotableSubImages[objects_List, sceneWidth_, sceneHeight_] :=
    Module[{},
        Function[{image},
            image[[1]] -> SelectFirst[
                objects,
                (#["Image"] === image) &
            ]
        ] /@
            Select[
                DeleteDuplicates[objects[[All, "Image"]]],
                And[
                    ImageWidth[#] >= 2,
                    ImageHeight[#] >= 2,
                    Not[
                        And[
                            ImageWidth[#] === sceneWidth,
                            ImageHeight[#] === sceneHeight
                        ]
                    ]
                ] &
            ]
    ]

ImageWidth[ARCScene[image_]] := ImageWidth[image]
ImageHeight[ARCScene[image_]] := ImageHeight[image]

(*!
    \function ARCMakeObjectsForSubImages
    
    \calltable
        ARCMakeObjectsForSubImages[object, subImages] '' Given an object, if we find that it is composed of notable sub-images, we break the object up into smaller objects.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCMakeObjectsForSubImages]
    
    \maintainer danielb
*)
Clear[ARCMakeObjectsForSubImages];
Options[ARCMakeObjectsForSubImages] = Options[ARCParseScene];
ARCMakeObjectsForSubImages[object_Association, subImages_List, scene_ARCScene, backgroundColor_Integer, opts:OptionsPattern[]] :=
    Module[{objectWidth, objectHeight, leftoverImage, processedPartsOfImage, subImagesFound, strongSubImageQ},
        
        objectWidth = ImageWidth[object["Image"][[1]]];
        objectHeight = ImageHeight[object["Image"][[1]]];
        
        leftoverImage = object["Image"][[1]];
        
        (*ARCEcho["ARCMakeObjectsForSubImages" -> object["Image"]];*)
        
        (* We use this to avoid processing overlapping sub-images.
           What to do with overlapping sub-images is tricky since it is a source of
           ambiguity. For now we'll resolve the ambiguity arbitrarily. *)
        processedPartsOfImage = ConstantArray[
            0,
            {
                objectHeight,
                objectWidth
            }
        ];
        
        subImagesFound = Function[{subImage},
            
            (* If [ImageWidth[subImage[[1]]] === 3 && ImageHeight[subImage[[1]]] === 3,
                XEcho[SimplifyObjects[subImage]];
                $debug = True
                ,
                $debug = False
            ]; *)
            
            If [Or[
                    ImageWidth[subImage[[1]]] < objectWidth,
                    ImageHeight[subImage[[1]]] < objectHeight
                ],
                subImagePositions =
                    ReturnIfFailure[
                        (*ResourceFunction["FindSubmatrix"][*)
                        FindSubmatrix[
                            leftoverImage,
                            subImage[[1]],
                            "Positions"
                        ]
                    ];
                
                (* If [$debug,
                    EchoIndented[subImagePositions]
                ]; *)
                
                strongSubImageQ =
                    (* If the sub-image occurs at least 3 times, then we have quite
                       strong evidence that it's a sub-image. e.g. 363442ee *)
                    And[
                        Length[subImagePositions] >= 3,
                        (* To be a bit more conservative, we'll ensure at least one of
                           the dimensions is 3, since we do allow notable sub-images
                           that are 2x2, which could lead to false positives. *)
                        Or[
                            ImageWidth[subImage[[1]]] >= 3,
                            ImageHeight[subImage[[1]]] >= 3
                        ],
                        (* There must be at least two colors. e.g. n1hczotml *)
                        Length[DeleteDuplicates[Flatten[subImage[[1]]]]] >= 2
                    ];
                
                (*If [TrueQ[strongSubImageQ],
                    ARCEcho[ARCScene[subImage[[1]]]]
                ];*)
                
                Function[{subImagePosition},
                    If [And[
                            (* Being careful to avoid processing overlapping sub-images. *)
                            DeleteDuplicates[
                                Flatten[
                                    processedPartsOfImage[[
                                        subImagePosition[[1]] ;; subImagePosition[[1]] + ImageHeight[subImage[[1]]] - 1,
                                        subImagePosition[[2]] ;; subImagePosition[[2]] + ImageWidth[subImage[[1]]] - 1
                                    ]]
                                ]
                            ] === {0},
                            Or[
                                TrueQ[strongSubImageQ],
                                (* We ensure that each border of the sub-image contains at least one
                                   pixel of the background color to try to avoid situations where
                                   there really is a contiguous image that shouldn't be split up. *)
                                AllTrue[
                                    ARCImageBorderingStrips[
                                        object["Image"][[1]],
                                        subImagePosition,
                                        {
                                            ImageHeight[subImage[[1]]],
                                            ImageWidth[subImage[[1]]]
                                        },
                                        $nonImageColor
                                    ],
                                    MemberQ[#, $nonImageColor] &
                                ]
                            ]
                        ],
                        (* Paint this region of `leftoverImage` $nonImageColor so that at the end
                           we can tell if our sub-images have accounted for all non-black pixels
                           in the image. *)
                        leftoverImage[[
                            subImagePosition[[1]] ;; subImagePosition[[1]] + ImageHeight[subImage[[1]]] - 1,
                            subImagePosition[[2]] ;; subImagePosition[[2]] + ImageWidth[subImage[[1]]] - 1
                        ]] = $nonImageColor;
                        
                        (* Keep track of what parts of the image we've processed so that we can avoid
                           processing overlapping sub-images. *)
                        processedPartsOfImage[[
                            subImagePosition[[1]] ;; subImagePosition[[1]] + ImageHeight[subImage[[1]]] - 1,
                            subImagePosition[[2]] ;; subImagePosition[[2]] + ImageWidth[subImage[[1]]] - 1
                        ]] = 1;
                        
                        <|
                            "Object" -> subImage[[2]],
                            "Position" -> subImagePosition
                        |>
                        ,
                        Nothing
                    ]
                ] /@ subImagePositions
                ,
                Nothing
            ]
            
        ] /@ subImages;
        
        subImagesFound = Flatten[subImagesFound];
        
        (*ARCEcho[SimplifyObjects[subImagesFound]];*)
        
        Which[
            Length[subImagesFound] > 0,
                Join[
                    (* This object contains one or more notable sub-images, so we'll create
                       independent objects for them. *)
                    Function[{subImageFound},
                        Sett[
                            ARCRepositionObject[
                                subImageFound["Object"],
                                object["Position"] + subImageFound["Position"] - {1, 1},
                                ImageWidth[scene],
                                ImageHeight[scene]
                            ],
                            "UUID" -> CreateUUID[]
                        ]
                    ] /@ subImagesFound
                    ,
                    If [DeleteDuplicates[Flatten[leftoverImage]] =!= {0},
                        (* After removing the sub-images, there are still pixels left, so we will
                           generate object(s) for the leftover pixels. *)
                        ReturnIfFailure@
                        ARCParseScene[
                            ReturnIfFailure@
                            ARCRenderScene[
                                <|
                                    "Background" -> backgroundColor,
                                    "Height" -> ImageHeight[scene],
                                    "Width" -> ImageWidth[scene],
                                    "Objects" -> {
                                        <|
                                            "Image" -> ARCImage[leftoverImage],
                                            "Position" -> object["Position"]
                                        |>
                                    }
                                |>
                            ],
                            backgroundColor,
                            (* Since we're using `opts` below, if we don't do this, it will
                               use the objects from the main image, not our `leftoverImage`. *)
                            "SingleColorObjects" -> Automatic,
                            opts
                        ]
                        ,
                        {}
                    ]
                ],
            True,
                object
        ]
    ]

(*!
    \function ARCInferObjectProperties
    
    \calltable
        ARCInferObjectProperties[object] '' Given an object, infers and sets various property values.
    
    Examples:
    
    ARCInferObjectProperties[<|"Image" -> {{1, 0}, {0, 1}}, "Position" -> {1, 1}|>]
    
    ===
    
    <|
        "Image" -> {{1, 0}, {0, 1}},
        "Position" -> {1, 1},
        "Width" -> 2,
        "Height" -> 2,
        "Y" -> 1,
        "X" -> 1,
        "AspectRatio" -> 1,
        "Area" -> 4,
        "FilledArea" -> 2
    |>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCInferObjectProperties]
    
    \maintainer danielb
*)
Clear[ARCInferObjectProperties];
ARCInferObjectProperties[object_Association, sceneWidth_, sceneHeight_] :=
    Module[{width, height, y, x, y2, x2, area, filledArea},
        
        width = ImageWidth[object["Image"]];
        height = ImageHeight[object["Image"]];
        
        Join[
            object,
            <|
                InferColor["Color" -> <|"Colors" -> object["Colors"]|>],
                "Y" -> (y = object["Position"][[1]]),
                "X" -> (x = object["Position"][[2]]),
                "YInverse" -> (sceneHeight - y + 1),
                "XInverse" -> (sceneWidth - x + 1),
                "Y2" -> (y2 = y + height - 1),
                "X2" -> (x2 = x + width - 1),
                "Y2Inverse" -> (sceneHeight - y2 + 1),
                "X2Inverse" -> (sceneWidth - x2 + 1),
                "Width" -> width,
                "Height" -> height,
                "Length" -> Max[width, height],
                "PrimarySizeDimension" ->
                    Which[
                        height > width,
                            "Y",
                        width > height,
                            "X",
                        True,
                            "None"
                    ],
                "AspectRatio" -> width / height,
                "Area" -> (area = width * height),
                (* Not the width * height area, but rather the area of the shape
                   in terms of number of pixels that aren't the background color. *)
                "FilledArea" -> (filledArea = Length[object["PixelPositions"]]),
                "FilledProportion" -> N[filledArea / area]
            |>
        ]
    ]

(*!
    \function ARCRepositionObject
    
    \calltable
        ARCRepositionObject[object, position] '' Sets the object's position and updates any position-sensitive values.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRepositionObject]
    
    \maintainer danielb
*)
Clear[ARCRepositionObject];
ARCRepositionObject[object_Association, position_List, sceneWidth_Integer, sceneHeight_Integer] :=
    Module[{positionDifference},
        
        positionDifference = position - object["Position"];
        
        ARCInferObjectProperties[
            Sett[
                object,
                {
                    "Position" -> position,
                    "PixelPositions" -> (
                        (# + positionDifference) & /@ object["PixelPositions"]
                    ),
                    If [!MissingQ[object["Components"]],
                        "Components" -> Function[{component},
                            ARCRepositionObject[
                                component,
                                component["Position"] + positionDifference,
                                sceneWidth,
                                sceneHeight
                            ]
                        ] /@ object["Components"]
                        ,
                        Nothing
                    ]
                }
            ],
            sceneWidth,
            sceneHeight
        ]
    ]

(*!
    \function ARCImageBorderingStrips
    
    \calltable
        ARCImageBorderingStrips[image, subImagePosition, subImageDimensions, backgroundColor] '' Given a sub image, returns the bordering strips above/right/below/left of the sub-image, using the background color for any pixels outside of the given image.
    
    Examples:
    
    ARCImageBorderingStrips[
        {{1, 2, 3, 4}, {12, 1, 1, 5}, {11, 1, 1, 6}, {10, 9, 8, 7}},
        {2, 2},
        {2, 2},
        0
    ]
    
    ===
    
    {{{2, 3}}, {{5}, {6}}, {{9, 8}}, {{12}, {11}}}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCImageBorderingStrips]
    
    \maintainer danielb
*)
Clear[ARCImageBorderingStrips];
ARCImageBorderingStrips[image_, subImagePosition_, subImageDimensions_List, backgroundColor_] :=
    Module[{xRange, yRange},
        yRange = subImagePosition[[1]] ;; subImagePosition[[1]] + subImageDimensions[[1]] - 1;
        xRange = subImagePosition[[2]] ;; subImagePosition[[2]] + subImageDimensions[[2]] - 1;
        {
            (* Above *)
            Flatten@
            QuietCheck[
                image[[
                    subImagePosition[[1]] - 1 ;; subImagePosition[[1]] - 1,
                    xRange
                ]],
                ConstantArray[backgroundColor, {1, subImageDimensions[[2]]}]
            ],
            (* Right *)
            Flatten@
            QuietCheck[
                image[[
                    yRange,
                    subImagePosition[[2]] + subImageDimensions[[2]] ;; subImagePosition[[2]] + subImageDimensions[[2]]
                ]],
                ConstantArray[backgroundColor, {subImageDimensions[[1]], 1}]
            ],
            (* Below *)
            Flatten@
            QuietCheck[
                image[[
                    subImagePosition[[1]] + subImageDimensions[[1]] ;; subImagePosition[[1]] + subImageDimensions[[1]],
                    xRange
                ]],
                ConstantArray[backgroundColor, {1, subImageDimensions[[2]]}]
            ],
            (* Left *)
            Flatten@
            QuietCheck[
                image[[
                    yRange,
                    subImagePosition[[2]] - 1 ;; subImagePosition[[2]] - 1
                ]],
                ConstantArray[backgroundColor, {subImageDimensions[[1]], 1}]
            ]
        }
    ]

(*!
    \function ObjectWithinQ
    
    \calltable
        ObjectWithinQ[object1, object2] '' Returns True if object1 is contained within the bounds of object2.
    
    Examples:
    
    ObjectWithinQ[
        <|"Position" -> {2, 2}, "Width" -> 1, "Height" -> 1|>,
        <|"Position" -> {1, 1}, "Width" -> 3, "Height" -> 3|>
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ObjectWithinQ]
    
    \maintainer danielb
*)
Clear[ObjectWithinQ];
ObjectWithinQ[object1_Association, object2_Association] :=
    Module[
        {
            y1 = object1[["Position", 1]],
            x1 = object1[["Position", 2]],
            y2 = object2[["Position", 1]],
            x2 = object2[["Position", 2]]
        },
        And[
            y1 >= y2,
            y1 + object1["Height"] <= y2 + object2["Height"],
            x1 >= x2,
            x1 + object1["Width"] <= x2 + object2["Width"]
        ]
    ]

(*!
    \function ARCToMonochrome
    
    \calltable
        ARCToMonochrome[image, backgroundColor] '' Given an image, makes it black and white.
    
    Examples:
    
    ARCToMonochrome[ARCScene[{{2, 0}, {0, 2}}], 0] === ARCScene[{{10, 0}, {0, 10}}]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCToMonochrome]
    
    \maintainer danielb
*)
Clear[ARCToMonochrome];

ARCToMonochrome[image_List, backgroundColor_Integer] :=
    Replace[image, Except[backgroundColor, _Integer] :> 10, {2}]

ARCToMonochrome[ARCScene[image_], backgroundColor_Integer] :=
    ARCScene[ARCToMonochrome[image, backgroundColor]]

ARCToMonochrome[object:KeyValuePattern["Image" -> image_], backgroundColor_Integer] :=
    Sett[object, "Image" -> ARCToMonochrome[image, backgroundColor]]

ARCToMonochrome[object_Association] := object

(*!
    \function ARCColorize
    
    \calltable
        ARCColorize[image, color] '' Colorizes a black and white image so that white is replaced with another color.
    
    Examples:
    
    ARCColorize[ARCScene[{{1, 0}, {0, 1}}], 2] === ARCScene[{{2, 0}, {0, 2}}]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCColorize]
    
    \maintainer danielb
*)
ARCColorize[image_, color_] :=
    Replace[image, Except[$nonImageColor, _Integer] :> color, {3}]

ARCColorize[ARCScene[image_, color_]]
    ARCScene[ARCToMonochrome[image, $nonImageColor], color]

(*!
    \function SetTrainingDataKeyValue
    
    \calltable
        SetTrainingDataKeyValue[file, key, value] '' Sets a key/value pair for the given training data file.
    
    \maintainer danielb
*)
Clear[SetTrainingDataKeyValue];
SetTrainingDataKeyValue[file_String, key_ -> value_] :=
    Module[{},
        data = ReturnIfFailure[Daniel`Tools`GetPersonalData["ARCTrainingFiles"]];
        If [MissingQ[data[file]],
            data[file] = <||>
        ];
        data[file, key] = value;
        ReturnIfFailure[Daniel`Tools`SetPersonalData["ARCTrainingFiles", data]];
    ]

(*!
    \function ReturnIfDifferingInputAndOutputSize
    
    \calltable
        ReturnIfDifferingInputAndOutputSize[examples] '' Given examples from a parsed file, returns Missing if the input and output grid sizes don't match.
    
    Examples:
    
    ReturnIfDifferingInputAndOutputSize[ReturnIfFailure[ARCParseFile["007bbfb7"]]]
    
    ===
    
    Missing["NotImplemented", "DifferingInputAndOutputSize"]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ReturnIfDifferingInputAndOutputSize]
    
    \maintainer danielb
*)
Clear[ReturnIfDifferingInputAndOutputSize];
ReturnIfDifferingInputAndOutputSize[examples_List] :=
    Function[{example},
        If [!SameQ[
                {ImageHeight[example["Input"]], ImageWidth[example["Input"]]},
                {ImageHeight[example["Output"]], ImageWidth[example["Output"]]}
            ],
            Return[
                Missing["NotImplemented", "DifferingInputAndOutputSize"],
                Module
            ]
        ]
    ] /@ examples;

(*!
    \function ARCAddMoveAttributes
    
    \calltable
        ARCAddMoveAttributes[examples, referenceableOutputObjects] '' Performs additional analysis on Move transforms, adding attributes such as BlockedBy as appropriate.
    
    \maintainer danielb
*)
Clear[ARCAddMoveAttributes];
ARCAddMoveAttributes[examplesIn_List, referenceableOutputObjects_Association] :=
    Module[{examples = examplesIn},
        
        examples = Function[{example},
            Replace[
                example,
                objectMapping:KeyValuePattern[inputObject_ -> outputObject:KeyValuePattern["Transform" -> KeyValuePattern["Type" -> "Move"]]] :> (
                    Sett[
                        objectMapping,
                        inputObject -> Sett[
                            outputObject,
                            "Transform" -> ARCAddMoveAttributes[
                                inputObject,
                                outputObject,
                                example["Output", "Objects"],
                                example["Output", "Scene"],
                                ARCColorToInteger[example["Output", "Background"]],
                                referenceableOutputObjects
                            ]
                        ]
                    ]
                ),
                {1}
            ]
        ] /@ examples;
        
        examples
    ]

ARCAddMoveAttributes[inputObject_Association, outputObject_Association, outputObjects_List, scene_ARCScene, backgroundColor_Integer, referenceableOutputObjects_Association] :=
    Module[
        {
            dx,
            dy,
            length,
            direction,
            blockingPixels,
            objectsByUUID,
            objectsByPixelPosition,
            blockingObjects,
            blockingObjectUUIDs,
            otherObject
        },
        
        dx = outputObject["X"] - inputObject["X"];
        dy = outputObject["Y"] - inputObject["Y"];
        
        If [dx === 0 || dy === 0,
            (* Axis aligned. *)
            
            length = Max[Abs[dx], Abs[dy]];
            direction = {
                dy / length,
                dx / length
            };
            
            (* What pixels could be interpreted as "blocking" the motion of the object? *)
            blockingPixels =
                ARCBlockingPixels[outputObject, direction, scene, backgroundColor];
            
            If [MatchQ[blockingPixels, {__}],
                
                (* TODO: It is inefficient to build these lookups multiple times in various
                         places. We should build them once and re-use them. *)
                objectsByUUID = ObjectsByAttribute[outputObjects, "UUID"];
                objectsByPixelPosition = ObjectsByAttribute[outputObjects, "PixelPosition"];
                
                (* What objects are these blocking pixels a part of?
                   Note: We are currently assuming there aren't any 'hidden' pixels of these
                         objects that `outputObject` is obscuring if it were 'in front of'
                         the supposed blocking object. *)
                blockingObjects =
                    DeleteMissing@
                    Lookup[
                        objectsByUUID,
                        DeleteDuplicates@
                        DeleteMissing@
                        Lookup[objectsByPixelPosition, blockingPixels]
                    ];
            ];
            
            If [MatchQ[blockingObjects, {__}],
                
                blockingObjectUUIDs = blockingObjects[[All, "UUID"]];
                
                Function[{reference},
                    otherObject =
                        ReturnIfFailure@
                        GetObject[reference, outputObjects];
                    If [MemberQ[blockingObjectUUIDs, otherObject["UUID"]],
                        (* For now we'll take the first matching reference. *)
                        Return[
                            Append[
                                outputObject["Transform"],
                                "BlockedBy" -> reference
                            ],
                            Module
                        ]
                    ]
                ] /@ Keys[referenceableOutputObjects];
            ]
        ];
        
        (* Fallthrough. No metdata added. *)
        outputObject["Transform"]
    ]

(*!
    \function ARCObjectEdgePixels
    
    \calltable
        ARCObjectEdgePixels[object, direction] '' Returns the pixel positions along the edge of an object in a particular direction.
    
    Examples:
    
    ARCObjectEdgePixels[
        <|
            "PixelPositions" -> {{9, 2}, {9, 3}, {9, 4}, {10, 1}, {10, 2}, {10, 4}},
            "Y" -> 9,
            "X" -> 1,
            "Width" -> 4,
            "Height" -> 2
        |>,
        {-1, 0}
    ]
    
    ===
    
    {{9, 2}, {9, 3}, {9, 4}}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCObjectEdgePixels]
    
    \maintainer danielb
*)
Clear[ARCObjectEdgePixels];
ARCObjectEdgePixels[object_Association, direction_List] :=
    Module[{pixelPositionPattern},
        
        pixelPositionPattern =
            Switch[
                direction,
                {1, 0},
                    {object["Y"] + object["Height"] - 1, _},
                {-1, 0},
                    {object["Y"], _},
                {0, 1},
                    {_, object["X"] + object["Width"] - 1},
                {0, -1},
                    {_, object["X"]}
            ];
        
        Cases[
            object["PixelPositions"],
            pixelPositionPattern
        ]
    ]

(*!
    \function ARCBlockingPixels
    
    \calltable
        ARCBlockingPixels[pixelPositions, direction, scene, backgroundColor] '' Given some pixels of a moved object and a particular axis-aligned move direction, returns the pixels that are 'blocking' further movement in that direction.
        ARCBlockingPixels[object, direction, scene, backgroundColor] '' Given a moved object and a particular axis-aligned move direction, returns the pixels that are 'blocking' further movement in that direction.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCBlockingPixels]
    
    \maintainer danielb
*)
Clear[ARCBlockingPixels];

ARCBlockingPixels[{}, direction_List, ARCScene[scene_List], backgroundColor_Integer] := {}

ARCBlockingPixels[pixelPositions_List, direction_List, ARCScene[scene_List], backgroundColor_Integer] :=
    Module[{},
        If [ARCOutOfBounds[
                pixelPositions[[1]] + direction,
                scene
            ],
            (* Out of bounds. *)
            {}
            ,
            Select[
                pixelPositions + Table[direction, {Length[pixelPositions]}],
                Function[
                    Part[
                        scene,
                        Sequence @@ #
                    ] =!= backgroundColor
                ]
            ]
        ]
    ]

ARCBlockingPixels[object_Association, direction_List, scene_ARCScene, backgroundColor_Integer] :=
    ARCBlockingPixels[ARCObjectEdgePixels[object, direction], direction, scene, backgroundColor]

(*!
    \function ARCOutOfBounds
    
    \calltable
        ARCOutOfBounds[position, image] '' Returns True if the given position is outside of the bounds of the given image.
    
    Examples:
    
    ARCOutOfBounds[{0, 1}, {{1, 0}, {0, 1}}] === True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCOutOfBounds]
    
    \maintainer danielb
*)
Clear[ARCOutOfBounds];
ARCOutOfBounds[position_List, ARCScene[image_]] := ARCOutOfBounds[position, image]
ARCOutOfBounds[position_List, image_List] :=
    MatchQ[
        position,
        Alternatives[
            {0, _},
            {ImageHeight[image] + 1, _},
            {_, 0},
            {_, ImageWidth[image] + 1}
        ]
    ]

(*!
    \function ARCSimplifyRules
    
    \calltable
        ARCSimplifyRules[rules] '' Given some rules, removes keys like "Examples" which aren't essential.
    
    \maintainer danielb
*)
Clear[ARCSimplifyRules];
ARCSimplifyRules[rules_List] :=
    Replace[
        rules,
        assoc: KeyValuePattern["Examples" -> _] :>
            KeyDrop[assoc, {"Examples", "ExampleCount", "UseCount", "InputObjects"}],
        {0, Infinity}
    ]

ARCSimplifyRules[rules_Association] :=
    Module[{},
        If [Keys[rules] === {"Rules"},
            (* If it's only the "Rules" key that is specified, then we'll only return the
               list of rules for ease of reading. *)
            ARCSimplifyRules[rules["Rules"]]
            ,
            AssociationApply[
                rules,
                <|
                    "PartialRules" -> Function[ARCSimplifyRules[#]],
                    "Rules" -> Function[ARCSimplifyRules[#]]
                |>,
                "AddKeys" -> False
            ]
        ]
    ]

ARCSimplifyRules[expr_] := expr

(*!
    \function ARCVerticalOverlapQ
    
    \calltable
        ARCVerticalOverlapQ[object1, object2] '' Returns True if the two objects would collide if moved together horizontally.
    
    Examples:
    
    ARCVerticalOverlapQ[
        <|"Y" -> 1, "X" -> 1, "Width" -> 2, "Height" -> 2|>,
        <|"Y" -> 2, "X" -> 3, "Width" -> 2, "Height" -> 2|>
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCVerticalOverlapQ]
    
    \maintainer danielb
*)
Clear[ARCVerticalOverlapQ];
ARCVerticalOverlapQ[object1_Association, object2_Association] :=
    Or[
        And[
            object1["Y"] >= object2["Y"],
            object1["Y"] + object1["Height"] <= object2["Y"] + object2["Height"]
        ],
        And[
            object1["Y"] <= object2["Y"] + object2["Height"] - 1,
            object1["Y"] + object1["Height"] - 1 >= object2["Y"]
        ]
    ]

(*!
    \function ARCHorizontalOverlapQ
    
    \calltable
        ARCHorizontalOverlapQ[object1, object2] '' Returns True if the two objects would collide if moved together vertically.
    
    Examples:
    
    ARCHorizontalOverlapQ[
        <|"X" -> 1, "Y" -> 1, "Width" -> 2, "Height" -> 1|>,
        <|"X" -> 2, "Y" -> 3, "Width" -> 2, "Height" -> 1|>
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCHorizontalOverlapQ]
    
    \maintainer danielb
*)
Clear[ARCHorizontalOverlapQ];
ARCHorizontalOverlapQ[object1_, object2_] :=
    Or[
        And[
            object1["X"] >= object2["X"],
            object1["X"] + object1["Width"] <= object2["X"] + object2["Width"]
        ],
        And[
            object1["X"] <= object2["X"] + object2["Width"] - 1,
            object1["X"] + object1["Width"] - 1 >= object2["X"]
        ]
    ]

(*!
    \function ARCBlockingDirection
    
    \calltable
        ARCBlockingDirection[object, blockingObject] '' Returns the axis-aligned direction that the object can travel along to collide with the blocking object.
    
    Examples:
    
    ARCBlockingDirection[
        <|"Y" -> 1, "X" -> 1, "Width" -> 1, "Height" -> 2|>,
        <|"Y" -> 2, "X" -> 3, "Width" -> 1, "Height" -> 2|>
    ]
    
    ===
    
    {0, 1}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCBlockingDirection]
    
    \maintainer danielb
*)
Clear[ARCBlockingDirection];
ARCBlockingDirection[object_Association, blockingObject_Association] :=
    Module[{},
        Which[
            ARCVerticalOverlapQ[object, blockingObject],
                (* NOTE: We currently aren't paying attention to the case where the objects
                         are already overlapping. *)
                If [object["X"] <= blockingObject["X"],
                    {0, 1}
                    ,
                    {0, -1}
                ],
            ARCHorizontalOverlapQ[object, blockingObject],
                If [object["Y"] <= blockingObject["Y"],
                    {1, 0}
                    ,
                    {-1, 0}
                ],
            True,
                None
        ]
    ]

(*!
    \function ARCBlockingQ
    
    \calltable
        ARCBlockingQ[object1, object2, direction, scene] '' Returns a position if object1 is blocked by object2 in the given axis-aligned direction. (the position that object1 would be in when blocked)
    
    Examples:
    
    With[
        {
            scene = ARCParseScene[
                ARCParseFile["05f2a901"]["Train"][[2, "Input"]]
            ]
        },
        ARCBlockingQ[
            scene[["Objects", 1]],
            scene[["Objects", 2]],
            {0, 1},
            scene
        ]
    ]
    
    ===
    
    {2, 4}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCBlockingQ]
    
    \maintainer danielb
*)
Clear[ARCBlockingQ];
ARCBlockingQ[object1In_Association, object2_Association, direction_List, scene_Association] :=
    Module[{object1 = object1In, blockingPixels},
        
        Function[{i},
            
            object1["Y"] += direction[[1]];
            object1["X"] += direction[[2]];
            
            If [Or[
                    ARCOutOfBounds[{object1["Y"], object1["X"]}, scene["Scene"]],
                    ARCOutOfBounds[{object1["Y"] + object1["Height"] - 1, object1["X"] + object1["Width"] - 1}, scene["Scene"]]
                ],
                (* The object is no longer fully within the frame, so we'll abort. In theory
                   there could be cases where we should continue while at least part of the
                   object is in frame. *)
                Return[False, Module]
            ];
            
            object1["PixelPositions"] = (# + direction) & /@ object1["PixelPositions"];
            
            blockingPixels =
                ReturnIfFailure@
                ARCBlockingPixels[
                    object1,
                    direction,
                    scene["Scene"],
                    ARCColorToInteger[scene["Background"]]
                ];
            
            If [And[
                    MatchQ[blockingPixels, {__}],
                    MatchQ[
                        Intersection[blockingPixels, object2["PixelPositions"]],
                        {__}
                    ]
                ],
                Return[{object1["Y"], object1["X"]}, Module]
            ]
        ] /@
            Range[Max[scene["Width"], scene["Height"]]];
        
        False
    ]

(*!
    \function ARCInferRankProperties
    
    \calltable
        ARCInferRankProperties[objects] '' Given a list of objects, infers their 'Rank' property values.
    
    Examples:
    
    ARCInferRankProperties[{<|"Length" -> 1|>, <|"Length" -> 5|>, <|"Length" -> 10|>}]
    
    ===
    
    {
        <|"Length" -> 1, "LengthRank" -> 3|>,
        <|"Length" -> 5, "LengthRank" -> 2|>,
        <|"Length" -> 10, "LengthRank" -> 1|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCInferRankProperties]
    
    \maintainer danielb
*)
Clear[ARCInferRankProperties];
ARCInferRankProperties[objectsIn_List] :=
    Module[{objects = objectsIn, rankProperties, property, sortedValues},
        
        rankProperties = Select[$properties, TrueQ[#["Rank"]] &];
        
        KeyValueMap[
            Function[{rankPropertyName, rankPropertyAttributes},
                
                property = rankPropertyAttributes["RankOf"];
                
                sortedValues = ReverseSort[
                    DeleteDuplicates[
                        DeleteMissing[
                            objects[[All, property]]
                        ]
                    ]
                ];
                
                If [TrueQ[rankPropertyAttributes["InverseRank"]],
                    sortedValues = Reverse[sortedValues]
                ];
                
                objects = Function[{object},
                    If [!MissingQ[object[property]],
                        Sett[
                            object,
                            rankPropertyName ->
                                Position[sortedValues, object[property]][[1, 1]]
                        ]
                        ,
                        object
                    ]
                ] /@ objects;
            ],
            rankProperties
        ];
        
        objects
    ]

(*!
    \function ARCChooseBestTransform
    
    \calltable
        ARCChooseBestTransform[transforms] '' Given a list of possible transforms, chooses the best one.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCChooseBestTransform]
    
    \maintainer danielb
*)
Clear[ARCChooseBestTransform];
ARCChooseBestTransform[transforms_List] :=
    Module[{scoredTransforms},
        
        scoredTransforms = ReverseSort[
            Association[
                Function[{transform},
                    transform -> (
                        ARCTransformScore[
                            Replace[
                                transform,
                                KeyValuePattern["Transform" -> _] :>
                                    transform["Transform"]
                            ]
                        ]
                    )
                ] /@ transforms
            ]
        ];
        
        XEchoIndented[scoredTransforms];
        
        Normal[scoredTransforms][[1, 1]]
    ]

ARCChooseBestTransform[{}] := {}

ARCChooseBestTransform[{item_}] := item

(*!
    \function ARCTransformScore
    
    \calltable
        ARCTransformScore[transform] '' Given a transform, returns a score to quantify how good it seems. Higher scores are better.
    
    Examples:
    
    ARCTransformScore[
        <|
            "Type" -> "Move",
            "Offset" -> <|"Y" -> ObjectValue[<|"Colors" -> {4}|>, "Y"], "X" -> 0|>
        |>
    ]
    
    ===
    
    0
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCTransformScore]
    
    \maintainer danielb
*)
Clear[ARCTransformScore];
ARCTransformScore[transformIn_] :=
    Module[{transform = transformIn, score = 0},
        
        If [AssociationQ[transform],
            transform = KeyDrop[
                transform,
                {"Examples", "ExampleCount", "UseCount", "InputObjects"}
            ]
        ];
        
        Cases[
            transform,
            assoc: KeyValuePattern[_ -> _ObjectValue] :> (
                KeyValueMap[
                    Function[{key, objectValue},
                        objectValueProperty = objectValue[[2]];
                        score += Which[
                            key === objectValueProperty,
                                0,
                            $properties[key, "Type2"] === $properties[objectValueProperty, "Type2"],
                                -0.5,
                            True,
                                -1
                        ]
                    ],
                    Select[assoc, MatchQ[#, _ObjectValue] &]
                ];
                assoc
            )
        ];
        
        If [score === 0,
            Which[
                MatchQ[transform, KeyValuePattern[{"Type" -> "Move", "Offset" -> _}]],
                    (* Give some preference to Move via Offset over Move via Position.
                       e.g. jnohuorzh-easier
                       Note that this unfortunately also gives some preference to
                       Move Offset transforms over any other transform as well, which
                       is perhaps not ideal, and definitely not intended. *)
                    score = 0.1
            ]
        ];
        
        (* Next, consider the complexity of the expressions. We want to be consistant
           with Occam's Razor, whereby simpler explanations are preferred.
           e.g. 05f2a901 (when implementing referenceable-components) *)
        score += -ARCExpressionComplexity[transform];
        
        XEcho[transform -> score];
        
        score
    ]

(*!
    \function ProcessExamples
    
    \calltable
        ProcessExamples[files] '' UI to iterate over examples and annotate them with metadata.
    
    \maintainer danielb
*)
Clear[ProcessExamples];
ProcessExamples[files_List] :=
    Module[{fileProperties, example},
        ProcessOneByOne[
            files,
            "Function" -> Function[{thisFile},
                fileProperties = Daniel`Tools`GetPersonalData["ARCTrainingFiles"][thisFile];
                example = ARCParseFile[file = thisFile];
                Column[
                    Flatten@
                    {
                    If [!MissingQ[fileProperties["Difficulty"]],
                        {
                            fileProperties["Difficulty"],
                            " "
                        }
                        ,
                        ""
                    ],
                    Row[{
                        SmartButton[
                            "Easy",
                            Function[
                                PrintIfFailure@
                                SetTrainingDataKeyValue[thisFile, "Difficulty" -> "Easy"];
                            ]
                        ],
                        " ",
                        SmartButton[
                            "Medium",
                            Function[
                                PrintIfFailure@
                                SetTrainingDataKeyValue[thisFile, "Difficulty" -> "Medium"];
                            ]
                        ],
                        " ",
                        SmartButton[
                            "Challenging",
                            Function[
                                PrintIfFailure@
                                SetTrainingDataKeyValue[thisFile, "Difficulty" -> "Challenging"];
                            ]
                        ],
                        " ",
                        SmartButton[
                            "Very Hard",
                            Function[
                                PrintIfFailure@
                                SetTrainingDataKeyValue[thisFile, "Difficulty" -> "Very Hard"];
                            ]
                        ],
                        " | ",
                        SmartButton[
                            "Generator",
                            Function[
                                PrintIfFailure@
                                SetTrainingDataKeyValue[thisFile, "Type" -> "Generator"];
                            ]
                        ],
                        " ",
                        SmartButton[
                            "Flood Fill",
                            Function[
                                PrintIfFailure@
                                SetTrainingDataKeyValue[thisFile, "Type" -> "FloodFill"];
                            ]
                        ],
                        " ",
                        SmartButton[
                            "Imputation",
                            Function[
                                PrintIfFailure@
                                SetTrainingDataKeyValue[thisFile, "Type" -> "Imputation"];
                            ]
                        ],
                        " ",
                        SmartButton[
                            "Other",
                            Function[
                                PrintIfFailure@
                                SetTrainingDataKeyValue[thisFile, "Type" -> "FloodFill"];
                            ]
                        ],
                        " | ",
                        SmartButton[
                            "Notebook",
                            Function[
                                PrintIfFailure@
                                ARCNotebook[thisFile];
                            ]
                        ]
                    }],
                    "",
                    ARCParseFile[Global`$file = thisFile]
                }]
            ]
        ]
    ]

(*!
    \function ARCNotebook
    
    \calltable
        ARCNotebook[file] '' Creates or opens a notebook for an ARC example.
    
    \maintainer danielb
*)
Clear[ARCNotebook];
ARCNotebook[file_String] :=
    Module[{},
        CreateNamedNotebook2[
            FileBaseName[file],
            "NotesSection" -> False,
            "Contents" -> {
                Section["Example"],
                InputCell[HoldComplete[ARCParseFile[DevTools`NotebookTools`NotebookTitle[]]]],
                Section["Analysis"],
                (*Subsection["Process"],*)
                Item[""],
                Section["Log"],
                InputCell[HoldComplete[Now]],
                Item["Design: X min"],
                Subitem["Start: "],
                Subitem["Stop: "],
                Item["Implementation: X min"],
                Subitem["Start: "],
                Subitem["Stop: "],
                Section["Working"]
            },
            "ReturnNotebook" -> True
        ]
    ]

(*!
    \function ARCGroupByOutputObject
    
    \calltable
        ARCGroupByOutputObject[mapping] '' Given a mapping from input objects to output objects, if there are any many-to-one mappings, form groups for them in the LHS.
    
    Examples:
    
    ARCGroupByOutputObject[
        <|
            <|"UUID" -> 1|> -> <|"UUID" -> 3|>,
            <|"UUID" -> 2|> -> <|"UUID" -> 3|>,
            <|"UUID" -> 4|> -> <|"UUID" -> 5|>
        |>
    ]
    
    ===
    
    {
        <|"Type" -> "Group", "Components" -> {<|"UUID" -> 1|>, <|"UUID" -> 2|>}|> -> <|"UUID" -> 3|>,
        <|"UUID" -> 4|> -> <|"UUID" -> 5|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGroupByOutputObject]
    
    \maintainer danielb
*)
Clear[ARCGroupByOutputObject];
ARCGroupByOutputObject[mapping_Association, outputObjects_List, backgroundColor_Integer, sceneWidth_Integer, sceneHeight_Integer] :=
    Module[{outputObjectsByUUID, outputObjectsByUUID2, mapping2, outputObject},
        
        outputObjectsByUUID = ObjectsByAttribute[Values[mapping], "UUID"];
        
        (* If there's a many-to-one mapping, the multiple output RHSs will have their
           Position property set to a RelativePosition which will not be consistent,
           so we need to map back to the original output object in that case. *)
        outputObjectsByUUID2 = ObjectsByAttribute[outputObjects, "UUID"];
        
        XARCEcho[mapping];
        
        mapping2 = Replace[
            (* Create a mapping from a list of input objects to the output object UUID they
               correspond to. Normally the "list" of input objects would be of size one,
               but if there are multiple of them, then we have identified a group. *)
            Reverse /@
            Normal@
            GroupBy[
                Normal[
                    (* Get rid of mappings for things that have been removed. *)
                    DeleteMissing[mapping]
                ],
                Function[{item}, Last[item]["UUID"]] -> First
            ],
            {
                (* Normal 1-to-1 mapping. *)
                HoldPattern[Rule][{singleItem_}, outputObjectUUID_] :> (singleItem -> outputObjectsByUUID[outputObjectUUID]),
                (* A group of multiple input objects that map to a single output object.
                   For these we'll replace the input objects with a "group" object. *)
                HoldPattern[Rule][lhsGroup:{_, __}, outputObjectUUID_] :>
                    Rule[
                        group = ARCSetGroupProperties[
                            lhsGroup,
                            sceneWidth,
                            sceneHeight
                        ],
                        ARCAddComponentsTransform[
                            group,
                            outputObject = outputObjectsByUUID2[outputObjectUUID];
                            If [!MissingQ[outputObject["Components"]],
                                outputObject
                                ,
                                Sett[outputObject, "Components" -> {outputObject}]
                            ],
                            (* The output objects that correspond with input objects. *)
                            If [!MissingQ[outputObject["Components"]],
                                Values@
                                KeyTake[
                                    ObjectsByAttribute[outputObject["Components"], "UUID"],
                                    lhsGroup[[All, "OutputComponentUUID"]]
                                ]
                                ,
                                {outputObject}
                            ],
                            (* TODO: We're supposed to pass in "Width" and "Height" here. *)
                            <||>
                        ]
                    ]
            },
            {1}
        ];
        
        Join[
            Association[mapping2],
            (* Restore the mappings for items that have been removed. *)
            Select[mapping, MissingQ]
        ]
    ]

(*!
    \function ARCSetGroupProperties
    
    \calltable
        ARCSetGroupProperties[components, sceneWidth, sceneHeight] '' Given a list of a components, forms a group object and sets its various properties.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSetGroupProperties]
    
    \maintainer danielb
*)
Clear[ARCSetGroupProperties];
ARCSetGroupProperties[components_List, sceneWidth_Integer, sceneHeight_Integer] :=
    Module[{position, y1, x1, y2, x2},
        
        position = {
            y1 = Min[components[[All, "Y"]]],
            x1 = Min[components[[All, "X"]]]
        };
        y2 = Max[(#["Y"] + #["Height"] - 1) & /@ components];
        x2 = Max[(#["X"] + #["Width"] - 1) & /@ components];
        
        ARCInferObjectProperties[
            <|
                "Type" -> "Group",
                "UUID" -> CreateUUID[],
                "Image" -> ARCScene[
                    ARCRenderScene[
                        <|
                            "Background" -> $nonImageColor,
                            "Height" -> y2,
                            "Width" -> x2,
                            "Objects" -> components
                        |>
                    ][[
                        1,
                        y1 ;; y2,
                        x1 ;; x2
                    ]]
                ],
                "PixelPositions" -> Join @@ components[[All, "PixelPositions"]],
                "Colors" -> DeleteDuplicates[Join @@ components[[All, "Colors"]]],
                "Position" -> position,
                "Y" -> y1,
                "X" -> x1,
                "Y2" -> y2,
                "X2" -> x2,
                "Width" -> (x2 - x1 + 1),
                "Height" -> (y2 - y1 + 1),
                "Components" -> components
            |>,
            sceneWidth,
            sceneHeight
        ]
    ]

(*!
    \function ARCConditionsGeneralityScore
    
    \calltable
        ARCConditionsGeneralityScore[pattern] '' Given a pattern for a rule, returns a score that indicates how general the rule is. Lower scores are better.
    
    Examples:
    
    ARCConditionsGeneralityScore[<|"Shapes" -> <|"Name" -> "Square"|>|>] === 1.1
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCConditionsGeneralityScore]
    
    \maintainer danielb
*)
Clear[ARCConditionsGeneralityScore];
ARCConditionsGeneralityScore[pattern_Association] :=
    Total[
        ARCConditionsGeneralityScore /@ Normal[pattern]
    ]

ARCConditionsGeneralityScore[Rule["Shapes", value_]] :=
    Plus[
        ARCConditionsGeneralityScore["Shape", value["Name"]],
        (* Additional shape attributes. *)
        0.5 * (Length[value] - 1)
    ]

(* A square is less general than a rectangle. *)
ARCConditionsGeneralityScore["Shape", "Square"] := 1.1
ARCConditionsGeneralityScore["Shape", _] := 1

ARCConditionsGeneralityScore[Rule[property_, value_]] :=
    1

(*!
    \function ARCAddComponentsTransform
    
    \calltable
        ARCAddComponentsTransform[inputObject, outputObject, outputComponentsFromInput, outputScene] '' Given an input object and the output object it maps to, as well as the output components that correspond with input components, produces an output object with an AddComponents transform.
    
    Scene properties made use of:
    
    - Width
    - Height
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCAddComponentsTransform]
    
    \maintainer danielb
*)
Clear[ARCAddComponentsTransform];
ARCAddComponentsTransform[inputObject_Association, outputObject_Association, outputComponentsFromInput_List, outputScene_Association] :=
    Module[{newComponents},
        
        newComponents = DeleteCases[
            outputObject["Components"],
            (* Should we use a Complement here or DeleteCases? Unsure. Using DeleteCases
               at the moment to preserve order. *)
            Alternatives @@ outputComponentsFromInput
        ];
        
        Append[
            outputObject,
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> Function[{component},
                    Join[
                        Sett[
                            KeyDrop[component, "Colors"],
                            {
                                "Position" -> <|
                                    "RelativePosition" ->
                                        Join[
                                            ToXY[component["Position"] - inputObject["Position"]],
                                            <|
                                                "YInverse" -> component[["Position", 1]] - inputObject["Y2"],
                                                "XInverse" -> component[["Position", 2]] - inputObject["X2"]
                                            |>
                                        ]
                                |>,
                                "Y" -> component["Position"][[1]],
                                "X" -> component["Position"][[2]],
                                InferColor["Color" -> component]
                            }
                        ],
                        ARCOutwardComponentPropertiesIfAppropriate[inputObject, component, outputScene]
                    ]
                ] /@
                    (* Only keep the properties that might be useful as part of a minimal property
                       set for specifying the transform to the point of being able to render it. *)
                    KeyTake[
                        newComponents,
                        {
                            "Image",
                            "Position",
                            "Shape",
                            "Shapes",
                            "Colors",
                            "Width",
                            "Height"
                        }
                    ]
            |>
        ]
    ]

(*!
    \function ARCObjectImageFromComponents
    
    \calltable
        ARCObjectImageFromComponents[object] '' Given a composite object, infers what it's Image should be given its components. Also updates Position as necessary.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCObjectImageFromComponents]
    
    \maintainer danielb
*)
Clear[ARCObjectImageFromComponents];
ARCObjectImageFromComponents[object_Association] :=
    Module[{components, minY, minX, maxY2 = 0, maxX2 = 0},
        
        (* Make all component positions relative. *)
        components = Function[{component},
            Sett[
                component,
                "Position" -> Replace[
                    component["Position"],
                    {
                        KeyValuePattern["RelativePosition" -> _] :>
                            ToPosition[
                                component["Position", "RelativePosition"],
                                object
                            ],
                        {y_, x_} :> {
                            ReturnFailureIfMissing[
                                object["Y"],
                                "ARCObjectImageFromComponentsFailure",
                                "An object is missing its Y value.",
                                "Object" -> object
                            ];
                            y - object["Y"],
                            ReturnFailureIfMissing[
                                object["X"],
                                "ARCObjectImageFromComponentsFailure",
                                "An object is missing its X value.",
                                "Object" -> object
                            ];
                            x - object["X"]
                        }
                    }
                ]
            ]
        ] /@ object["Components"];
        
        minY = Min[components[[All, "Position", 1]]];
        minX = Min[components[[All, "Position", 2]]];
        
        (* The translation that needs to be applied to each of the components to update their
           Position property values to be relative to {1, 1}. *)
        translation = {1, 1} - {minY, minX};
        
        (* Compute maxY2 and maxX2, and update component positions to be relative to {1, 1}. *)
        components = Function[{component},
            maxY2 = Max[
                maxY2,
                component[["Position", 1]] + ImageHeight[component["Image"][[1]]] - 1
            ];
            maxX2 = Max[
                maxX2,
                component[["Position", 2]] + ImageWidth[component["Image"][[1]]] - 1
            ];
            Sett[
                component,
                "Position" -> component["Position"] + translation
            ]
        ] /@ components;
        
        width = maxX2 - minX + 1;
        height = maxY2 - minY + 1;
        
        <|
            "Image" -> ARCRenderScene[
                <|
                    "Background" -> $nonImageColor,
                    "Height" -> height,
                    "Width" -> width,
                    "Objects" -> components
                |>
            ],
            "Position" -> object["Position"] + {minY, minX}
        |>
    ]

(*!
    \function ARCTaskLog
    
    \calltable
        ARCTaskLog[] '' Which training tasks I've implemented, and information about them.
    
    \maintainer danielb
*)
Clear[ARCTaskLog];
ARCTaskLog[] :=
    {
        <|
            (* When I finished implementing ExampleImplemented. *)
            "Timestamp" -> Missing["NotRecorded"],
            (* Whether the ExampleImplemented isn't one from the ARC corpus but rather one that I
               invented for the purpose of development / testing. *)
            "PersonalExample" -> False,
            (* Whether ExampleImplemented wasn't actually implemented specifically by me but rather
               started working 'for free' after implementing a different task. *)
            "GeneralizedSuccess" -> False,
            (* How many _training_ tasks are currently passing. Note that we do add entries to this
               list of an evaluation task starts passing, but we don't increase SuccessCount since
               that is currently specific to training tasks. (we also don't increase it if adding
               a personal example that we've implemented) *)
            "SucessCount" -> 1,
            (* How long it is currently taking to run all of the training tasks. *)
            "Runtime" -> Quantity[1.5, "Minutes"],
            (* The number of lines of code I've now written. *)
            "CodeLength" -> Missing["NotRecorded"],
            (* Which task/example I just implemented. *)
            "ExampleImplemented" -> "0ca9ddb6",
            (* How many additional training tasks started passing after implementing the above task. *)
            "NewGeneralizedSuccesses" -> 0,
            (* How many training tasks in total are now passing which I didn't work on specifically. *)
            "TotalGeneralizedSuccesses" -> 0,
            (* How many evaluation tasks started passing after implementing the above task. *)
            "NewEvaluationSuccesses" -> 0,
            (* How many evaluation tasks in total are now passing (all of which I didn't work on specifically). *)
            "TotalEvaluationSuccesses" -> 0
        |>,
        <|
            "SucessCount" -> 2,
            "Runtime" -> Quantity[1.5, "Minutes"],
            "ExampleImplemented" -> "3c9b0459",
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 24}],
            "SucessCount" -> 3,
            "Runtime" -> Quantity[2.8, "Minutes"],
            "RuntimeComment" -> "Slowed down from 1.5 minutes to 2.8 minutes July 24 2022 when we implemented \"Forming Composite Objects Can't Assume\" for 1caeab9d.",
            "CodeLength" -> 3034,
            "ExampleImplemented" -> "1caeab9d",
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "SucessCount" -> 4,
            "Runtime" -> Quantity[3, "Minutes"],
            "CodeLength" -> 3491,
            "ExampleImplemented" -> "b60334d2",
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "SucessCount" -> 5,
            "Runtime" -> Quantity[3.8, "Minutes"],
            "RuntimeComment" -> "I'm surprised this went up for this input. Did I just not notice it going up for the previous input, or did I really make a change here that slowed things down?",
            "CodeLength" -> 3549,
            "ExampleImplemented" -> "25ff71a9",
            "ImplementationTime" -> Quantity[1, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "SucessCount" -> 6,
            "Runtime" -> Quantity[3, "Minutes"],
            "RuntimeComment" -> "I'm now explicitly skipping inputs where the input and output grids are different sizes.",
            "CodeLength" -> 3618,
            "ExampleImplemented" -> "3ac3eb23",
            "ImplementationTime" -> Quantity[0.5, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "SucessCount" -> 7,
            "Runtime" -> Quantity[3, "Minutes"],
            "CodeLength" -> 3697,
            "ExampleImplemented" -> "e76a88a6",
            "ImplementationTime" -> Quantity[1.8, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "SucessCount" -> 8,
            "Runtime" -> Quantity[3, "Minutes"],
            "CodeLength" -> 3698,
            "Comment" -> "I also took the opportunity to expand the list of properties we consider for rule formation to include: Width, Height, Position, Y, X, AspectRatio, Area, FilledArea. Still notably absent: Shapes",
            "ExampleImplemented" -> "c0f76784",
            "ImplementationTime" -> Quantity[3, "Minutes"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "SucessCount" -> 9,
            "Runtime" -> Quantity[4.1, "Minutes"],
            "RuntimeComment" -> "ARCFindRules was enhanced to also consider Except[_] rules, which presumably adds runtime.",
            "CodeLength" -> 3869,
            "ExampleImplemented" -> "321b1fc6",
            "ImplementationTime" -> Quantity[1.8, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 4}],
            "SucessCount" -> 10,
            "Runtime" -> Quantity[3.7, "Minutes"],
            "CodeLength" -> 4505,
            "ExampleImplemented" -> "05f2a901",
            "ImplementationTime" -> Quantity[5, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 5}],
            "SucessCount" -> 11,
            "Runtime" -> Quantity[3.7, "Minutes"],
            "CodeLength" -> 4799,
            "ExampleImplemented" -> "08ed6ac7",
            "ImplementationTime" -> Quantity[1.75, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 0
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 6}],
            "SucessCount" -> 11,
            "ExampleImplemented" -> "jnohuorzh-easier",
            "ImplementationTime" -> Quantity[0.25, "Hours"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 6}],
            "SucessCount" -> 11,
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 5226,
            "ExampleImplemented" -> "ihiz27k2n",
            "ImplementationTime" -> Quantity[2.75, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 0
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 6, 8}],
            "SucessCount" -> 11,
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 5291,
            "ExampleImplemented" -> "jnohuorzh",
            "ImplementationTime" -> Quantity[0.5, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 0,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 0
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 6, 8}],
            "SucessCount" -> 12,
            "Runtime" -> Quantity[3.6, "Minutes"],
            "CodeLength" -> 5386,
            "ExampleImplemented" -> "a61f2674",
            "ImplementationTime" -> Quantity[2, "Hours"],
            "NewGeneralizedSuccesses" -> {"ea32f347"},
            "TotalGeneralizedSuccesses" -> 1,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 0
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 6, 8}],
            "SucessCount" -> 13,
            "Runtime" -> Quantity[3.6, "Minutes"],
            "CodeLength" -> 5386,
            "ExampleImplemented" -> "ea32f347",
            "ImplementationTime" -> Quantity[0, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 1,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 0
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 6, 8}],
            "SucessCount" -> 13,
            "Runtime" -> Quantity[3, "Minutes"],
            "CodeLength" -> 5551,
            "ExampleImplemented" -> "0uduqqj6f",
            "ImplementationTime" -> Quantity[1.5, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 1,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 0
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 7}],
            "SucessCount" -> 13,
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 5703,
            "ExampleImplemented" -> "2wfys5w64",
            "ImplementationTime" -> Quantity[2, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 1,
            "NewEvaluationSuccesses" -> {"84f2aca1"},
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 7}],
            "SucessCount" -> 13,
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 5875,
            "ExampleImplemented" -> "2wfys5w64-relative-right-side",
            "ImplementationTime" -> Quantity[2.7, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 1,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 7}],
            "SucessCount" -> 13,
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 5875,
            "ExampleImplemented" -> "n1hczotml",
            "ImplementationTime" -> Quantity[5, "Minutes"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 1,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 8}],
            "SucessCount" -> 13,
            "Runtime" -> Quantity[3.1, "Minutes"],
            (* Note that this increase in code size wasn't for this example, but rather was due
               to code for publishing task notes, etc. *)
            "CodeLength" -> 6544,
            "ExampleImplemented" -> "ifmyulnv8",
            "ImplementationTime" -> Quantity[0, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 1,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 10}],
            "SucessCount" -> 13,
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 7258,
            "ExampleImplemented" -> "ifmyulnv8-shape",
            "ImplementationTime" -> Quantity[7.75, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 1,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 12}],
            "SucessCount" -> 13,
            "Runtime" -> Quantity[3.8, "Minutes"],
            "CodeLength" -> 7541,
            "ExampleImplemented" -> "ifmyulnv8-dynamic-shape",
            "ImplementationTime" -> Quantity[5, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 1,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 12}],
            "SucessCount" -> 14,
            "Runtime" -> Quantity[3.7, "Minutes"],
            "CodeLength" -> 7838,
            "ExampleImplemented" -> "253bf280",
            "ImplementationTime" -> Quantity[7.5, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 1,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "SucessCount" -> 14,
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 8874,
            "CodeLengthComment" -> "Also includes in-progress work for 25d487eb.",
            "ExampleImplemented" -> "referenceable-components",
            "ImplementationTime" -> Quantity[6, "Hours"],
            "NewGeneralizedSuccesses" -> {"5521c0d9", "6c434453", "6e82a1ae", "aabf363d"},
            "TotalGeneralizedSuccesses" -> 5,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "SucessCount" -> 15,
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 8874,
            "ExampleImplemented" -> "5521c0d9",
            "ImplementationTime" -> Quantity[0, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 5,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "SucessCount" -> 16,
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 8874,
            "ExampleImplemented" -> "6c434453",
            "ImplementationTime" -> Quantity[0, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 5,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "SucessCount" -> 17,
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 8874,
            "ExampleImplemented" -> "6e82a1ae",
            "ImplementationTime" -> Quantity[0, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 5,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "SucessCount" -> 18,
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 8874,
            "ExampleImplemented" -> "aabf363d",
            "ImplementationTime" -> Quantity[0, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 5,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "SucessCount" -> 19,
            "Runtime" -> Quantity[6.1, "Minutes"],
            "CodeLength" -> 9489,
            "ExampleImplemented" -> "25d8a9c8",
            "ImplementationTime" -> Quantity[5, "Hours"],
            "NewGeneralizedSuccesses" -> {"b1948b0a"},
            "TotalGeneralizedSuccesses" -> 6,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "SucessCount" -> 20,
            "Runtime" -> Quantity[6.1, "Minutes"],
            "CodeLength" -> 9489,
            "ExampleImplemented" -> "b1948b0a",
            "ImplementationTime" -> Quantity[0, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 6,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "SucessCount" -> 21,
            "Runtime" -> Quantity[6.4, "Minutes"],
            "CodeLength" -> 9598,
            "ExampleImplemented" -> "c8f0f002",
            "ImplementationTime" -> Quantity[0.3, "Hours"],
            "NewGeneralizedSuccesses" -> {"d511f180"},
            "TotalGeneralizedSuccesses" -> 7,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "SucessCount" -> 22,
            "Runtime" -> Quantity[6.4, "Minutes"],
            "CodeLength" -> 9598,
            "ExampleImplemented" -> "d511f180",
            "ImplementationTime" -> Quantity[0, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 7,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 1
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 20}],
            "SucessCount" -> 23,
            "Runtime" -> Quantity[4.8, "Minutes"],
            "CodeLength" -> 9972,
            "ExampleImplemented" -> "31aa019c",
            "ImplementationTime" -> Quantity[4, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 7,
            "NewEvaluationSuccesses" -> {"66e6c45b"},
            "TotalEvaluationSuccesses" -> 2
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 21}],
            "SucessCount" -> 24,
            "Runtime" -> Quantity[5.6, "Minutes"],
            "CodeLength" -> 10281,
            "ExampleImplemented" -> "363442ee",
            "ImplementationTime" -> Quantity[4, "Hours"],
            "NewGeneralizedSuccesses" -> {"88a10436"},
            "TotalGeneralizedSuccesses" -> 8,
            "NewEvaluationSuccesses" -> {"f45f5ca7"},
            "TotalEvaluationSuccesses" -> 3
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 21}],
            "SucessCount" -> 25,
            "Runtime" -> Quantity[5.6, "Minutes"],
            "CodeLength" -> 10281,
            "ExampleImplemented" -> "88a10436",
            "ImplementationTime" -> Quantity[0, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 8,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 2
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 22}],
            "SucessCount" -> 26,
            "Runtime" -> Quantity[4.3, "Minutes"],
            "CodeLength" -> 10850,
            "ExampleImplemented" -> "25d487eb",
            "ImplementationTime" -> Quantity[6.5, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 8,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 2
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 22}],
            "SucessCount" -> 27,
            "Runtime" -> Quantity[4.3, "Minutes"],
            "CodeLength" -> 10929,
            "ExampleImplemented" -> "0962bcdd",
            "ImplementationTime" -> Quantity[20, "Minutes"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 8,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 2
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 22}],
            "SucessCount" -> 28,
            "Runtime" -> Quantity[5.2, "Minutes"],
            "CodeLength" -> 11003,
            "ExampleImplemented" -> "0d3d703e",
            "ImplementationTime" -> Quantity[1, "Hours"],
            "NewGeneralizedSuccesses" -> {"d037b0a7"},
            "TotalGeneralizedSuccesses" -> 9,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 3
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 22}],
            "SucessCount" -> 29,
            "Runtime" -> Quantity[5.2, "Minutes"],
            "CodeLength" -> 11003,
            "ExampleImplemented" -> "d037b0a7",
            "ImplementationTime" -> Quantity[0, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 9,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 3
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 23}],
            "SucessCount" -> 30,
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 11069,
            "ExampleImplemented" -> "1bfc4729",
            "ImplementationTime" -> Quantity[40, "Minutes"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 9,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 3
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 26}],
            "SucessCount" -> 30,
            "Runtime" -> Quantity[6.7, "Minutes"],
            "RuntimeComment" -> "We no longer take the first minimal property set that we find but rather compute all of them and choose the best, and we now have a list of minimal property sets for the case that a named transform isn't found.",
            "CodeLength" -> 11845,
            "ExampleImplemented" -> "178fcbfb-easier",
            "ImplementationTime" -> Quantity[12, "Hours"],
            "NewGeneralizedSuccesses" -> {"4347f46a", "67385a82"},
            "TotalGeneralizedSuccesses" -> 11,
            "NewEvaluationSuccesses" -> {"fc754716"},
            "TotalEvaluationSuccesses" -> 4
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 26}],
            "SucessCount" -> 31,
            "Runtime" -> Quantity[6.7, "Minutes"],
            "CodeLength" -> 11845,
            "ExampleImplemented" -> "4347f46a",
            "ImplementationTime" -> Quantity[12, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 9,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 4
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 26}],
            "SucessCount" -> 32,
            "Runtime" -> Quantity[6.7, "Minutes"],
            "CodeLength" -> 11845,
            "ExampleImplemented" -> "67385a82",
            "ImplementationTime" -> Quantity[12, "Hours"],
            "NewGeneralizedSuccesses" -> 0,
            "TotalGeneralizedSuccesses" -> 9,
            "NewEvaluationSuccesses" -> 0,
            "TotalEvaluationSuccesses" -> 4
        |>
    }

(* ADD NEW SUCCESSES HERE *)

(*!
    \function ARCTaskMarkdown
    
    \calltable
        ARCTaskMarkdown[name] '' Produces markdown for an ARC task.
    
    \maintainer danielb
*)
Clear[ARCTaskMarkdown];
ARCTaskMarkdown[name_String] :=
    Module[
        {
            parsedFile,
            relativeDirectory,
            absoluteDirectory,
            rules,
            markdown,
            notesCells,
            produceImageForCell,
            notes = ""
        },
        
        parsedFile = ReturnIfFailure[ARCParseFile[name]];
        
        relativeDirectory = ARCTaskNotesDirectory[name];
        absoluteDirectory = FileNameJoin[{$arcDirectory, relativeDirectory}];
        ReturnIfFailure@
        CreateDirectoryIfDoesntExist[absoluteDirectory];
        
        rules =
            ReturnIfFailure@
            ARCFindRules[parsedFile["Train"]];
        
        If [rules === {},
            ReturnFailure[
                "NoRulesFound",
                "No rules were found for " <> name <> "."
            ]
        ];
        
        notesCells = ARCPublicNotesSection[name];
        
        If [ListQ[notesCells],
            
            produceImageForCell[cell_] :=
                Module[{},
                    ++imageCounter;
                    ReturnIfFailure@
                    Export[
                        FileNameJoin[{absoluteDirectory, "image" <> ToString[imageCounter] <> ".png"}],
                        RawBoxes[cell],
                        "PNG"
                    ];
                    "\n![image " <> ToString[imageCounter] <> "](image" <> ToString[imageCounter] <> ".png?raw=true)\n"
                ];
            
            notes = StringRiffle[
                Join[
                    {
                        "## Notes"
                    },
                    ReturnIfFailure@
                    Internal`InheritedBlock[
                        {
                            DevTools`NotebookTools`Private`indentStr = "  ",
                            DevTools`NotebookTools`Private`cellToMarkdown,
                            imageCounter = 0
                        },
                        DevTools`NotebookTools`Private`cellToMarkdown[cell_, "Output"] := produceImageForCell[cell];
                        (* By default we won't show input cells but will instead just show their
                           output. *)
                        DevTools`NotebookTools`Private`cellToMarkdown[cell_, "Input"] := "";
                        (* That said, we will show code cells, so if there is some input we do want
                           to show, we'll make it a code cell. *)
                        DevTools`NotebookTools`Private`cellToMarkdown[cell_, "Code"] := produceImageForCell[cell];
                        
                        Function[{cell},
                            ReturnIfFailure@
                            DevTools`NotebookTools`Private`cellToMarkdown[cell, cell[[2]]]
                        ] /@ notesCells
                    ]
                ],
                "\n"
            ]
        ];
        
        markdown = StringRiffle[
            {
                "# " <> name,
                "",
                "## Examples",
                "",
                "![ARC examples for " <> name <> "](examples.png?raw=true)",
                "",
                "## Rules (DSL)",
                "",
                "![DSL rules for " <> name <> "](rules.png?raw=true)",
                "",
                notes
            },
            "\n"
        ];
        
        (* Write the example image file. *)
        ReturnIfFailure@
        Export[
            FileNameJoin[{absoluteDirectory, "examples.png"}],
            ARCFormatExamples[parsedFile],
            "PNG"
        ];
        
        (* Write the rules image file. *)
        ReturnIfFailure@
        Export[
            FileNameJoin[{absoluteDirectory, "rules.png"}],
            ARCIndent[ARCSimplifyRules[rules], "ColumnsAvailable" -> 120],
            "PNG"
        ];
        
        (* Write the markdown file. *)
        ReturnIfFailure@
        Export[
            FileNameJoin[{$arcDirectory, ARCTaskNotesFile[name]}],
            markdown,
            "Text"
        ];
        
        markdown
    ]

(*!
    \function ARCCleanRules
    
    \calltable
        ARCCleanRules[rules] '' Given some rules, performs some cleaning operations.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCleanRules]
    
    \maintainer danielb
*)
Clear[ARCCleanRules];
ARCCleanRules[rulesIn_List] :=
    Module[{rules = rulesIn, condition, conclusion},
        rules = Replace[
            rules,
            {
                assoc: KeyValuePattern[
                    "RelativePosition" -> relativePosition: KeyValuePattern[
                        {"Y" -> _, "X" -> _, "YInverse" -> _, "XInverse" -> _}
                    ]
                ] :>
                    (* We set extra keys for RelativePositions, but if they weren't needed,
                       we can trim them away. *)
                    Sett[
                        assoc,
                        "RelativePosition" -> KeyTake[relativePosition, {"Y", "X"}]
                    ],
                (* Seems to break things. *)
                (*assoc: KeyValuePattern[
                    "RelativePosition" -> relativePosition: KeyValuePattern[
                        {"Y" -> _, "X" -> 0}
                    ]
                ] :>
                    Sett[
                        assoc,
                        "RelativePosition" -> KeyTake[relativePosition, {"Y"}]
                    ],*)
                (* If both "Colors" and "Color" are specified, we can drop the "Colors"
                   property since it's redundant. *)
                assoc: KeyValuePattern[
                    {
                        "Colors" -> {_},
                        "Color" -> _
                    }
                ] :>
                    KeyDrop[assoc, "Colors"],
                assoc: KeyValuePattern[
                    {
                        "Type" -> "Move",
                        "Position" -> _,
                        "Offset" -> _
                    }
                ] :>
                    (* As of Aug 26 2022, in ARCGeneralizeConclusionValue if we find that the
                       conclusion is constant, we return it immediately without looking for
                       a minimal property set, which can result in Move transforms containing
                       both a Position and Offset key. For now we'll deal with that here whereby
                       we favor the Offset. e.g. 66e6c45b *)
                    KeyDrop[assoc, "Position"]
            },
            {0, Infinity},
            Heads -> True
        ];
        
        rules =
            Function[{rule},
                If [MatchQ[rule, _Rule],
                    
                    condition = rule[[1]];
                    conclusion = rule[[2]];
                    
                    If [!MissingQ[conclusion["Image"]],
                        (* If we know Image, then we can prune certain other properties that may
                           not be constant, but which are implied if we know image.
                           e.g. 363442ee *)
                        conclusion = KeyDrop[conclusion, {"Width", "Height", "Length", "Colors", "Color"}]
                    ];
                    
                    If [MatchQ[conclusion["Shape"], _ARCScene],
                        conclusion = KeyDrop[conclusion, {"Width", "Height", "Length"}]
                    ];
                    
                    condition -> conclusion
                    ,
                    rule
                ]
            ] /@ rules;
        
        rules
    ]

ARCCleanRules[other_] := other

(*!
    \function ARCPublicNotesSection
    
    \calltable
        ARCPublicNotesSection[exampleName] '' Given an ARC task / example name, checks to see if there is a notebook with a 'Public Notes' section, and if so, returns it.
    
    NOTE: This function seems to cause Mathematica to hang quite frequently when run in 12.3.1,
          but seems to work OK in 13.1.
    
    Examples:
    
    See function notebook
    
    \maintainer danielb
*)
Clear[ARCPublicNotesSection];
ARCPublicNotesSection[exampleName_String] :=
    Module[{notebook},
        
        notebook = Lui`Parse`LuiParse[exampleName];
        Replace[
            notebook,
            {
                HoldComplete[DevTools`NotebookTools`OpenNotebook[file_]] :> (
                    DevTools`NotebookTools`WithNotebook[
                        file,
                        Function[{nb},
                            sectionCellObject =
                                ReturnIfMissing@
                                DevTools`NotebookTools`SectionCellObject[nb, "Public Notes"];
                            cells =
                                NotebookRead /@
                                    DevTools`NotebookTools`CellObjects[sectionCellObject]
                        ],
                        (* Ideally we'd prefer not to make the notebook visible, but without
                           this it seems to misbehave at times. *)
                        "Visible" -> True
                    ]
                ),
                _ :> Missing["NotFound"]
            }
        ]
    ]

(*!
    \function ARCImplementedTasksMarkdown
    
    \calltable
        ARCImplementedTasksMarkdown[] '' Produces markdown to indicate which tasks have been implemented.
    
    \maintainer danielb
*)
Clear[ARCImplementedTasksMarkdown];
ARCImplementedTasksMarkdown[] :=
    Module[
        {
            implementedARCTrainingTasks,
            implementedPersonallyCreatedTrainingTasks,
            arcTrainingTasksPassingDueToGeneralization,
            arcEvaluationTasksPassingDueToGeneralization
        },
        
        implementedARCTrainingTasks = Select[
            ARCTaskLog[],
            Function[
                !TrueQ[#["PersonalExample"]] && !TrueQ[#["GeneralizedSuccess"]]
            ]
        ][[All, "ExampleImplemented"]];
        
        implementedPersonallyCreatedTrainingTasks = Select[
            ARCTaskLog[],
            Function[
                TrueQ[#["PersonalExample"]]
            ]
        ][[All, "ExampleImplemented"]];
        
        arcTrainingTasksPassingDueToGeneralization = Select[
            ARCTaskLog[],
            Function[
                !TrueQ[#["PersonalExample"]] && TrueQ[#["GeneralizedSuccess"]]
            ]
        ][[All, "ExampleImplemented"]];
        
        arcEvaluationTasksPassingDueToGeneralization =
            Flatten@
            Cases[ARCTaskLog[][[All, "NewEvaluationSuccesses"]], List[Repeated[_String]]];
        
        StringRiffle[
            Flatten@
            {
                "## Tasks Implemented",
                "",
                "### Core ARC Training Tasks (" <> ToString[Length[implementedARCTrainingTasks]] <> ")",
                "",
                tasksToMarkdown[implementedARCTrainingTasks],
                "",
                "### Personally Created Training Tasks (" <> ToString[Length[implementedPersonallyCreatedTrainingTasks]] <> ")",
                "",
                tasksToMarkdown[implementedPersonallyCreatedTrainingTasks],
                "",
                "## Tasks Passing via Generalization",
                "",
                "### Training Tasks (" <> ToString[Length[arcTrainingTasksPassingDueToGeneralization]] <> ")",
                "",
                "The following ARC training tasks started passing after some different task was implemented.",
                "",
                tasksToMarkdown[arcTrainingTasksPassingDueToGeneralization],
                "",
                "### Evaluation Tasks (" <> ToString[Length[arcEvaluationTasksPassingDueToGeneralization]] <> ")",
                "",
                "The following ARC evaluation tasks are passing. Evaluation tasks have not been analyzed or implemented specifically.",
                "",
                tasksToMarkdown[arcEvaluationTasksPassingDueToGeneralization]
            },
            "\n"
        ]
    ]

tasksToMarkdown[tasks_List] :=
    Function[{task},
        StringJoin[
            "* ",
            If [FileExistsQ[FileNameJoin[{$arcDirectory, ARCTaskNotesFile[task]}]],
                "[" <> task <> "](" <> ARCTaskNotesFile[task] <> ")"
                ,
                task
            ]
        ]
    ] /@ tasks

(*!
    \function ARCTaskNotesDirectory
    
    \calltable
        ARCTaskNotesDirectory[name] '' Given an ARC task, what directory is used to store notes about it. (relative to the main ARC directory)
    
    Examples:
    
    ARCTaskNotesDirectory["my-task"] === "TaskNotes/my-task"
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCTaskNotesDirectory]
    
    \maintainer danielb
*)
Clear[ARCTaskNotesDirectory];
ARCTaskNotesDirectory[name_] :=
    "TaskNotes/" <> name

(*!
    \function ARCTaskNotesFile
    
    \calltable
        ARCTaskNotesFile[name] '' The notes file for an ARC task. (relative to the main ARC directory)
    
    Examples:
    
    ARCTaskNotesFile["my-task"] === "TaskNotes/my-task/notes.md"
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCTaskNotesFile]
    
    \maintainer danielb
*)
Clear[ARCTaskNotesFile];
ARCTaskNotesFile[name_String] :=
    ARCTaskNotesDirectory[name] <> "/notes.md"

(*!
    \function InferColor
    
    \calltable
        InferColor[object] '' Given an object, infers its color. Returns Missing if there are multiple colors.
        InferColor[colorList] '' Given a list of colors, infers its color. Returns Missing if there are multiple colors.
        InferColor["Color" -> object] '' Given an object, infers its color key/value. Returns Nothing if there isn't a single color.
    
    Examples:
    
    InferColor[{1}] === 1
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`InferColor]
    
    \maintainer danielb
*)
Clear[InferColor];
InferColor[object: KeyValuePattern["Colors" -> _List]] :=
    InferColor[object["Colors"]]

InferColor[object_Association] := Missing["NotSpecified"]

InferColor[{color_}] := color

InferColor[{_, __}] := Missing["NotApplicable", "MultipleColors"]

InferColor[{}] := Missing["None"]

InferColor["Color" -> color_] :=
    Replace[
        InferColor[color],
        {
            _Missing -> Nothing,
            c_ :> ("Color" -> c)
        }
    ]

(*!
    \function ARCInferObjectImage
    
    \calltable
        ARCInferObjectImage[object] '' Given an object, tries to infer its Image using other properties like Shape, Color, etc. (but if its Image is already known, that is returned)
    
    Examples:
    
    ARCInferObjectImage[
        <|
            "Shapes" -> {<|"Name" -> "Rectangle"|>, <|"Name" -> "Square"|>},
            "Width" -> 2,
            "Height" -> 2,
            "Color" -> 1,
            "Position" -> <|"RelativePosition" -> <|"Y" -> 1, "X" -> 1|>|>
        |>
    ]
    
    ===
    
    ARCScene[{{1, 1}, {1, 1}}]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCInferObjectImage]
    
    \maintainer danielb
*)
Clear[ARCInferObjectImage];
ARCInferObjectImage[object_Association] :=
    FailureDetails[
        "ARCInferObjectImageFailure",
        "A failure occurred infering an object's image."
    ]@
    Module[{},
        
        ReturnIfNotMissing[object["Image"]];
        
        ReturnFailureIfMissing[object["Width"]];
        ReturnFailureIfMissing[object["Height"]];
        
        If [MissingQ[object["Color"]] && MissingQ[object["Colors"]],
            ReturnFailure[
                "ARCInferObjectImageFailure",
                "Either the Color or Colors properties must be specified.",
                "Color" -> object["Color"],
                "Colors" -> object["Colors"],
                "Object" -> object
            ]
        ];
        
        If [MissingQ[object["Color"]] && !MatchQ[object["Colors"], {_}],
            ReturnFailure[
                "ARCInferObjectImageFailure",
                "If the Colors property is specified for use with inferring an object's image, there must be a single color.",
                "Colors" -> object["Colors"],
                "Object" -> object
            ]
        ];
        
        If [MissingQ[object["Shapes"]] && MissingQ[object["Shape"]],
            ReturnFailure[
                "ARCInferObjectImageFailure",
                "Either the Shapes or Shape properties must be specified.",
                "Shape" -> object["Shape"],
                "Shapes" -> object["Shapes"],
                "Object" -> object
            ]
        ];
        
        If [!MissingQ[object["Shapes"]] && !MatchQ[object["Shapes"], {_, ___}],
            ReturnFailure[
                "ARCInferObjectImageFailure",
                "The Shapes must be specified as a list of one or more shapes.",
                "Shapes" -> object["Shapes"],
                "Object" -> object
            ]
        ];
        
        If [!MissingQ[object["Shape"]] && !MatchQ[object["Shape"], _Association | _ARCScene],
            ReturnFailure[
                "ARCInferObjectImageFailure",
                "The Shape must be specified as an association.",
                "Shape" -> object["Shape"],
                "Object" -> object
            ]
        ];
        
        ARCInferObjectImage[
            If [!MissingQ[object["Shape"]],
                object["Shape"]
                ,
                First[ARCPruneAlternatives[object["Shapes"], "Shapes", "Most" -> "Specific"]]
            ],
            Replace[
                object["Color"],
                _Missing :> First[object["Colors"]]
            ],
            object["Width"],
            object["Height"]
        ]
    ]

ARCInferObjectImage[
        shape: KeyValuePattern["Name" -> "Square" | "Rectangle"],
        color_Integer,
        width_,
        height_
    ] :=
    ARCScene@
    (* I don't think this is required, at least not at this time, but will add it here
       incase it's ever needed in the future. *)
    Function[ARCApplyImageTransforms[#, shape["Transform"]]]@
    {
        (* Horizontal line. *)
        Table[color, {width}],
        If [height >= 3,
            Sequence @@
            Table[
                {
                    color,
                    Sequence @@
                    Table[
                        If [TrueQ[shape["Filled"]],
                            color
                            ,
                            $nonImageColor
                        ],
                        {width - 2}
                    ],
                    color
                },
                {height - 2}
            ]
            ,
            Nothing
        ],
        If [height >= 2,
            (* Horizontal line. *)
            Table[color, {width}]
            ,
            Nothing
        ]
    }

ARCInferObjectImage[
        shape: KeyValuePattern["Name" -> "Line"],
        color_Integer,
        width_,
        height_
    ] :=
    ARCScene@
    Function[ARCApplyImageTransforms[#, shape["Transform"]]]@
    Which[
        width == 1,
            Table[
                {color},
                {height}
            ],
        height == 1,
            {
                Table[
                    color,
                    {width}
                ]
            },
        True,
            ReturnFailure[
                "UnsupportedLine",
                "Only vertical and horizontal lines are currently supported.",
                "Width" -> width,
                "Height" -> height
            ]
    ]

ARCInferObjectImage[
        shape: KeyValuePattern["Name" -> "Pixel"],
        color_Integer,
        width_,
        height_
    ] :=
    ARCScene[
        {{color}}
    ]

ARCInferObjectImage[
        shape: KeyValuePattern["Name" -> "L"],
        color_Integer,
        width_,
        height_
    ] :=
    ARCScene@
    Function[ARCApplyImageTransforms[#, shape["Transform"]]]@
    {
        Sequence @@
        Table[
            {
                color,
                Sequence @@
                Table[
                    If [TrueQ[shape["Filled"]],
                        color
                        ,
                        $nonImageColor
                    ],
                    {width - 1}
                ]
            },
            {height - 1}
        ],
        (* Horizontal line. *)
        Table[color, {width}]
    }

ARCInferObjectImage[
        shape: KeyValuePattern["Image" -> image_],
        color_Integer,
        width_,
        height_
    ] :=
    Function[ARCApplyImageTransforms[#, shape["Transform"]]]@
    ARCColorize[image, color]

ARCInferObjectImage[
        image_ARCScene,
        color_Integer,
        width_,
        height_
    ] :=
    ARCColorize[image, color]

ARCInferObjectImage[shapes_, color_Integer, width_, height_] :=
    Module[{},
        ReturnFailure[
            "UnsupportedShape",
            "The given shape could not be rendered.",
            "Shapes" -> shapes,
            "Color" -> color,
            "Width" -> width,
            "Height" -> height
        ]
    ]

(* Temporarily define these here since on Aug 8 2022 I'm seeing a strange issue whereby on
   Mathematica 12.3.1, calls to repository functions are taking 500 ms, as if it's phoning
   home with every call. *)

(* https://resources.wolframcloud.com/FunctionRepository/resources/FindSubmatrix *)

FindSubmatrix[sarray_SparseArray?SparseArrayQ,pattern_,type_:"Matrix"]/;(!(Length@Dimensions[sarray]>3&&Or@@(type==#&/@{"Raster","Image3D","Cuboids"}))\[Or]Length@Dimensions[sarray]==1&&(Head[pattern]===List\[Or]Head[pattern]===Condition)&&ArrayDepth[sarray]==ArrayDepth[If[Head[pattern]===Condition,First[pattern],pattern]]&&MemberQ[{"Matrix","Positions","Raster","Image3D","Cuboids"},type]):=
    With[{d=Length@Dimensions[sarray],pat=If[Head[pattern]===Condition,Last[pattern],pattern],pattern2=If[Head[pattern]===Condition,First[pattern],pattern]},
    With[{part1=Map[{#[[1]],Normal[sarray[[Sequence@@#]]&/@#]}&,
    Cases[Cases[
    Most@ArrayRules[sarray],{m_,n__},{2}],{m_Integer,n__}/;And@@GreaterEqual@@@Thread[{Dimensions[sarray]-(Dimensions[pattern2]-ConstantArray[1,d]),{m,n}}]:>(Flatten[Array[Evaluate[{m,n}+Array[Slot,d]]&,Dimensions[pattern2],ConstantArray[0,d]],d-1])]]},
    With[{part2= 
    ArrayReshape[#,Dimensions[pattern2]]&/@(If[MatchQ[#,Flatten@pattern2]&&MatchQ[#,pat],#,Nothing]&/@
    part1[[All,2]])},
    Which[
    type==="Matrix",part2,
    type==="Positions",part1[[All,1]],
    type==="Raster",SparseArray[Position[part1[[All,1]],pattern,{2}]->1//Thread,Dimensions[sarray]]//If[ArrayDepth[sarray]==2,Raster,Raster3D[#,Automatic,{-.03,1},ColorFunction->"GrayLevelOpacity"]&],
    type==="Image3D",SparseArray[Position[Partition[sarray,{2,2,2},{1,1,1}],pattern,{3}]->1//Thread,Dimensions[sarray]]//Image3D,
    type==="Cuboids",Cuboid/@Position[Partition[sarray,{2,2,2},{1,1,1}],pattern,{3}]]]]]

FindSubmatrix[array_?ArrayQ,pattern_,type_:"Matrix"]/;(!(Length@Dimensions[array]>3&&Or@@(type==#&/@{"Raster","Image3D","Cuboids"}))\[Or]Length@Dimensions[array]==1&&(Head[pattern]===List\[Or]Head[If[Head[pattern]===Condition,First[pattern],pattern]]===Condition))&&ArrayDepth[array]==ArrayDepth[pattern]&&MemberQ[{"Matrix","Positions","Raster","Image3D","Cuboids"},type]:=
    With[{part=Partition[array,Dimensions[pattern],ConstantArray[1,Length[Dimensions[array]]]]},Which[type==="Matrix",Cases[part,pattern,{ArrayDepth[array]}],
    type==="Positions",Position[part,pattern,{ArrayDepth[array]}],
    type==="Raster",SparseArray[Position[part,pattern,{ArrayDepth[array]}]->1//Thread,Dimensions[array]]//If[ArrayDepth[array]==2,Raster,Raster3D[#,Automatic,{-.03,1},ColorFunction->"GrayLevelOpacity"]&],
    type==="Image3D",SparseArray[Position[part,pattern,{3}]->1//Thread,Dimensions[array]]//Image3D,
    type==="Cuboids",Cuboid/@Position[part,pattern,{3}]]]

(*!
    \function ARCAddGeneralizeShapes
    
    \calltable
        ARCAddGeneralizeShapes[shapes] '' Given a list of shapes, if there are shapes that have been additionally qualified, but there aren't any un-qualified instances of that shape, then we add unqualified instances so that code that looks for common shapes won't be thrown off by the additional qualifications.
    
    NOTE: This doesn't seem like a proper long-term solution, because if you have shapes with
          multiple qualifications, then downstream code should also be able to find commonalities
          where some but not all qualifications are paid attention to. And it doesn't seem scalable
          here to introduce all permutations of whether a particular qualification is included.
    
    Examples:
    
    ARCAddGeneralizeShapes[
        {
            <|"Name" -> "Pixel"|>,
            <|"Name" -> "Square", "Filled" -> True|>,
            <|"Name" -> "Rectangle", "Filled" -> True|>
        }
    ]
    
    ===
    
    {
        <|"Name" -> "Pixel"|>,
        <|"Name" -> "Square", "Filled" -> True|>,
        <|"Name" -> "Rectangle", "Filled" -> True|>,
        <|"Name" -> "Square"|>,
        <|"Name" -> "Rectangle"|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCAddGeneralizeShapes]
    
    \maintainer danielb
*)
Clear[ARCAddGeneralizeShapes];
ARCAddGeneralizeShapes[shapes_List] :=
    Module[{},
        DeleteDuplicates@
        Join[
            KeyTake[shapes, "Name"],
            shapes
        ]
    ]

(*!
    \function ARCPruneAlternatives
    
    \calltable
        ARCPruneAlternatives[alternatives, property] '' Given a list of alternatives, tries to removes redundant alternatives which would already be implied by a more general item in the alternatives list.
    
    Examples:
    
    ARCPruneAlternatives[
        {
            <|"Name" -> "Square"|>,
            <|"Name" -> "Square", "Filled" -> False|>,
            <|"Name" -> "Rectangle"|>
        },
        "Shape"
    ]
    
    ===
    
    {<|"Name" -> "Square"|>, <|"Name" -> "Rectangle"|>}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCPruneAlternatives]
    
    \maintainer danielb
*)
Clear[ARCPruneAlternatives];
Options[ARCPruneAlternatives] =
{
    "Most" -> "General"     (* Are we looking to keep the most general alternatives? Or the most specific alternatives? *)
};

(* Single item. *)
ARCPruneAlternatives[alternatives: List[_assoc], property_String, OptionsPattern[]] :=
    {assoc}

ARCPruneAlternatives[alternatives: List[__Association], property_String, OptionsPattern[]] :=
    (* Remove cases where the list of qualifiers is more specific than another
       alternative's list of qualifiers. *)
    Select[
        (* Remove cases where the list of qualifiers are the same, but the one named
           entity is more general than the other. *)
        Select[
            (* Remove duplicates. *)
            DeleteDuplicates[
                alternatives,
                Function[{a, b},
                    KeySort[a] === KeySort[b]
                ]
            ],
            Function[{item},
                And[
                    AssociationQ[item],
                    MissingQ[
                        SelectFirst[
                            DeleteCases[alternatives, item],
                            With[{qualifiers2 = Normal[#]},
                                And[
                                    AssociationQ[#],
                                    (* This named alternative is more general than ours. *)
                                    If [OptionValue["Most"] === "General",
                                        ARCMoreGeneral["Property" -> property, #["Name"], item["Name"]]
                                        ,
                                        ARCMoreGeneral["Property" -> property, item["Name"], #["Name"]]
                                    ]
                                    (* I don't think we want this condition, because we for example
                                       want the shape "Pixel" to win out over "Square", even if the
                                       square has "Filled" -> True.
                                       ARCPruneAlternatives-20220811-6PKT59 *)
                                    (* Other than the "Name", the qualifiers are the same. *)
                                    (*KeySort[KeyDrop[item, "Name"]] === KeySort[KeyDrop[#, "Name"]]*)
                                ]
                            ] &
                        ]
                    ]
                ]
            ]
        ],
        Function[{item},
            With[{qualifiers = Normal[item]},
                (* Is there no other alternative that is more general?
                   If so, we should keep our alternative. *)
                MissingQ[
                    SelectFirst[
                        DeleteCases[alternatives, item],
                        With[{qualifiers2 = Normal[#]},
                            (* Is this alternative more general? *)
                            (* Is this alternative's list of qualifiers a subset
                               of our alternative's list of qualifiers? If so, then
                               it is at least as general as our alternative, but because
                               we've already deleted duplicates, this should actually
                               mean that it's more general. *)
                            If [OptionValue["Most"] === "General",
                                SubsetQ[qualifiers, qualifiers2]
                                ,
                                SubsetQ[qualifiers2, qualifiers]
                            ]
                        ] &
                    ]
                ]
            ]
        ]
    ];

ARCPruneAlternatives[alternatives_List, property_String] := DeleteDuplicates[alternatives]

(*!
    \function ARCMoreGeneral
    
    \calltable
        ARCMoreGeneral[type, class1, class2] '' Given two classes, returns True if class1 is more general than class2. Returns Missing if unknown.
    
    NOTE: This currently only compares the class names, and doesn't consider other qualifiers
          in the case that two associations are provided.
    
    Examples:
    
    ARCMoreGeneral["Shape", "Square", "Rectangle"] === True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCMoreGeneral]
    
    \maintainer danielb
*)
Clear[ARCMoreGeneral];
$generality = <|
    "Shape" -> {
        "Rectangle" -> "Square",
        "Square" -> "Pixel"
    }
|>;
$generalityGraph = Graph /@ $generality;

ARCMoreGeneral[type_String, class1_Association, class2_Association] :=
    ARCMoreGeneral[
        type,
        class1["Name"],
        class2["Name"]
    ]

ARCMoreGeneral[type_String, class1: Except[_Association], class2: Except[_Association]] :=
    Module[{},
        If [class1 === class2,
            False
            ,
            graph = Replace[
                $generalityGraph[type],
                _Missing :> Return[Missing["Unknown"], Module]
            ];
            !FreeQ[
                Utility`QuietCheck[
                    VertexOutComponent[graph, class1],
                    {},
                    (* If a class isn't in the graph, we get this message, and return
                       {}. *)
                    {VertexOutComponent::inv}
                ],
                class2
            ]
        ]
    ]

ARCMoreGeneral["Property" -> property_String, args___] :=
    Module[{},
        ARCMoreGeneral[
            ReturnIfMissing[
                PropertyEntityType[property]
            ],
            args
        ]
    ]

(*!
    \function PropertyEntityType
    
    \calltable
        PropertyEntityType[property] '' Given a property name, returns the type of entity it has as values. For repeated/list properties, it doesn't return Repeated[type_] but rather returns the inner `type`.
    
    Examples:
    
    PropertyEntityType["Shapes"] === "Shape"
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`PropertyEntityType]
    
    \maintainer danielb
*)
Clear[PropertyEntityType];
PropertyEntityType[property_String] :=
    Module[{},
        Replace[
            ReturnIfMissing[
                $properties[property]
            ]["Type"],
            HoldPattern[Repeated][innerType_] :> innerType
        ]
    ]

(*!
    \function ARCApplyImageTransforms
    
    \calltable
        ARCApplyImageTransforms[image, transform] '' Given an image, applies the given transfer, which can be Missing.
    
    Examples:
    
    ARCApplyImageTransforms[
        ARCScene[{{1, -1, -1}, {1, -1, -1}, {1, 1, 1}}],
        <|"Type" -> "Rotation", "Angle" -> 90|>
    ]
    
    ===
    
    ARCScene[{{1, 1, 1}, {1, -1, -1}, {1, -1, -1}}]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCApplyImageTransforms]
    
    \maintainer danielb
*)
Clear[ARCApplyImageTransforms];
ARCApplyImageTransforms[image_, KeyValuePattern[{"Type" -> "Rotation", "Angle" -> angle_}]] :=
    RotateImage[image, angle]

ARCApplyImageTransforms[image_, KeyValuePattern[{"Type" -> "Flip", "Direction" -> "Vertical"}]] :=
    ApplyToImage[image, Reverse]

ARCApplyImageTransforms[image_, KeyValuePattern[{"Type" -> "Flip", "Direction" -> "Horizontal"}]] :=
    ApplyToImage[image, Function[Map[Reverse, #]]]

ARCApplyImageTransforms[image_, transform_] :=
    Module[{},
        ReturnFailure[
            "ImageTransformNotImplemented",
            "The given image transformation isn't currently supported.",
            "Image" -> image,
            "Transform" -> transform
        ]
    ]

ARCApplyImageTransforms[image_, _Missing] :=
    image

(*!
    \function ApplyToImage
    
    \calltable
        ApplyToImage[image, function] '' Applies the given function to an image, dealing properly with the ARCScene head if present.
    
    Examples:
    
    ApplyToImage[ARCScene[{{2, -1, -1}, {2, -1, -1}, {2, 2, 2}}], Reverse] === ARCScene[{{2, 2, 2}, {2, -1, -1}, {2, -1, -1}}]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ApplyToImage]
    
    \maintainer danielb
*)
Clear[ApplyToImage];
ApplyToImage[ARCScene[image_], function_] :=
    ARCScene[function[image]]

ApplyToImage[image_List, function_] :=
    function[image]

(*!
    \function ARCReplaceRulePatternsWithGroupPatternsIfAppropriate
    
    \calltable
        ARCReplaceRulePatternsWithGroupPatternsIfAppropriate[rules, inputObjects] '' Given a list of rules, checks whether any of the rule LHS correspond with object groups, and if so, makes those patterns 'group patterns' which can be used for forming groups when applying the rule.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCReplaceRulePatternsWithGroupPatternsIfAppropriate]
    
    \maintainer danielb
*)
Clear[ARCReplaceRulePatternsWithGroupPatternsIfAppropriate];
ARCReplaceRulePatternsWithGroupPatternsIfAppropriate[rules_List, inputObjects_List] :=
    Module[{matchingObjects},
        
        (* Check if any of the input objects are groups. *)
        If [!FreeQ[inputObjects, KeyValuePattern["Type" -> "Group"]],
            (* There are groups. *)
            Function[{rule},
                
                matchingObjects = Select[
                    inputObjects,
                    MatchQ[#, ARCRuleToPattern[rule]] &
                ];
                
                If [AllTrue[matchingObjects, #["Type"] === "Group" &],
                    (* All of these objects are groups, so we want to replace this rule pattern
                       with a group specification. *)
                    ReplacePart[
                        rule,
                        1 -> ARCObjectCommonalities[matchingObjects]
                    ]
                    ,
                    rule
                ]
            ] /@ rules
            ,
            (* There aren't any groups. *)
            rules
        ]
    ]

(*!
    \function ARCRuleToPattern
    
    \calltable
        ARCRuleToPattern[rule] '' Given an ARC rule, returns a WL pattern we can use to check if objects match the rule's pattern.
    
    Examples:
    
    ARCRuleToPattern[<|"Width" -> 1|>] === KeyValuePattern["Width" -> 1]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRuleToPattern]
    
    \maintainer danielb
*)
Clear[ARCRuleToPattern];
ARCRuleToPattern[pattern_ -> _] :=
    ARCRuleToPattern[pattern]

ARCRuleToPattern[pattern_] :=
    KeyValuePattern@
    Replace[
        Normal[pattern],
        HoldPattern[Rule]["Shapes", shape_] :> (
            (* We want the object to have this shape as one of its shapes. *)
            "Shapes" -> {___, KeyValuePattern[Normal[shape]], ___}
        ),
        {1}
    ]

(*!
    \function ARCObjectCommonalities
    
    \calltable
        ARCObjectCommonalities[objects] '' Given a list of objects, returns the property values they share in common.
    
    Examples:
    
    ARCObjectCommonalities[
        {<|"a" -> 1, "b" -> 2, "c" -> 3|>, <|"a" -> 1, "b" -> 2|>, <|"a" -> 1, "b" -> 3|>}
    ]
    
    ===
    
    <|"a" -> 1|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCObjectCommonalities]
    
    \maintainer danielb
*)
Clear[ARCObjectCommonalities];
ARCObjectCommonalities[objects_List] :=
    Module[{propertyValues, commonShapes},
        Association[
            Function[{property},
                propertyValues = DeleteDuplicates[objects[[All, property]]];
                If [property === "Shapes",
                    commonShapes = Intersection @@ propertyValues;
                    If [MatchQ[commonShapes, {__}],
                        propertyValues = {commonShapes}
                    ]
                ];
                If [Length[propertyValues] === 1,
                    (* All objects of this type have the same value for this property. *)
                    property -> First[propertyValues]
                    ,
                    (* Not all objects of this type have the same value for this property. *)
                    Nothing
                ]
            ] /@ DeleteDuplicates[Flatten[Keys /@ objects]]
        ]
    ]

(*!
    \function ARCFormGroupsWhenApplyingRules
    
    \calltable
        ARCFormGroupsWhenApplyingRules[objects, rules, sceneWidth, sceneHeight] '' Given the objects in a scene, and the rules we are going to apply, if any of the rule patterns specify groups, tries to form matching groups.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFormGroupsWhenApplyingRules]
    
    \maintainer danielb
*)
Clear[ARCFormGroupsWhenApplyingRules];
ARCFormGroupsWhenApplyingRules[objectsIn_List, rules_List, sceneWidth_Integer, sceneHeight_Integer] :=
    Module[
        {
            objects = objectsIn,
            possibleGroups,
            groups,
            inputObjectUUIDsThatFormedGroups
        },
        
        (* Do any rules involve groups? *)
        If [!FreeQ[rules, KeyValuePattern["Type" -> "Group"]],
            
            (* Some rules involve groups, so we'll try forming groups. *)
            
            possibleGroups =
                Function[{groupOfInputs},
                    ARCSetGroupProperties[
                        groupOfInputs,
                        sceneWidth,
                        sceneHeight
                    ]
                ] /@ Subsets[objects, {2}];
            
            (* For now, we'll just try forming groups of two. *)
            groups = Flatten[
                Function[{rule},
                    With[{pattern = ARCRuleToPattern[rule]},
                        Select[
                            possibleGroups,
                            MatchQ[#, pattern] &
                        ]
                    ]
                ] /@ rules
            ];
            
            inputObjectUUIDsThatFormedGroups =
                Flatten[groups[[All, "Components", All, "UUID"]]];
            
            Join[
                groups,
                (* Remove the objects that are now parts of groups. *)
                DeleteCases[
                    objects,
                    KeyValuePattern["UUID" -> Alternatives @@ inputObjectUUIDsThatFormedGroups]
                ]
            ]
            ,
            (* No rules involve groups. *)
            objects
        ]
    ]

(*!
    \function ARCObjectWithComponent
    
    \calltable
        ARCObjectWithComponent[objects, component] '' Returns {matchingObject, matchingComponent}, where matchingObject is the object that contains a matching component, and matchingComponent was that matched component. {_Missing, _Missing} is returned if not found.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCObjectWithComponent]
    
    \maintainer danielb
*)
Clear[ARCObjectWithComponent];
ARCObjectWithComponent[objects_List, component_Association] :=
    Module[{object, matchingComponent},
        {
            object = SelectFirst[
                objects,
                And[
                    ListQ[#["Components"]],
                    !MissingQ[
                        matchingComponent = ARCGetMatchingComponent[#, component]
                    ]
                ] &
            ],
            If [!MissingQ[object],
                matchingComponent
                ,
                Missing["NotFound"]
            ]
        }
    ]

(*!
    \function ARCGetMatchingComponent
    
    \calltable
        ARCGetMatchingComponent[object, component] '' Returns the component from the given object that matches the given component, or Missing if not found.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGetMatchingComponent]
    
    \maintainer danielb
*)
Clear[ARCGetMatchingComponent];
ARCGetMatchingComponent[object_Association, component_Association] :=
    SelectFirst[
        object["Components"],
        ARCSameQ[#, component] &
    ]

(*!
    \function ARCOutwardComponentPropertiesIfAppropriate
    
    \calltable
        ARCOutwardComponentPropertiesIfAppropriate[inputObject, newComponent, scene] '' Given a new component, checks whether it is for example a line that is extending outward from the input object, and if so, returns appropriate properties to the component to help with rule formation.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCOutwardComponentPropertiesIfAppropriate]
    
    \maintainer danielb
*)
Clear[ARCOutwardComponentPropertiesIfAppropriate];
ARCOutwardComponentPropertiesIfAppropriate[inputObject_Association, newComponent_Association, scene_Association] :=
    Module[{newComponentX2, newComponentY2, res},
        newComponentX2 = newComponent[["Position", 2]] + newComponent["Width"] - 1;
        newComponentY2 = newComponent[["Position", 1]] + newComponent["Height"] - 1;
        If [newComponent["Shape"]["Name"] === "Line",
            res = Which[
                And[
                    newComponentX2 === inputObject["X"] - 1,
                    newComponent[["Position", 2]] === 1
                ],
                    (* Left *)
                    <|
                        "Outward" -> True,
                        "Direction" -> {0, -1}
                    |>,
                And[
                    newComponent[["Position", 2]] === inputObject["X2"] + 1,
                    newComponentX2 === scene["Width"]
                ],
                    (* Right
                       25d487eb
                       ARCOutwardComponentPropertiesIfAppropriate-20220813-OQLTI2
                       ARCFindObjectMapping-20220813-3ISFU6 *)
                    <|
                        "Outward" -> True,
                        "Direction" -> {0, 1}
                    |>,
                And[
                    newComponentY2 === inputObject["Y"] - 1,
                    newComponent[["Position", 1]] === 1
                ],
                    (* Up *)
                    <|
                        "Outward" -> True,
                        "Direction" -> {-1, 0}
                    |>,
                And[
                    newComponent[["Position", 1]] === inputObject["Y2"] + 1,
                    newComponentY2 === scene["Height"]
                ],
                    (* Down *)
                    <|
                        "Outward" -> True,
                        "Direction" -> {1, 0}
                    |>,
                True,
                    Missing[]
            ];
            ReturnIfNotMissing[res]
        ];
        
        (* Not an outward object. *)
        <||>
    ]

(*!
    \function ARCRotateObjectFrame
    
    \calltable
        ARCRotateObjectFrame[object, angle] '' Given an object (or the 'conclusion' part of a pre-rule), rotates its coordinate frame by the given angle, which must be a multiple of 90 degrees.
    
    TODO: We aren't yet re-inferring the following properties, which we might need to do: (not sure)
    
    - PrimarySizeDimension
    - AspectRatio
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRotateObjectFrame]
    
    \maintainer danielb
*)
Clear[ARCRotateObjectFrame];
ARCRotateObjectFrame[object_Association, angleIn_Integer, parentWidthIn_, parentHeightIn_, sceneWidthIn_, sceneHeightIn_] :=
    Module[
        {
            angle = angleIn,
            yIn,
            xIn,
            y,
            y2,
            yRelative = Missing[],
            x,
            x2,
            xRelative = Missing[],
            width,
            height,
            parentWidth = parentWidthIn,
            parentHeight = parentHeightIn,
            sceneWidth,
            sceneHeight,
            shapeInfo,
            relativePosition,
            res
        },
        
        angle = ARCToNegativeAngle[angle];
        
        (* As of August 2022, in a pre-rule RHS, components define Y and X relative to the
           scene, but their Position is <|"RelativePosition" -> ...|>, while top-level RHS objects
           defined Position but not Y and X. *)
        yIn = Replace[object["Y"], _Missing :> object[["Position", 1]]];
        xIn = Replace[object["X"], _Missing :> object[["Position", 2]]];
        
        width = object["Width"];
        height = object["Height"];
        
        Switch[
            angle,
            0,
                Return[object, Module],
            -90,
                y = sceneWidthIn - xIn - width + 2;
                x = yIn;
                If [!MissingQ[object["YRelative"]],
                    yRelative = width - (object["X2"] - object["X"] + 1) + 1;
                    xRelative = object["YRelative"]
                ];
                {width, height} = {height, width};
                {sceneWidth, sceneHeight} = {sceneHeightIn, sceneWidthIn};
                ,
            -180,
                y = sceneHeightIn - yIn - height + 2;
                x = sceneWidthIn - xIn - width + 2;
                If [!MissingQ[object["YRelative"]],
                    yRelative = height - (object["Y2"] - object["Y"] + 1) + 1;
                    xRelative = width - (object["X2"] - object["X"] + 1) + 1
                ];
                {sceneWidth, sceneHeight} = {sceneWidthIn, sceneHeightIn};
                ,
            -270,
                y = xIn;
                x = sceneHeightIn - yIn - height + 2;
                {width, height} = {height, width};
                If [!MissingQ[object["YRelative"]],
                    yRelative = object["XRelative"];
                    xRelative = height - (object["Y2"] - object["Y"] + 1) + 1
                ];
                {sceneWidth, sceneHeight} = {sceneHeightIn, sceneWidthIn};
                ,
            _,
                ReturnFailure[
                    "UnsupportedRotationAngle",
                    "The function ARCRotateObjectFrame doesn't support the angle " <> ToString[angleIn] <> "."
                ]
        ];
        
        y2 = y + height - 1;
        x2 = x + width - 1;
        
        If [!MissingQ[object["Shapes"]] && !MissingQ[object["Image"]],
            shapeInfo = ARCRotateShapeAssociations[
                object["Shapes"],
                angle,
                object["Image"]
            ]
            ,
            shapeInfo = <||>
        ];
        
        res =
            DeleteMissing@
            AssociationApply[
                object,
                <|
                    "Image" -> Function[RotateImage[object["Image"], angle]],
                    "Shape" -> Function[shapeInfo["Shape"]],
                    "Shapes" -> Function[shapeInfo["Shapes"]],
                    "Position" ->
                        Function[
                            Which[
                                ListQ[#],
                                    {y, x},
                                MatchQ[#, KeyValuePattern["RelativePosition" -> _Association]],
                                    Sett[
                                        #,
                                        "RelativePosition" -> (
                                            relativePosition = #["RelativePosition"];
                                            Switch[
                                                angle,
                                                0,
                                                    Return[object, Module],
                                                -90,
                                                    yRelative = parentWidth - relativePosition["X"] - object["Width"] + 2;
                                                    xRelative = relativePosition["Y"];
                                                    {parentWidth, parentHeight} = {parentHeight, parentWidth};
                                                    ,
                                                -180,
                                                    yRelative = parentHeight - relativePosition["Y"] - object["Height"] + 2;
                                                    xRelative = parentWidth - relativePosition["X"] - object["Width"] + 2;
                                                    ,
                                                -270,
                                                    yRelative = relativePosition["X"];
                                                    xRelative = parentHeight - relativePosition["Y"] - object["Height"] + 2;
                                                    {parentWidth, parentHeight} = {parentHeight, parentWidth};
                                                    ,
                                                _,
                                                    ReturnFailure[
                                                        "UnsupportedRotationAngle",
                                                        "The function ARCRotateObjectFrame doesn't support the angle " <> ToString[angleIn] <> "."
                                                    ]
                                            ];
                                            AssociationApply[
                                                #["RelativePosition"],
                                                <|
                                                    "Y" -> Function[yRelative],
                                                    "X" -> Function[xRelative],
                                                    "YInverse" -> Function[parentHeight - yRelative - height + 2],
                                                    "XInverse" -> Function[parentWidth - xRelative - width + 2]
                                                |>
                                            ]
                                        )
                                    ],
                                True,
                                    ReturnFailure[
                                        "UnsupportedPosition",
                                        "ARCRotateObjectFrame doesn't support the given Position value.",
                                        "Position" -> #
                                    ]
                            ]
                        ],
                    "Y" -> Function[y],
                    "X" -> Function[x],
                    "YRelative" -> Function[yRelative],
                    "XRelative" -> Function[xRelative],
                    "Y2" -> Function[y2],
                    "X2" -> Function[x2],
                    "Width" -> Function[width],
                    "Height" -> Function[height],
                    "Direction" -> Function[
                        Replace[
                            ARCToNegativeAngle@
                            Plus[
                                Replace[
                                    object["Direction"],
                                    {{0, 1} -> 0, {-1, 0} -> -90, {0, -1} -> -180, {1, 0} -> -270}
                                ],
                                angleIn
                            ],
                            {0 -> {0, 1}, -90 -> {-1, 0}, -180 -> {0, -1}, -270 -> {1, 0}}
                        ]
                    ],
                    "Components" -> Function[
                        Function[{component},
                            ReturnIfFailure@
                            ARCRotateObjectFrame[
                                component,
                                angleIn,
                                object["Width"],
                                object["Height"],
                                sceneWidthIn,
                                sceneHeightIn
                            ]
                        ] /@ #
                    ],
                    "Transform" -> Function[
                        If [!MissingQ[#["Components"]],
                            Sett[
                                #,
                                "Components" -> (
                                    Function[{component},
                                        ReturnIfFailure@
                                        ARCRotateObjectFrame[
                                            component,
                                            angleIn,
                                            object["Width"],
                                            object["Height"],
                                            sceneWidthIn,
                                            sceneHeightIn
                                        ]
                                    ] /@ #["Components"]
                                )
                            ]
                        ]
                    ],
                    "Input" -> Function[
                        ReturnIfFailure@
                        ARCRotateObjectFrame[
                            #,
                            angleIn,
                            parentWidthIn,
                            parentHeightIn,
                            sceneWidthIn,
                            sceneHeightIn
                        ]
                    ]
                |>,
                "AddKeys" -> False
            ];
        
        res
    ]

(*!
    \function ARCNormalizeObjectRotation
    
    \calltable
        ARCNormalizeObjectRotation[object] '' Given an object (or the 'conclusion' part of a pre-rule), checks if its shape implies that it is rotated from its canonical orientation, and if so, rotates its frame into a canonical orientation.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCNormalizeObjectRotation]
    
    \maintainer danielb
*)
Clear[ARCNormalizeObjectRotation];
ARCNormalizeObjectRotation[object_Association] :=
    Module[{shape},
        If [!FreeQ[
                shape =
                    If [!MissingQ[object["Input", "Shape"]],
                        object["Input", "Shape"]
                        ,
                        object["Shape"]
                    ],
                KeyValuePattern["Transform" -> KeyValuePattern[{"Type" -> "Rotation", "Angle" -> _}]]
            ],
            ARCRotateObjectFrame[
                object,
                -shape["Transform", "Angle"],
                object["ParentWidth"],
                object["ParentHeight"],
                object["ParentWidth"],
                object["ParentHeight"]
            ]
            ,
            object
        ]
    ]

ARCNormalizeObjectRotation[objects_List, examples_List] :=
    KeyDrop[
        Function[{object},
            ReturnIfFailure@
            ARCNormalizeObjectRotation[
                Sett[
                    object,
                    {
                        "ParentWidth" -> examples[[object["Example"], "Input", "Width"]],
                        "ParentHeight" -> examples[[object["Example"], "Input", "Width"]]
                    }
                ]
            ]
        ] /@ objects,
        {
            "ParentWidth",
            "ParentHeight"
        }
    ]

(*!
    \function ARCRotateShapeAssociation
    
    \calltable
        ARCRotateShapeAssociation[shape, angle] '' Given a shape association, applies a rotation to it. The angle must be a multiple of 90 degrees.
    
    Note that this function isn't compatible with $flipSensitiveShapes, so the function
    ARCRotateShapeAssociations handles them differently. (in a more expensive way)
    
    Examples:
    
    ARCRotateShapeAssociation[
        <|"Name" -> "MyShape", "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>|>,
        90
    ]
    
    ===
    
    <|"Name" -> "MyShape", "Transform" -> <|"Type" -> "Rotation", "Angle" -> 180|>|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRotateShapeAssociation]
    
    \maintainer danielb
*)
Clear[ARCRotateShapeAssociation];
ARCRotateShapeAssociation[shapeIn_Association, angleIn_] :=
    Module[{shape = shapeIn, angle = angleIn, currentAngle},
        
        If [!MissingQ[shape["Image"]],
            shape["Image"] = RotateImage[shape["Image"], angle];
        ];
        
        If [TrueQ[$rotationSensitiveShapes[EntityName[shapeIn]]],
            If [shape["Transform", "Type"] === "Rotation",
                currentAngle = shape["Transform", "Angle"];
                angle = Mod[currentAngle + angle, 360];
                If [angle == 0,
                    KeyDrop[shape, "Transform"]
                    ,
                    Sett[shape, {"Transform", "Angle"} -> angle]
                ]
                ,
                currentAngle = 0;
                angle = Mod[currentAngle + angle, 360];
                shape["Transform"] = <|"Type" -> "Rotation", "Angle" -> angle|>;
                shape
            ]
            ,
            shape
        ]
    ]

(*!
    \function ARCRotateShapeAssociations
    
    \calltable
        ARCRotateShapeAssociations[shapes, angle, image] '' Given a list of shape association, applies a rotation to them, returning <|"Shape" -> ..., "Shapes" -> ...|>.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRotateShapeAssociations]
    
    \maintainer danielb
*)
Clear[ARCRotateShapeAssociations];

ARCRotateShapeAssociations[{}, angle_, image_] := {}

ARCRotateShapeAssociations[shapes_, angle_, image_] :=
    Module[{},
        If [Or[
                (* See below comment about abandoned ELSE clause. *)
                True,
                !FreeQ[
                    shapes,
                    KeyValuePattern["Transform" -> KeyValuePattern["Type" -> "Flip"]]
                ]
            ],
            (* Because this shape is flip sensitive, we can't make use of
               ARCRotateShapeAssociation and will instead do the more expensive thing of
               taking the image, rotating it, and classifying it. *)
            ARCInferShapeAndShapes[
                RotateImage[image, angle][[1]]
            ]
            ,
            (* Abandoned for now. I implemented ARCRotateShapeAssociation because I felt it would
               be faster than calling ARCInferShapeAndShapes, which it very well may be, but
               I got to this point and needed to infer "Shape" below, but that is within
               ARCInferShapeAndShapes and it wasn't feeling very clean try to abstract that
               out, and the realization is that for now I should just keep things simple
               and always use the above. (Also, ARCRotateShapeAssociation might have bugs in
               it etc. and it's just not worth fighting with those right now if so) *)
            <|
                "Shape" -> TODO,
                "Shapes" -> Function[{shape},
                    ARCRotateShapeAssociation[shape, angle]
                ] /@ shapes
            |>
        ]
    ]

(*!
    \function ARCInferShapeAndShapes
    
    \calltable
        ARCInferShapeAndShapes[image] '' Given an object's image, infers its 'Shape' and 'Shapes' properties.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCInferShapeAndShapes]
    
    \maintainer danielb
*)
Clear[ARCInferShapeAndShapes];
ARCInferShapeAndShapes[image_List] :=
    Module[
        {
            monochrome = ARCToMonochrome[image, $nonImageColor],
            shapes = ARCClassifyShape[image]
        },
        <|
            "Shape" -> Replace[
                shapes,
                {
                    {} :> ARCScene[monochrome],
                    list_List :> First[ARCPruneAlternatives[list, "Shapes", "Most" -> "Specific"]]
                }
            ],
            "Shapes" -> Join[
                ARCImageRotations[monochrome],
                shapes
            ]
        |>
    ]

(*!
    \function ARCToNegativeAngle
    
    \calltable
        ARCToNegativeAngle[angle] '' Makes an angle negative and less than 360 degrees.
    
    Examples:
    
    ARCToNegativeAngle[90] === -270
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCToNegativeAngle]
    
    \maintainer danielb
*)
Clear[ARCToNegativeAngle];
ARCToNegativeAngle[angle_] :=
    If [angle < 0,
        Mod[angle, -360]
        ,
        Mod[angle, 360] - 360
    ]

ARCToNegativeAngle[0] := 0

(*!
    \function ARCSetRelativeXY
    
    \calltable
        ARCSetRelativeXY[object, parent] '' Given an object and its parent, sets the YRelative and XRelative properties on the child object.
    
    Examples:
    
    ARCSetRelativeXY[<|"Y" -> 9, "X" -> 4|>, <|"Y" -> 2, "X" -> 3|>] === <|"Y" -> 9, "X" -> 4, "YRelative" -> 8, "XRelative" -> 2|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSetRelativeXY]
    
    \maintainer danielb
*)
Clear[ARCSetRelativeXY];
ARCSetRelativeXY[object_Association, parent_Association] :=
    Join[
        object,
        <|
            "YRelative" -> object["Y"] - parent["Y"],
            "XRelative" -> object["X"] - parent["X"]
        |>
    ]

ARCSetRelativeXY[objects_List, parent_Association] :=
    Function[{object},
        ARCSetRelativeXY[object, parent]
    ] /@ objects

(*!
    \function ARCPruneMatchingPropertiesForRelativePositions
    
    \calltable
        ARCPruneMatchingPropertiesForRelativePositions[matchingProperties, relativePositionQ] '' If relativePositionQ is True, which implies that the property we're trying to infer pertains to a relative position, then prune away non-relative potentially matching properties that we could use to do that inference.
    
    \maintainer danielb
*)
Clear[ARCPruneMatchingPropertiesForRelativePositions];
ARCPruneMatchingPropertiesForRelativePositions[matchingProperties_Association, relativePositionQ_] :=
    If [And[
            Length[matchingProperties] > 0,
            TrueQ[relativePositionQ]
        ],
        (* If the property we're trying to infer is part of a relative position, then
           I think it only makes sense to consider "relative" properties. For example,
           if we're trying to infer a component's relative X, we shouldn't consider
           using another object's absolute/global X value, etc.
           e.g. relative-position *)
        KeySelect[
            matchingProperties,
            MatchQ[
                #,
                "YRelative" | "XRelative" | "Width" | "Height" | "Length"
            ] &
        ]
        ,
        matchingProperties
    ]

(*!
    \function ARCSplitObjectIfCorrespondingToMultipleObjectsInOtherScene
    
    \calltable
        ARCSplitObjectIfCorrespondingToMultipleObjectsInOtherScene[object, objectsFromOtherScene, sceneWidth, sceneHeight] '' Checks if a single-color object corresponds exactly with multiple objects from the other scene. If so, the single-color object is split up to match the objects from the other scene.
    
    e.g. 25d8a9c8
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSplitObjectIfCorrespondingToMultipleObjectsInOtherScene]
    
    \maintainer danielb
*)
Clear[ARCSplitObjectIfCorrespondingToMultipleObjectsInOtherScene];
ARCSplitObjectIfCorrespondingToMultipleObjectsInOtherScene[object_Association, objectsFromOtherScene_List, sceneWidth_Integer, sceneHeight_Integer] :=
    Module[{objectsWithin},
        If [And[
                (* Single color. *)
                MatchQ[object["Colors"], {_}],
                (* We need at least two objects from the other scene fully within our object
                   to be able to split our object. *)
                Length[
                    (* Objects from the other scene that are within our object. *)
                    objectsWithin = Select[
                        objectsFromOtherScene,
                        ObjectWithinQ[#, object] &
                    ]
                ] >= 2,
                (* The pixels covered by the objects from the other scene need to fully
                   cover the pixels from our object. *)
                SameQ[
                    Sort[object["PixelPositions"]],
                    Sort[Flatten[objectsWithin[[All, "PixelPositions"]], 1]]
                ]
            ],
            Function[{objectFromOtherScene},
                ARCImageRegionToObject[
                    <|
                        "Color" -> First[object["Colors"]],
                        "Position" -> objectFromOtherScene["Position"],
                        "Image" ->
                            object["Image"][[1]][[
                                Span[
                                    objectFromOtherScene["Y"] - object["Y"] + 1,
                                    objectFromOtherScene["Y2"] - object["Y"] + 1
                                ],
                                Span[
                                    objectFromOtherScene["X"] - object["X"] + 1,
                                    objectFromOtherScene["X2"] - object["X"] + 1
                                ]
                            ]],
                        "PixelPositions" -> objectFromOtherScene["PixelPositions"]
                    |>,
                    sceneWidth,
                    sceneHeight
                ]
            ] /@ objectsWithin
            ,
            (* We can't split up our object, so just return it. *)
            {object}
        ]
    ]

(*!
    \function ARCGroupRulesByConclusion
    
    \calltable
        ARCGroupRulesByConclusion[rules] '' Given some rules, if there are multiple rules with the same conclusion which also share the same condition property, we group them into a single rule.
    
    Examples:
    
    ARCGroupRulesByConclusion[{<|"a" -> 1|> -> "Conclusion", <|"a" -> 2|> -> "Conclusion"}]
    
    ===
    
    {"Conclusion" -> 1 | 2}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGroupRulesByConclusion]
    
    \maintainer danielb
*)
Clear[ARCGroupRulesByConclusion];
ARCGroupRulesByConclusion[rules_List] :=
    Module[{property},
        Flatten@
        KeyValueMap[
            Function[{grouping, groupOfRules},
                If [MatchQ[grouping["PatternProperties"], {_}],
                    property = grouping[["PatternProperties", 1]];
                    Rule[
                        <|
                            property ->
                                ARCPruneAlternativesWrtExcept[
                                    Alternatives @@ groupOfRules[[All, 1, 1]]
                                ]
                        |>,
                        ARCCombineConclusions[
                            groupOfRules[[All, 2]]
                        ]
                    ]
                    ,
                    (* Multiple properties are involved, so for now we won't try to group these
                       rules. *)
                    groupOfRules
                ]
            ],
            GroupBy[
                rules,
                Rule[
                    Function[
                        <|
                            "Conclusion" -> KeyDrop[
                                Last[#],
                                {
                                    "Examples",
                                    "ExampleCount",
                                    "UseCount",
                                    "InputObjects"
                                }
                            ],
                            "PatternProperties" -> Keys[First[#]]
                        |>
                    ],
                    Identity
                ]
            ]
        ]
    ]

(*!
    \function ARCPruneAlternativesWrtExcept
    
    \calltable
        ARCPruneAlternativesWrtExcept[alternatives] '' Given an Alternatives, checks whether any Except sub-items can be simplified.
    
    Examples:
    
    ARCPruneAlternativesWrtExcept[1 | Except[1 | 2] | Except[3 | 4]] === Except[2 | 3 | 4]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCPruneAlternativesWrtExcept]
    
    \maintainer danielb
*)
Clear[ARCPruneAlternativesWrtExcept];
ARCPruneAlternativesWrtExcept[alternativesIn_Alternatives] :=
    Module[{alternatives = DeleteDuplicates[alternativesIn], exceptItems},
        
        exceptItems = Cases[alternatives, HoldPattern[Except][_]];
        If [MatchQ[exceptItems, {_, ___}],
            (* The non-Except items in the Alternatives list. *)
            alternatives = Complement[
                List @@ alternatives,
                exceptItems
            ];
            (* Take all of the Except items in the Alternatives list and combine them.
               When we combine them, remove any duplicate items, any multiply-nested
               Alternatives, etc. *)
            exceptItems = ARCCombineAlternatives[
                Alternatives @@ exceptItems[[All, 1]]
            ];
            (* Add the list back if it got removed on us. *)
            If [Head[exceptItems] =!= Alternatives, exceptItems = Alternatives[exceptItems]];
            (* If there are any non-Except items that are also within an Except, then
               we can remove those items both from the non-Except list and from the
               Except list. *)
            alternatives2 = Alternatives @@ (
                Complement[alternatives, List @@ exceptItems]
            );
            exceptItems = Alternatives @@ (
                Complement[List @@ exceptItems, alternatives]
            );
            ARCCombineAlternatives@
            Alternatives[
                alternatives2,
                Except[
                    Replace[
                        exceptItems,
                        HoldPattern[Alternatives][singleItem_] :> singleItem
                    ]
                ]
            ]
            ,
            Replace[
                alternatives,
                HoldPattern[Alternatives][singleItem_] :> singleItem
            ]
        ]
    ]

(*!
    \function ARCCombineAlternatives
    
    \calltable
        ARCCombineAlternatives[alternatives] '' Given a list of alternatives, which may themselves be alternatives, combines them and flattens then.
    
    Examples:
    
    ARCCombineAlternatives[1 | (1 | 2) | 2 | 3 | {9, 9}] === 1 | 2 | 3 | {9, 9}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCombineAlternatives]
    
    \maintainer danielb
*)
Clear[ARCCombineAlternatives];
ARCCombineAlternatives[alternatives_Alternatives] :=
    Module[{},
        Replace[
            DeleteDuplicates@
            Flatten[
                alternatives,
                Infinity,
                Alternatives
            ],
            (* If we end up with an Alternatives with a single item, we can remove
               the Alternatives wrapper. *)
            HoldPattern[Alternatives][singleItem_] :> singleItem
        ]
    ]

ARCCombineAlternatives[other_] := other

(*!
    \function ARCCombineConclusions
    
    \calltable
        ARCCombineConclusions[conclusions] '' Given a list of conclusions, combines them, taking care of keys like Examples, ExampleCount, etc.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCombineConclusions]
    
    \maintainer danielb
*)
Clear[ARCCombineConclusions];
ARCCombineConclusions[conclusions_List] :=
    Module[{commonConditions},
        
        commonConditions =
            DeleteDuplicates@
            KeyDrop[
                conclusions,
                {
                    "Examples",
                    "ExampleCount",
                    "UseCount",
                    "InputObjects"
                }
            ];
        
        If [Length[commonConditions] =!= 1,
            ReturnFailure[
                "ARCCombineConclusionsFailure",
                "The conditions cannot be combined because they don't share the same conclusions.",
                "UniqueConclusionSets" -> commonConditions,
                "Conclusions" -> conclusions
            ]
            ,
            commonConditions = First[commonConditions]
        ];
        
        DeleteMissing@
        <|
            commonConditions,
            "Examples" ->
                Replace[
                    DeleteDuplicates@
                    Flatten@
                    DeleteMissing[conclusions[[All, "Examples"]]],
                    {} -> Missing[]
                ],
            "ExampleCount" ->
                Replace[
                    Total@
                    DeleteMissing[conclusions[[All, "ExampleCount"]]],
                    0 -> Missing[]
                ],
            "UseCount" ->
                Replace[
                    Total@
                    DeleteMissing[conclusions[[All, "UseCount"]]],
                    0 -> Missing[]
                ],
            "InputObjects" ->
                Replace[
                    DeleteDuplicates@
                    Flatten@
                    DeleteMissing[conclusions[[All, "InputObjects"]]],
                    {} -> Missing[]
                ]
        |>
    ]

(*!
    \function ARCAddedObjectsMapping
    
    \calltable
        ARCAddedObjectsMapping[outputObjectsMappedTo] '' Given the list of output objects that weren't mapped to, produces an entry for the object 'mapping' to represent them as added objects, although the LHS is just the string "AddedObjects" since there are no corresponding objects in the input.
    
    Examples:
    
    ARCAddedObjectsMapping[{<|"UUID" -> 1|>, <|"UUID" -> 2|>, <|"UUID" -> 3|>}]
    
    ===
    
    "AddedObjects" -> <|
        "Transform" -> <|
            "Type" -> "AddedObjects",
            "Objects" -> {<|"UUID" -> 1|>, <|"UUID" -> 2|>, <|"UUID" -> 3|>}
        |>
    |>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCAddedObjectsMapping]
    
    \maintainer danielb
*)
Clear[ARCAddedObjectsMapping];
ARCAddedObjectsMapping[outputObjectsMappedTo_List] :=
    If [outputObjectsMappedTo === {},
        Nothing
        ,
        Rule[
            "AddObjects",
            <|
                "Transform" -> <|
                    "Type" -> "AddObjects",
                    "Objects" -> outputObjectsMappedTo
                |>
            |>
        ]
    ]

(*!
    \function ARCRuleForAddedObjects
    
    \calltable
        ARCRuleForAddedObjects[addedObjects, referenceableOutputObjects] '' Given the "AddedObjects" value for each example, determines whether we support modeling those added objects, and if so returns the rule for them.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRuleForAddedObjects]
    
    \maintainer danielb
*)
Clear[ARCRuleForAddedObjects];
ARCRuleForAddedObjects[addedObjects_List, referenceableOutputObjects_Association, examplesIn_List] :=
    Module[{examples = examplesIn, counter = 0, addedObjectUUIDs},
        (* If there are objects in the output that don't seem to correspond to objects in the
           input, then we'll start by trying to model them. *)
        Which[
            MatchQ[addedObjects, {Repeated[_Missing]}],
                (* There are no objects added. Nothing to do. *)
                Nothing,
            MatchQ[addedObjects, {Repeated[KeyValuePattern["Transform" -> KeyValuePattern["Objects" -> {_}]]]}],
                (* There is always exactly one object added, so we'll see if we can model that. *)
                addedObjectUUIDs = Flatten[addedObjects[[All, "Transform", "Objects", All, "UUID"]]];
                (* Remove these 'added objects' from the output scenes so that the referenceable objects
                   we form below don't try to use the very objects we're trying to add. *)
                examples[[All, "Output"]] = Replace[
                    examples[[All, "Output"]],
                    KeyValuePattern["UUID" -> Alternatives @@ addedObjectUUIDs] :> Nothing,
                    {0, Infinity}
                ];
                ReturnIfFailure@
                ARCGeneralizeConclusions[
                    Function[{item},
                        Append[item, "Example" -> ++counter]
                    ] /@ addedObjects,
                    ReturnIfFailure@
                    ARCMakeObjectsReferenceable[
                        examples[[All, "Output"]],
                        "AdditionalConditions" -> <|"Context" -> "Output"|>
                    ],
                    examples
                ],
            True,
                (* The number of objects is inconsistent. We don't yet have support for this. *)
                ReturnFailure[
                    "AddedObjectFailure",
                    "ARCFindRules doesn't currently support AddedObjects where the count of added objects isn't always 1.",
                    "AddedObjects" -> addedObjects
                ]
        ]
    ]

(*!
    \function ARCInferPropertiesThatRequireFullObjectList
    
    \calltable
        ARCInferPropertiesThatRequireFullObjectList[objects] '' Infers properties like the Rank and InverseRank properties that shouldn't be computed until we have the full object list.
    
    Examples:
    
    ARCInferPropertiesThatRequireFullObjectList[{<|"Height" -> 1|>, <|"Height" -> 2|>}]
    
    ===
    
    {
        <|"Height" -> 1, "HeightRank" -> 2, "HeightInverseRank" -> 1|>,
        <|"Height" -> 2, "HeightRank" -> 1, "HeightInverseRank" -> 2|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCInferPropertiesThatRequireFullObjectList]
    
    \maintainer danielb
*)
Clear[ARCInferPropertiesThatRequireFullObjectList];
ARCInferPropertiesThatRequireFullObjectList[objectsIn_List] :=
    Module[{objects = objectsIn},
        
        (* For now we'll only infer rank property values on top level objects. *)
        objects = ARCInferRankProperties[objects];
        
        objects
    ]

(*!
    \function ARCGridOrDividerQ
    
    \calltable
        ARCGridOrDividerQ[image, y, x, sceneHeight, sceneHeight] '' Given an image, returns True if it looks like it could be either a grid or a divider.
    
    Examples:
    
    ARCGridOrDividerQ[
        {
            {-1, -1, 5, -1, -1, 5, -1, -1},
            {-1, -1, 5, -1, -1, 5, -1, -1},
            {5, 5, 5, 5, 5, 5, 5, 5},
            {-1, -1, 5, -1, -1, 5, -1, -1},
            {-1, -1, 5, -1, -1, 5, -1, -1},
            {5, 5, 5, 5, 5, 5, 5, 5},
            {-1, -1, 5, -1, -1, 5, -1, -1},
            {-1, -1, 5, -1, -1, 5, -1, -1}
        },
        8,
        8
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGridOrDividerQ]
    
    \maintainer danielb
*)
Clear[ARCGridOrDividerQ];
ARCGridOrDividerQ[image_List, y_, x_, sceneWidth_, sceneHeight_] :=
    Module[{spansWidth, spansHeight, firstRow},
        
        colors = Sort[DeleteDuplicates[Flatten[image]]];
        
        spansWidth = ImageWidth[image] === sceneWidth;
        spansHeight = ImageHeight[image] === sceneHeight;
        
        Which[
            !spansWidth && !spansHeight,
                (* For now we'll only try detecting dividers/grids that span either the entire
                   width or entire height, or both. *)
                False,
            spansWidth && spansHeight,
                If [Length[colors] =!= 2 || colors[[1]] =!= -1,
                    Return[False, Module]
                ];
                color = colors[[2]];
                firstRow = image[[1]];
                dividerRow = Table[color, {Length[firstRow]}];
                And[
                    ImageWidth[image] === sceneWidth,
                    ImageHeight[image] === sceneHeight,
                    MatchQ[
                        firstRow,
                        {
                            Repeated@
                            PatternSequence[
                                Repeated[-1],
                                (* For now only allow grids where the dividers have a width of 1. *)
                                color
                            ],
                            Repeated[-1]
                        }
                    ]
                    ,
                    MatchQ[
                        image,
                        {
                            Repeated[firstRow],
                            Repeated@
                            PatternSequence[
                                Repeated[firstRow],
                                dividerRow
                            ],
                            Repeated[firstRow]
                        }
                    ]
                ],
            spansWidth && !spansHeight,
                (* Check for horizontal divider. *)
                If [Length[colors] =!= 1,
                    Return[False, Module]
                ];
                color = colors[[1]];
                And[
                    y =!= 1,
                    y =!= sceneHeight,
                    MatchQ[
                        image,
                        {
                            {Repeated[color]}
                        }
                    ]
                ],
            spansHeight && !spansWidth,
                (* Check for vertical divider. *)
                If [Length[colors] =!= 1,
                    Return[False, Module]
                ];
                color = colors[[1]];
                And[
                    x =!= 1,
                    x =!= sceneWidth,
                    MatchQ[
                        image,
                        {
                            Repeated[{color}]
                        }
                    ]
                ]
        ]
    ]

ARCGridOrDividerQ["Objects" -> objects_List, sceneWidth_, sceneHeight_] :=
    Module[{},
        Function[{object},
            If [TrueQ[
                    ARCGridOrDividerQ[
                        object["Image"][[1]],
                        object["Y"],
                        object["X"],
                        sceneWidth,
                        sceneHeight
                    ]
                ],
                Append[
                    object,
                    "GridOrDivider" -> True
                ]
                ,
                object
            ]
        ] /@ objects
    ]

(*!
    \function ARCConclusionsInvolveRotation
    
    \calltable
        ARCConclusionsInvolveRotation[conclusions] '' Given a group of conclusions, returns True if they involve rotation.
    
    Examples:
    
    ARCConclusionsInvolveRotation[
        {
            <|
                "Input" -> <|
                    "Shape" -> <|
                        "Name" -> "Triangle",
                        "Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>
                    |>
                |>
            |>,
            <|"Input" -> <|"Shape" -> <|"Name" -> "Triangle"|>|>|>
        }
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCConclusionsInvolveRotation]
    
    \maintainer danielb
*)
Clear[ARCConclusionsInvolveRotation];
ARCConclusionsInvolveRotation[conclusions_List] :=
    Module[{shapes},
        And[
            MatchQ[
                conclusions,
                {Repeated[KeyValuePattern["Input" -> _]]}
            ],
            (* Should we only return True if all shapes are the same type?
               For now we'll include this condition but perhaps we should remove it.
               ARCConclusionsInvolveRotation-20220821-O42HMR *)
            MatchQ[
                shapes = conclusions[[All, "Input", "Shape"]],
                {Repeated[KeyValuePattern["Name" -> shape_]]}
            ],
            (* Is there at least one object that is rotated out of the canonical orientation? *)
            MemberQ[
                shapes,
                KeyValuePattern["Transform" -> KeyValuePattern[{"Type" -> "Rotation", "Angle" -> Except[0]}]]
            ],
            (* If all objects are rotated the same way, should we return True? For now we will
               return False in this case since the purpose of this function currently is to
               find cases where the items are rotated differently, in which case we may need
               to normalize their rotation. ARCConclusionsInvolveRotation-20220821-3OOHYX *)
            !MatchQ[
                shapes[[All, "Transform", "Angle"]],
                {Repeated[angle_]}
            ]
        ]
    ]

(*!
    \function ARCFindRulesUsingRotationalNormalization
    
    \calltable
        ARCFindRulesUsingRotationalNormalization[currentConclusion, currentUnhandled, unhandledAfterInitialRuleSearch, conclusionGroup, examples, referenceableInputObjects, mutuallyExclusiveRules] '' Checks whether we were unable to find rules for the given group of conclusions and whether the set of objects have inconsistent rotational properties. If so, tries rotationally normalizing the rules to see if we can then find a rule set.
    
    e.g. 25d487eb
    
    \maintainer danielb
*)
Clear[ARCFindRulesUsingRotationalNormalization];
ARCFindRulesUsingRotationalNormalization[currentConclusion_, currentUnhandled_, unhandledAfterInitialRuleSearch_, conclusionGroup_, examples_List, referenceableInputObjects_Association, mutuallyExclusiveRules_] :=
    Module[{conclusion, unhandled = currentUnhandled, unhandled2},
        
        (* If we weren't able to find rules, check if the objects have varying
           angles of rotation, and if so, try again after first normalizing for
           rotation. *)
        If [And[
                MissingQ[currentConclusion],
                ARCConclusionsInvolveRotation[conclusionGroup]
            ],
            (* TODO: It would be ideal, before spending potentially a lot of
                      time normalizing all of these objects and trying again
                      to find rules, to check whether any of the conclusions
                      are actually in need of inferring a property that might
                      benefit from rotational normalization. Perhaps that could
                      be done during the first call to ARCFindRules above. *)
            {conclusion, unhandled2} =
                ReturnIfFailure@
                ARCFindRules[
                    Global`djb =
                    ARCNormalizeObjectRotation[
                        conclusionGroup,
                        examples
                    ],
                    (* Note that these aren't rotationally normalized.
                       Todo: Is this a problem? *)
                    referenceableInputObjects,
                    (* Note that these aren't rotationally normalized.
                       Todo: Is this a problem? *)
                    examples,
                    currentUnhandled,
                    mutuallyExclusiveRules,
                    "UnnormalizedConclusionGroup" -> conclusionGroup
                ];
            
            If [!MissingQ[conclusion],
                conclusion = Prepend[conclusion, "RotationNormalization" -> True];
                unhandled = unhandled2;
            ];
            ,
            (* There isn't a rotation normalization to try. *)
            conclusion = currentConclusion;
            unhandled = unhandledAfterInitialRuleSearch;
        ];
        
        {conclusion, unhandled}
    ]

(*!
    \function ARCDebug
    
    \calltable
        ARCDebug[expr] '' Evaluates the given expression with debug mode enabled.
    
    \maintainer danielb
*)
Clear[ARCDebug];
Attributes[ARCDebug] = {HoldFirst};
ARCDebug[expr_] :=
    Block[{$debug = True},
        expr
    ]

(*!
    \function ARCEcho3
    
    \calltable
        ARCEcho3[expr] '' Echoes the given expression but only if in debug mode.
    
    \maintainer danielb
*)
Clear[ARCEcho3];
ARCEcho3[expr_] :=
    If [TrueQ[$debug],
        ARCEcho2[expr]
        ,
        expr
    ]

(*!
    \function ARCEchoTag
    
    \calltable
        ARCEchoTag[tag] '' EchoTag but only if ARC debug mode is enabled.
    
    \maintainer danielb
*)
Clear[ARCEchoTag];
ARCEchoTag[tag_] :=
    Function[{expr},
        If [TrueQ[$debug],
            EchoTag[tag][expr]
            ,
            expr
        ],
        {HoldAllComplete}
    ]

(*!
    \function ARCConstructObject
    
    \calltable
        ARCConstructObject[object] '' Given an object that may not have all of its core properties set, tries to use any available constructor properties to infer the core properties and return a standard object.
    
    Examples:
    
    ARCConstructObject[
        <|
            "Outward" -> True,
            "Shape" -> <|"Name" -> "Line", "Angle" -> 90|>,
            "Direction" -> {-1, 0},
            "Color" -> 2,
            "X" -> 5
        |>,
        "Parent" -> <|"Y" -> 5, "Height" -> 10|>
    ]
    
    ===
    
    <|"Shape" -> <|"Name" -> "Line", "Angle" -> 90|>, "Color" -> 2, "Position" -> {4, 5}|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCConstructObject]
    
    \maintainer danielb
*)
Clear[ARCConstructObject];
Options[ARCConstructObject] =
{
    "Parent" -> None,                               (*< The object's parent object. (if it is a component) *)
    "Scene" -> Missing["Scene", "NotSpecified"]     (*< The scene. For passing in the width and height, etc. *)
};

ARCConstructObject[objectIn:KeyValuePattern[{"Outward" -> True, "Shape" -> KeyValuePattern["Name" -> "Line"]}], OptionsPattern[]] :=
    Module[{object = objectIn, position},
        
        ReturnFailureIfMissing[OptionValue["Parent"]];
        ReturnFailureIfMissing[OptionValue["Scene"]];
        
        object = <|
            "Shape" -> object["Shape"],
            "Color" -> object["Color"],
            "Position" -> (
                position = {
                    If [!MissingQ[object["Y"]],
                        object["Y"]
                        ,
                        Switch[
                            object["Direction"],
                            {-1, 0},
                                1,
                            {1, 0},
                                OptionValue["Parent"]["Y"] + OptionValue["Parent"]["Height"],
                            _,
                                ReturnFailure[
                                    "InvalidLineDirection",
                                    "Unable to construct an outward line object's Y value with the given property values.",
                                    "Object" -> object
                                ]
                        ]
                    ],
                    If [!MissingQ[object["X"]],
                        object["X"]
                        ,
                        Switch[
                            object["Direction"],
                            {0, -1},
                                1,
                            {0, 1},
                                OptionValue["Parent"]["X"] + OptionValue["Parent"]["Width"],
                            _,
                                ReturnFailure[
                                    "InvalidLineDirection",
                                    "Unable to construct an outward line object's X value with the given property values.",
                                    "Object" -> object
                                ]
                        ]
                    ]
                }
            ),
            "Width" -> Replace[
                object["Direction"],
                {
                    {0, -1} :> OptionValue["Parent"]["X"] - 1,
                    {0, 1} :> Plus[
                        OptionValue["Scene"]["Width"],
                        -OptionValue["Parent"]["X"],
                        -OptionValue["Parent"]["Width"],
                        1
                    ],
                    {-1, 0} :> 1,
                    {1, 0} :> 1
                }
            ],
            "Height" -> Replace[
                object["Direction"],
                {
                    {0, -1} :> 1,
                    {0, 1} :> 1,
                    {-1, 0} :> OptionValue["Parent"]["Y"] - 1,
                    {1, 0} :> Plus[
                        OptionValue["Scene"]["Height"],
                        -OptionValue["Parent"]["Y"],
                        -OptionValue["Parent"]["Height"],
                        1
                    ]
                }
            ]
        |>;
        
        ARCConstructObject[object]
    ]

ARCConstructObject[object_, OptionsPattern[]] :=
    Module[{},
        If [MissingQ[object["Image"]],
            Prepend[
                object,
                "Image" -> ReturnIfFailure[ARCInferObjectImage[object]]
            ]
            ,
            object
        ]
    ]

(*!
    \function ARCMappingToObjectWithOverlappingFilledInPixels
    
    \calltable
        ARCMappingToObjectWithOverlappingFilledInPixels[object, outputObjects] '' Tries to produce a mapping from the input object to one of the output objects by looking for an output object with overlapping filled-in pixels.
    
    e.g. 0962bcdd
    
    Examples:
    
    ARCMappingToObjectWithOverlappingFilledInPixels[object, outputObjects] === TODO
    
    \maintainer danielb
*)
Clear[ARCMappingToObjectWithOverlappingFilledInPixels];
ARCMappingToObjectWithOverlappingFilledInPixels[object_Association, outputObjects_List] :=
    Module[{},
        Replace[
            Select[
                outputObjects,
                And[
                    Or[
                        (* The output object is a superset of the pixels of the input object. *)
                        SubsetQ[#["PixelPositions"], object["PixelPositions"]],
                        (* The output object is a subset of the pixels of the input object. *)
                        SubsetQ[object["PixelPositions"], #["PixelPositions"]]
                    ],
                    (* We also currently require the colors to be the same, to avoid false
                       positives, such as in 31aa019c, where we don't want random pixels
                       in the output to get mapped to the boxes in the output. *)
                    object["Colors"] === #["Colors"]
                ] &
            ],
            {
                {mappedToObject_} :> (
                    (* Since there was only 1 corresponding output object, we'll create
                        a mapping. *)
                    Return[
                        object -> Sett[
                            mappedToObject,
                            {
                                "Image" -> mappedToObject["Image"],
                                With[{relativePosition = mappedToObject["Position"] - object["Position"]},
                                    If [relativePosition =!= {0, 0},
                                        "Position" -> <|
                                            "RelativePosition" -> mappedToObject["Position"] - object["Position"],
                                            "Y" -> mappedToObject["Position"][[1]],
                                            "X" -> mappedToObject["Position"][[2]]
                                        |>
                                        ,
                                        Nothing
                                    ]
                                ]
                            }
                        ],
                        Module
                    ]
                )
            }
        ];
        
        Missing["NotFound"]
    ]

(*!
    \function ARCPropertiesNeededForConclusions
    
    \calltable
        ARCPropertiesNeededForConclusions[conclusions] '' Given a list of rule conclusions, which specify their corresponding input object via the Input key, which properties are needing to be inferred dynamically, and which have values different from their corresponding inputs.
    
    Examples:
    
    ARCPropertiesNeededForConclusions[conclusions] === TODO
    
    \maintainer danielb
*)
Clear[ARCPropertiesNeededForConclusions];
ARCPropertiesNeededForConclusions[conclusions_List] :=
    Module[
        {
            propertiesWithSameValueForAllConclusions,
            relativePosition,
            propertiesWithChangingValue,
            propertiesToInferDynamicallyFromInputs
        },
        
        (* What properties do we need to infer? *)
        propertiesWithSameValueForAllConclusions =
            Keys[ARCObjectCommonalities[conclusions]];
        
        (* If a conclusions's Position is expression in terms of a RelativePosition, we need
           to take care not to drop it from the list of keys to specify in a rule's conclusion.
           e.g. 363442ee *)
        If [And[
                MemberQ[propertiesWithSameValueForAllConclusions, "Position"],
                MatchQ[
                    conclusions[[1, "Position"]],
                    KeyValuePattern["RelativePosition" -> _]
                ]
            ],
            relativePosition = conclusions[[1, "Position"]];
        ];
        
        propertiesWithChangingValue =
            Function[{conclusion},
                (* For each conclusion, ignore properties that aren't changing,
                   from input-to-output. *)
                Keys@
                Complement[
                    Normal[KeyDrop[conclusion, {"Example", "Input"}]],
                    If [!MissingQ[conclusion["Input"]],
                        Normal[KeyTake[conclusion["Input"], Keys[conclusion]]]
                        ,
                        {}
                    ]
                ]
            ] /@ conclusions;
        
        propertiesToInferDynamicallyFromInputs =
            Function[{propertiesWithChangingValueForThisConclusion},
                (* For each conclusion, ignore properties that are the same for
                   all conclusions. *)
                Complement[
                    propertiesWithChangingValueForThisConclusion,
                    propertiesWithSameValueForAllConclusions
                ]
            ] /@ propertiesWithChangingValue;
        
        {
            propertiesToInferDynamicallyFromInputs,
            propertiesWithChangingValue,
            relativePosition
        }
    ]

(*!
    \function ARCSubPropertySets
    
    \calltable
        ARCSubPropertySets[attributes] '' Given an item from $transformTypes, returns a list of minimal property sets with their corresponding attributes.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSubPropertySets]
    
    \maintainer danielb
*)
Clear[ARCSubPropertySets];
ARCSubPropertySets[attributes_Association] :=
    Module[{},
        If [ListQ[attributes["SubProperties"]],
            (* $transformTypes specifies which sub-properties we need to be able to
               infer, so we loop over them. *)
            subProperties = attributes["SubProperties"];
            If [ListQ[attributes["MinimalPropertySets"]],
                (* There are different combinations of the properties that can be used
                    to achieve a minimally specifying set of properties. *)
                Function[{minimalPropertySet},
                    Function[{item},
                        (* Lookup the attributes for this property. *)
                        ARCMinimalPropertySetItemToAttributes[item, subProperties]
                    ] /@ minimalPropertySet
                ] /@ attributes["MinimalPropertySets"]
                ,
                {
                    subProperties
                }
            ]
            ,
            If [!MissingQ[attributes["SubProperties"]],
                ReturnFailure[
                    "InvalidSubProperties",
                    "The SubProperties specification is invalid. It should be a list.",
                    "SubProperties" -> attributes["SubProperties"],
                    "PropertyAttributes" -> attributes
                ]
                ,
                (* $transformTypes doesn't specify which sub-properties we need to be able
                   to infer -- which it really should. *)
                Missing["NotFound", "SubProperties"]
            ]
        ]
    ]

(*!
    \function ARCMinimalPropertySetItemToAttributes
    
    \calltable
        ARCMinimalPropertySetItemToAttributes[item, attributeLookup] '' Given a minimal property set item, expands items to be of the form `property` -> `attributes`.
    
    Examples:
    
    ARCMinimalPropertySetItemToAttributes["MyProperty", <|"MyProperty" -> <|"A" -> 1|>|>]
    
    ===
    
    "MyProperty" -> <|"A" -> 1|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCMinimalPropertySetItemToAttributes]
    
    \maintainer danielb
*)
Clear[ARCMinimalPropertySetItemToAttributes];
ARCMinimalPropertySetItemToAttributes[item_, attributeLookup_] :=
    Module[{},
        (* Lookup the attributes for this property. *)
        Replace[
            item,
            {
                property_String :> (
                    property -> Lookup[
                        attributeLookup,
                        property,
                        <||>
                    ]
                ),
                _Alternatives :> (
                    Alternatives @@ (
                        ARCMinimalPropertySetItemToAttributes[#, attributeLookup] & /@ (List @@ item)
                    )
                )
            }
        ]
    ]

(*!
    \function ARCScoreRuleSets
    
    \calltable
        ARCScoreRuleSets[ruleSets] '' Given a list of rule sets, scores them according to how good they seem.
    
    Examples:
    
    ARCScoreRuleSets[
        {
            {<|"Color" -> 1|> -> <|"X" -> 1|>, <|"Color" -> 2|> -> <|"X" -> 2|>},
            {<|"X" -> 1|> -> <|"Color" -> 1|>, <|"X" -> 2|> -> <|"Color" -> 2|>}
        }
    ]
    
    ===
    
    <|
        {<|"Color" -> 1|> -> <|"X" -> 1|>, <|"Color" -> 2|> -> <|"X" -> 2|>} -> -0.5825641025641026,
        {<|"X" -> 1|> -> <|"Color" -> 1|>, <|"X" -> 2|> -> <|"Color" -> 2|>} -> -1.044102564102564
    |>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCScoreRuleSets]
    
    \maintainer danielb
*)
Clear[ARCScoreRuleSets];
ARCScoreRuleSets[ruleSets_List] :=
    Module[{},
        ReverseSort[
            Association[
                Function[{ruleSet},
                    ruleSet -> (
                        ReturnIfFailure@
                        ARCRuleSetScore[ruleSet]
                    )
                ] /@ ruleSets
            ]
        ]
    ]

(*!
    \function ARCRuleSetScore
    
    \calltable
        ARCRuleSetScore[ruleSet] '' Given a rule set, returns a score quantifying how good it seems.
    
    Examples:
    
    ARCRuleSetScore[{<|"Color" -> 1|> -> <|"X" -> 1|>, <|"Color" -> 2|> -> <|"X" -> 2|>}]
    
    ===
    
    -0.5825641025641026
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRuleSetScore]
    
    \maintainer danielb
*)
Clear[ARCRuleSetScore];
ARCRuleSetScore[ruleSet_List] :=
    Module[{},
        Total[
            Function[{rule},
                If [MatchQ[rule, _Rule],
                    SqrtButKeepSign@
                    Plus[
                        SquareButKeepSign@
                        ReturnIfFailure@
                        ARCConditionsScore[rule[[1]]],
                        SquareButKeepSign@
                        ReturnIfFailure@
                        ARCTransformScore[rule[[2]]]
                    ]
                    ,
                    -(ARCExpressionComplexity[rule] ^ 2)
                ]
            ] /@ ruleSet
        ]
    ]

(*!
    \function ARCConditionsScore
    
    \calltable
        ARCConditionsScore[conditions] '' Given some conditions / rule pattern, returns a score to quantify how good they seem. Higher is better.
    
    Examples:
    
    ARCConditionsScore[<|"Color" -> 1|>] === -0.19128205128205128
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCConditionsScore]
    
    \maintainer danielb
*)
Clear[ARCConditionsScore];
ARCConditionsScore[conditions_Association] :=
    Module[{propertyQualitySum},
        
        propertyQualitySum =
            SqrtButKeepSign@
            Total[
                Function[{property},
                    SquareButKeepSign@
                    ReturnIfFailure@
                    PropertyConditionQuality[property]
                ] /@ Keys[conditions]
            ];
        
        SqrtButKeepSign@
        Plus[
            (* How much do we like these particular properties as conditions? *)
            SquareButKeepSign@
            propertyQualitySum,
            (* Occam's Razor *)
            -(ARCExpressionComplexity[conditions] ^ 2)
        ]
    ]

(* ARCFindRules-20220817-R66XW8 *)
ARCConditionsScore[<||>] := 0.5

(*!
    \function ARCExpressionComplexity
    
    \calltable
        ARCExpressionComplexity[expr] '' Given an expression, returns a score that tries to quantify how complex it is.
    
    Examples:
    
    ARCExpressionComplexity[123] === -0.03
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCExpressionComplexity]
    
    \maintainer danielb
*)
Clear[ARCExpressionComplexity];
$penaltyPointsPerExpressionCharacter = 0.5 / 50;
ARCExpressionComplexity[exprIn_] :=
    Module[{expr = exprIn},
        
        (* Replace associations with lists so that it's easier to pick out individual
           key/values and modify them. *)
        expr = FixedPoint[
            Replace[
                #,
                assoc_Association :> Normal[assoc],
                {0, Infinity}
            ] &,
            expr
        ];
        
        (* Simplify named associations like the ones used by "Shape" so that
           they are unduely penalized. *)
        expr = Replace[
            expr,
            {
                ("Name" -> name_) :> name,
                {item_} :> item,
                ARScene[image_] :> image
            },
            {0, Infinity}
        ];
        
        (* Consider the complexity of the expressions. We want to be consistant
           with Occam's Razor, whereby simpler explanations are preferred.
           e.g. 05f2a901 (when implementing referenceable-components) *)
        (* The variable `$penaltyPointsPerExpressionCharacter` is a hyperparameter and
           it's definitely not clear what its value should be relative to penalties
           in above heuristics.
           Log:
           - Aug 18 2022: -0.5 / 50 (-0.5 penalty per 50 characters) *)
        Times[
            StringLength[
                StringReplace[
                    ToString[expr],
                    {
                        (* We don't want rank properties to be penalized too much. *)
                        ".Rank" -> ".R",
                        ".InverseRank" -> ".InvR"
                    }
                ]
            ],
            $penaltyPointsPerExpressionCharacter
        ]
    ]

(*!
    \function ARCChooseBestRuleSet
    
    \calltable
        ARCChooseBestRuleSet[ruleSets] '' Given a list of rule sets, returns the one that seems the best.
    
    Examples:
    
    ARCChooseBestRuleSet[
        {
            {<|"Color" -> 1|> -> <|"X" -> 1|>, <|"Color" -> 2|> -> <|"X" -> 2|>},
            {<|"X" -> 1|> -> <|"Color" -> 1|>, <|"X" -> 2|> -> <|"Color" -> 2|>}
        }
    ]
    
    ===
    
    {<|"Color" -> 1|> -> <|"X" -> 1|>, <|"Color" -> 2|> -> <|"X" -> 2|>}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCChooseBestRuleSet]
    
    \maintainer danielb
*)
Clear[ARCChooseBestRuleSet];
ARCChooseBestRuleSet[ruleSets_List] :=
    Module[{scored},
        
        scored = ARCScoreRuleSets[ruleSets];
        
        (*ARCEcho[scored];*)
        
        Normal[scored][[1, 1]]
    ]

ARCChooseBestRuleSet[{}] := {}

ARCChooseBestRuleSet[{item_}] := item

(*!
    \function PropertyConditionQuality
    
    \calltable
        PropertyConditionQuality[property] '' Given a property, how happy are we to use it as a condition in a rule's pattern?
    
    Examples:
    
    PropertyConditionQuality["Color"] === -0.05128205128205128
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`PropertyConditionQuality]
    
    \maintainer danielb
*)
Clear[PropertyConditionQuality];
PropertyConditionQuality[property_String] :=
    Module[{listPosition, quality, qualityCenteredAt0},
        
        quality = Replace[
            $properties[property, "RuleConditionQuality"],
            {
                _Missing :> (
                    (* The properties that seem more likely to be used as a condition in the rule
                       are placed higher in the $properties list. *)
                    listPosition = Lookup[
                        $propertyListPositions,
                        property,
                        ReturnFailure[
                            "ARCConditionsScoreMissingProperty",
                            "Unable to find the property " <> ToString[key] <> " in the property list."
                        ]
                    ];
                    
                    1 - (listPosition / Length[$propertyListPositions])
                )
            }
        ];
        
        (* A quality of 1 (top of the $properties list) gets converted to a qualityCenteredAt0 of 0. 
           A quality of 0 (bottom of the $properties list) gets converted to a qualityCenteredAt0 of -1. *)
        qualityCenteredAt0 = N[quality - 1]
    ]

(*!
    \function SquareButKeepSign
    
    \calltable
        SquareButKeepSign[value] '' Raises a number to the power of 2, but keeps its sign.
    
    Examples:
    
    SquareButKeepSign[0.5] === 0.25
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`SquareButKeepSign]
    
    \maintainer danielb
*)
Clear[SquareButKeepSign];
SquareButKeepSign[value_] :=
    If [value < 0,
        -(value ^ 2)
        ,
        value ^ 2
    ]

(*!
    \function SqrtButKeepSign
    
    \calltable
        SqrtButKeepSign[value] '' Sqrt but if the number is negative, takes the square root of the absolute value and then restores the negative sign.
    
    Examples:
    
    SqrtButKeepSign[9] === 3
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`SqrtButKeepSign]
    
    \maintainer danielb
*)
Clear[SqrtButKeepSign];
SqrtButKeepSign[value_] :=
    If [value < 0,
        -Sqrt[Abs[value]]
        ,
        Sqrt[value]
    ]

End[]

EndPackage[]

If [TrueQ[DevTools`$DebugLoad], Print["Done: Daniel`ARC`"]];