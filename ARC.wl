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

Begin["`Private`"]

Utility`Reload`SetupReloadFunction["Daniel`ARC`"];

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
    "FormMultiColorCompositeObjects" -> True,       (*< Whether connected single-color objects should be combined to form multi-color composite objects. If set to Automatic, the OtherScene option will be used to help make more informed decisions. *)
    "OtherScene" -> Null,                           (*< A parse of the scene this scene corresponds to. For example, if `scene` is an input scene, then OtherScene would be the output scene, and vice versa. If provided, we can use OtherScene to resolve some ambiguities about whether to chunk objects into composite objects. An association of the form <|"WithoutMultiColorCompositeObjects" -> ..., "WithMultiColorCompositeObjects" -> ...|> should be passed. *)
    "SingleColorObjects" -> Automatic               (*< If the single color objects have already been determined, they can be passed in to save time. *)
};
ARCParseScene[scene_ARCScene, opts:OptionsPattern[]] :=
    Module[{background, objects},
        
        background = ARCInferBackgroundColor[scene];
        
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
        
        <|
            "Background" -> background,
            "Width" -> ImageWidth[scene[[1]]],
            "Height" -> ImageHeight[scene[[1]]],
            "Objects" -> objects,
            "Scene" -> scene
        |>
    ]

ARCParseScene[scene_ARCScene, backgroundColor_Integer, OptionsPattern[]] :=
    Module[{objects, singleColorObjects, singleOrMultiColorObjects},
        
        (* Contiguous objects of a single color. *)
        objects = singleColorObjects = Replace[
            OptionValue["SingleColorObjects"],
            Automatic ->
                ReturnIfFailure@
                ARCImageRegionToObject[
                    ReturnIfFailure@
                    ARCContiguousImageRegions[
                        scene,
                        "Background" -> backgroundColor
                    ]
                ]
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
                    Sett[imageRegion, "Colors" -> Null]
                ] /@
                    ReturnIfFailure@
                    ARCImageRegionToObject[
                        ReturnIfFailure@
                        ARCContiguousImageRegions[
                            (* Make all non-background pixels white. *)
                            ARCToMonochrome[scene, backgroundColor],
                            "Background" -> backgroundColor
                        ]
                    ];
            
            (*ARCEcho[singleOrMultiColorObjects];*)
            
            objects =
                ReturnIfFailure@
                ARCFormCompositeObjects[
                    scene,
                    singleColorObjects,
                    singleOrMultiColorObjects,
                    "OtherScene" -> OptionValue["OtherScene"]
                ];
        ];
        
        (* For now we'll only infer rank property values on top level objects. *)
        objects = ARCInferRankProperties[objects];
        
        objects
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
ARCParseInputAndOutputScenes[inputScene_ARCScene, outputScene_ARCScene] :=
    Module[
        {
            inputSceneParseWithoutMultiColorCompositeObjects,
            inputSceneParseWithMultiColorCompositeObjects,
            inputSceneParsed,
            outputSceneParseWithoutMultiColorCompositeObjects,
            outputSceneParseWithMultiColorCompositeObjects,
            outputSceneParsed
        },
        
        (* Parse the input scene both with and without forming multi-color composite objects. *)
        
        inputSceneParseWithoutMultiColorCompositeObjects =
            ReturnIfFailure@
            ARCParseScene[inputScene, "FormMultiColorCompositeObjects" -> False];
        
        inputSceneParseWithMultiColorCompositeObjects =
            ReturnIfFailure@
            ARCParseScene[
                inputScene,
                "FormMultiColorCompositeObjects" -> True,
                "SingleColorObjects" -> inputSceneParseWithoutMultiColorCompositeObjects["Objects"]
            ];
        
        (* Parse the output scene both with and without forming multi-color composite objects. *)
        
        outputSceneParseWithoutMultiColorCompositeObjects =
            ReturnIfFailure@
            ARCParseScene[outputScene, "FormMultiColorCompositeObjects" -> False];
        
        outputSceneParseWithMultiColorCompositeObjects =
            ReturnIfFailure@
            ARCParseScene[
                outputScene,
                "FormMultiColorCompositeObjects" -> True,
                "SingleColorObjects" -> outputSceneParseWithoutMultiColorCompositeObjects["Objects"]
            ];
        
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
ARCImageRegionToObject[region_Association] :=
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
                "Shapes" -> Join[
                    ARCImageRotations[region["Image"]],
                    ARCClassifyShape[region["Image"]]
                ],
                "Colors" -> {region["Color"]},
                "Position" -> region["Position"]
            |>
        ]
    ]

ARCImageRegionToObject[regions_List] :=
    ARCImageRegionToObject /@ regions

ARCImageRegionToObject[ARCImageRegions[regions_List]] :=
    ARCImageRegionToObject[regions]

$properties = <|
    (* As of August 3 2022 we'll order "Colors" above "Image" so that when we find object
       references, we'll list Colors references above Image references, as they feel more
       general / better for forming rules. e.g. 05f2a901 *)
    "Colors" -> <|
        "Type" -> Repeated["Color"],
        "Type2" -> "Color"
    |>,
    "Image" -> <|
        "Type" -> "Image",
        "Type2" -> "Image"
    |>,
    (* Will exclude for now. *)
    (*"PixelPositions"*)
    "Shapes" -> <|
        "Type" -> Repeated["Shape"],
        "Type2" -> "Shape"
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
        "Type2" -> "PositionDimensionValue"
    |>,
    "X" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue"
    |>,
    "Y2" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue"
    |>,
    "X2" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue"
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
        "Type2" - "Area"
    |>,
    "FilledArea" -> <|
        "Type" -> "Integer",
        "Type2" - "Area"
    |>,
    "FilledProportion" -> <|
        "Type" -> "Integer",
        "Type2" - "AreaProportion"
    |>
|>;

$properties = ARCAddRankProperties[$properties];

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
Clear[ARCClassifyShape];
ARCClassifyShape[image_List] :=
    Module[{},
        DeleteDuplicates@
        ARCAddGeneralizeShapes@
        Flatten@
        {
            ARCClassifyPixel[image],
            ARCClassifyLine[image],
            ARCClassifySquare[image],
            ARCClassifyRectange[image],
            ARCClassifyL[image],
            Sequence @@
            ARCClassifyRotatedImage[image, ARCClassifyL],
            Sequence @@
            ARCClassifyFlippedImage[image, ARCClassifyL]
        }
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
                    KeyDrop[transform, "Function"]
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
                    assoc:temporaryAssociationSymbol[a___, "Colors" -> value_, b___] :> (
                        <|
                            a,
                            "Colors" -> Replace[
                                value,
                                list:{__Integer} :> Values[KeyTake[$integerToColor, list]],
                                {0, Infinity}
                            ],
                            b
                        |>
                    )
                },
                {0, Infinity},
                Heads -> True
            ],
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
    
    Example:
    
    (ARCInferBackgroundColor[ARCParseFile[#1]] & ) /@ $examples === $examples
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCInferBackgroundColor]
    
    \maintainer danielb
*)
Clear[ARCInferBackgroundColor];
ARCInferBackgroundColor[example_] :=
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
                colorCounts[[2, 1]] =!= 0
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
    Module[{singleColorObjectsByUUID, singleColorObjectsByPixelPosition, res, object, sceneImage, imageIn, image},
        
        singleColorObjectsByUUID = ObjectsByAttribute[singleColorObjects, "UUID"];
        singleColorObjectsByPixelPosition = ObjectsByAttribute[singleColorObjects, "PixelPosition"];
        
        res = Function[{objectIn},
            
            object = Sett[
                objectIn,
                "Components" ->
                    Lookup[
                        singleColorObjectsByUUID,
                        DeleteDuplicates@
                        Lookup[singleColorObjectsByPixelPosition, objectIn["PixelPositions"]]
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
                            "Colors" ->
                                (* We want to sort the values so that the object references created
                                   by functions like ARCMakeObjectsReferenceable can be turned into
                                   patterns and then matching objects selected. *)
                                Sort@
                                DeleteDuplicates@
                                Flatten[object["Components"][[All, "Colors"]]],
                            "Shapes" -> Join[
                                ARCImageRotations[image],
                                DeleteCases[Flatten[{object["Shapes"]}], KeyValuePattern["Image" -> _]]
                            ]
                        }
                    ]
                ];
                
                (* Decide whether to keep this as a composite object or not. *)
                If [And[
                        AssociationQ[OptionValue["OtherScene"]],
                        (* There isn't a composite object in the other scene that matches. *)
                        MissingQ[
                            ARCFindObjectMapping[
                                object,
                                OptionValue["OtherScene"]["WithMultiColorCompositeObjects"],
                                singleOrMultiColorObjects
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
                                        singleOrMultiColorObjects
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
ARCFindObjectMapping[example_Association] :=
    Module[{},
        ARCFindObjectMapping[example["Input"], example["Output"]]
    ]

ARCFindObjectMapping[scene1_ARCScene, scene2_ARCScene] :=
    Module[{parsedScenes},
        
        parsedScenes =
            ReturnIfFailure@
            ARCParseInputAndOutputScenes[
                scene1, scene2
            ];
        
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
                            ARCFindObjectMapping[object, outputObjects, inputObjects],
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
        
        (* UNDOME: Was issuing messages when running over all training examples. *)
        (* mapping =
            ReturnIfFailure@
            ARCGroupByOutputObject[mapping, outputObjects, input["Background"]]; *)
        
        mapping
        
        (* TODO: The return value doesn't indicate which objects exist in the output
                 but don't exist in the input. *)
    ]

ARCFindObjectMapping[object_Association, objectsToMapTo_List, inputObjects_List] :=
    Module[
        {
            matchingComponent,
            mappedToObject,
            possibleMatches,
            inputsObjectsOfType
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
        
        (* Look for component of larger object. *)
        mappedToObject = SelectFirst[
            objectsToMapTo,
            And[
                ListQ[#["Components"]],
                !MissingQ[
                    matchingComponent = SelectFirst[
                        #["Components"],
                        ARCSameQ[#, object] &
                    ]
                ]
            ] &
        ];
        
        If [!MissingQ[mappedToObject],
            (* We've found a composite object with a component that matches the object.
               We add an AddComponents transform key. *)
            Return[
                Rule[
                    Append[object, "OutputComponentUUID" -> matchingComponent["UUID"]],
                    ARCAddComponentsTransform[object, mappedToObject, matchingComponent]
                ],
                Module
            ]
        ];
        
        (* Look for an image transformation. *)
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
                    "Offset" -> ToXY[mappedToObject["Position"] - object["Position"]]
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
                       consider whether a transform has been applied to all of them. *)
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
                                    "Offset" -> ToXY[offset]
                                |>;
                                object -> mappedToObject
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
        
        (* Check if the object was replaced. *)
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
                                                "Position" -> <|"RelativePosition" -> mappedToObject["Position"] - object["Position"]|>
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
        
        object -> Missing["NotFound"]
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
SimplifyObjects[expr: Except[Rule[_String, _]], OptionsPattern[]] :=
    Module[{temporaryAssociationSymbol},
        Replace2[
            expr,
            temporaryAssociationSymbol,
            object:temporaryAssociationSymbol[___, "UUID" -> _, ___] :>
                KeyTake[Association @@ object, {"Image", "Position", "Transform", Sequence @@ OptionValue["ExtraKeys"]}],
            {0, Infinity}
        ]
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
    Module[{conclusion},
        KeyValueMap[
            Function[{key, value},
                KeyDrop[key, {"UUID"}] -> (
                    
                    conclusion = Replace[
                        Append[
                            Association@
                            (* Remove output keys that are the same in the input, since they aren't
                               being modified, and so our rules don't need to specify their values. *)
                            
                            Complement[
                                (* Remove inferrable keys from the output. All we really need are the
                                   core properties that can be used to infer the final output
                                   object. *)
                                Normal[
                                    KeyTake[
                                        Replace[
                                            value,
                                            (* If there is a single color, then we want to keep
                                               the Colors property, since knowing the color
                                               (and how it changes) could be used as a core
                                               property to construct the output object. But if
                                               there are multiple colors, then this isn't
                                               straightforward. *)
                                            assoc: KeyValuePattern["Colors" -> {_, __}] :>
                                                KeyDrop[assoc, "Colors"]
                                        ],
                                        {"Image", "Position", "Colors", "Transform"}
                                    ]
                                ],
                                Normal[key]
                            ],
                            <|
                                "Example" -> exampleIndex,
                                "Input" -> key
                            |>
                        ],
                        rule:<|"Example" -> _, "Input" -> _|> :> Prepend[rule, "Same" -> True]
                    ];
                    
                    Which[
                        And[
                            !MissingQ[conclusion["Image"]],
                            MatchQ[conclusion["Input", "Colors"], {_}],
                            MatchQ[value["Colors"], {_}],
                            conclusion["Input", "Colors"] === value["Colors"]
                        ],
                            conclusion = Prepend[conclusion, "Shape" -> ARCToMonochrome[conclusion["Image"], $nonImageColor]];
                            conclusion = KeyDrop[conclusion, "Image"],
                        And[
                            MatchQ[conclusion["Input", "Colors"], {_}],
                            MatchQ[value["Colors"], {_}],
                            conclusion["Input", "Colors"] =!= value["Colors"],
                            ARCToMonochrome[conclusion["Image"], $nonImageColor] === ARCToMonochrome[value["Image"], $nonImageColor]
                        ],
                            (* The shape is staying the same and the color is changing, so drop
                               the "Image" key. *)
                            conclusion = KeyDrop[conclusion, "Image"]
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
ARCFindRules[examplesIn_List] :=
    ARCCleanRules@
    Module[
        {
            examples = examplesIn,
            referenceableInputObjects,
            referenceableOutputObjects,
            objectMappings,
            preRules,
            rules,
            transform,
            mappedInputObjects
        },
        
        examples =
            Function[{example},
                ReturnIfFailure@
                ARCParseInputAndOutputScenes[
                    example["Input"],
                    example["Output"]
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
            Return[
                {
                    <||> -> <|"Transform" -> transform[[1]]|>
                },
                Module
            ]
        ];
        
        (*ARCEcho[referenceableInputObjects];*)
        
        inputObjectsNeedingMapping = preRules[[All, 2, "Input", "UUID"]];
        
        (*Echo[Length[inputObjectsNeedingMapping]];*)
        
        (*EchoIndented[Counts[preRules[[All, 2, "Transform"]]]];*)
        
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
                        Return[rules, Module]
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
                    (*If [TrueQ[ARCGoodRulesQ[rules, examples]],
                        Return[rules, Module]
                    ];*)
                ] /@ DeleteCases[
                    (* UNDOME *)
                    If [False,
                        {"Shapes"}
                        ,
                        Prepend[
                            Keys[$properties],
                            (* See if one rule can be used to transform all objects. *)
                            None
                        ]
                    ],
                    Alternatives[
                        "PixelPositions",
                        (* TODO *)
                        "Dimensions"
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
                    Return[
                        Join[
                            ruleFindings[rankPropertyName, "Rules"],
                            ruleFindings[rankPropertyAttributes["InverseRankProperty"], "Rules"]
                        ],
                        Module
                    ]
                ];
            ],
            Select[$properties, TrueQ[#["Rank"]] && !TrueQ[#["InverseRank"]] &]
        ];
        
        Reverse@
        SortBy[
            ruleFindings,
            Length[#["MappedInputObjects"]] &
        ]
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
        
        groupedByPattern = Function[{conclusionGroup},
            
            {conclusion, unhandled} =
                ReturnIfFailure@
                ARCFindRules[
                    conclusionGroup,
                    referenceableInputObjects,
                    examples,
                    unhandled,
                    mutuallyExclusiveRules
                ];
            
            conclusion
            
        ] /@ groupedByPattern;
        
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
        
        If [Length[unhandled] > 0 && property =!= None,
            
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
        
        (*ARCEcho[ARCSimplifyRules[rules]];*)
        
        (* Perhaps we should return not just the rules here, but also `unhandled` so that:
           1) Downstream code can more easily check whether there were any unhandled cases. 
           2) Downstream code can more easily take the unhandled cases and do more processing
              to try to find rules. *)
        rules
    ]

(* `conclusionGroup` is a group of conclusion RHSs that might share the fact that the
   corresponding input objects had the same value for some property, etc. *)
ARCFindRules[conclusionGroup_List, referenceableInputObjects_Association, examples_List, unhandledIn_List, mutuallyExclusiveRules: True | False] :=
    Module[
        {
            unhandled = unhandledIn,
            conclusion,
            theseExamples,
            exampleInstances
        },
        
        conclusion = Missing[];
        groupedByConclusion = GroupBy[
            conclusionGroup,
            Function[KeyDrop[#, {"Example", "Input"}]]
        ];
        
        (*ARCEcho[SimplifyObjects[groupedByConclusion]];*)
        (*ARCEcho[groupedByConclusion];*)
        
        Which[
            Length[groupedByConclusion] > 1,
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
                conclusion = KeyDrop[groupedByConclusion[[1, 1]], {"Example", "Input"}]
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
            If [conclusion["ExampleCount"] < 2,
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
                        conclusionGroup
                    ]
            ]
            ,
            (* A workable rule was found. *)
            If [!TrueQ[mutuallyExclusiveRules],
                (* In this mode, `uhandled` starts out containing all RHS, and each time we find
                   a rule, we remove any RHSs that that rule can handle. *)
                unhandled = Complement[unhandled, conclusionGroup]
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
ARCApplyRules[scene_ARCScene, rules_List] :=
    Module[{parsedScene},
        
        parsedScene =
            ReturnIfFailure[ARCParseScene[scene]];
        
        ARCRenderScene@
        Sett[
            parsedScene,
            "Objects" ->
                Function[{object},
                    ReturnIfFailure@
                    ARCApplyRules[object, rules, parsedScene]
                ] /@ parsedScene["Objects"]
        ]
    ]

ARCApplyRules[objectIn_Association, rules_List, scene_Association] :=
    Module[{object = objectIn},
        
        Function[{rule},
            object = Replace[
                ReturnIfFailure[ARCApplyRules[object, rule, scene]],
                Nothing :> Return[Nothing, Module]
            ]
        ] /@ rules;
        
        KeyTake[object, {"Image", "Position"}]
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
                        KeyValuePattern @@
                        Replace[
                            Normal[pattern],
                            HoldPattern[Rule]["Shapes", shape_] :> (
                                (* We want the object to have this shape as one of its shapes. *)
                                "Shapes" -> {___, shape, ___}
                            ),
                            {1}
                        ]
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
    Module[{objectOut = <||>},
        
        KeyValueMap[
            Function[{key, value},
                objectOut =
                    Replace[
                        ReturnIfFailure@
                        ARCApplyConclusion[
                            key,
                            Replace[
                                ReturnIfFailure@
                                ResolveValues[value, objectIn, scene],
                                (* Curiously Activate[...] doesn't seem to work. *)
                                Inactive[h_] :> h, {0, Infinity},
                                Heads -> True
                            ],
                            objectIn,
                            objectOut,
                            scene
                        ],
                        Nothing :> Return[Nothing, Module]
                    ];
            ],
            conclusion
        ];
        
        If [MissingQ[objectOut["Position"]],
            objectOut["Position"] = objectIn["Position"]
        ];
        
        objectOut
    ]

ARCApplyConclusion[key:"Transform", value:KeyValuePattern["Type" -> "Delete"], objectIn_Association, objectOut_Association, scene_Association] :=
    Nothing

ARCApplyConclusion[key:"Position", KeyValuePattern["RelativePosition" -> relativePosition_], objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        key -> objectIn["Position"] + relativePosition
    ]

ARCApplyConclusion[key:"Shape", value_, objectIn_Association, objectOut_Association, scene_Association] :=
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
             Sett[
                component,
                "Image" -> ReturnIfFailure[ARCInferObjectImage[component]]
             ]
        ] /@ finalObject["Components"];
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
            
            posY = object["Position"][[1]];
            posX = object["Position"][[2]];
            
            image = object["Image"][[1]];
            
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

ARCTestRules[ARCExample[example: KeyValuePattern[{"Train" -> _, "Test" -> _}]], rules_List] :=
    Module[{test, train, allResults, failures, successes},
        
        train = ReturnIfFailure[ARCTestRules[example["Train"], rules]];
        test = ReturnIfFailure[ARCTestRules[example["Test"], rules]];
        
        allResults = Join[test, train];
        
        failures = Select[allResults, #["Outcome"] =!= "Success" &];
        successes = Select[allResults, #["Outcome"] === "Success" &];
        
        <|
            "File" -> example["File"],
            "PassPercentage" ->
                Round[
                    Length[successes] / Length[allResults],
                    0.1
                ],
            "Failures" -> failures,
            "Successes" -> successes,
            "Train" -> train,
            "Test" -> test
        |>
    ]

ARCTestRules[example_Association, rules_List] :=
    Module[{},
        VerificationTest[
            ARCApplyRules[example["Input"], rules],
            example["Output"]
        ]
    ]

ARCTestRules[examples_List, rules_List] :=
    Function[{example},
        ARCTestRules[example, rules]
    ] /@ examples

(*!
    \function ARCTest
    
    \calltable
        ARCTest[file] '' Tries to find a set of rules for the training examples in the given file, and if successful, tests the set of rules on the training and test data, returning the results.
    
    \maintainer danielb
*)
Clear[ARCTest];
ARCTest[example_ARCExample] :=
    Module[{rules},
        
        rules =
            ReturnIfFailure@
            ARCFindRules[example["Train"]];
        
        ARCTestRules[
            example,
            rules
        ]
    ]

ARCTest[file_String] :=
    Module[{},
        ARCTest[
            ReturnIfFailure@
            ARCParseFile[file]
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
ARCWorkingQ[file_String] :=
    Module[{},
        MatchQ[
            ARCTest[file],
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
        ] /@ Range[Abs[angle / 90]];
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
ARCMakeObjectsReferenceable[parsedScenes_List] :=
    Module[{objectsForAllExamples, usablePropertiesAndValues, valueCounts, uniqueValues, countsForValue, countsForNotValue, usablePropertyAndValues},
        
        objectsForAllExamples = parsedScenes[[All, "Objects"]];
        
        usablePropertiesAndValues = Association[
            Function[{property},
                property -> Flatten[
                    valueCounts = Function[{objects},
                        Counts[
                            Replace[
                                objects[[All, property]],
                                lists:{Repeated[_List]} :> (Sort /@ lists)
                            ]
                        ]
                    ] /@ objectsForAllExamples;
                    
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
                            ],
                            countsForNotValue = (Total[#] - Replace[#[value], _Missing -> 0]) & /@ valueCounts;
                            If [And[
                                    FreeQ[countsForValue, _Missing],
                                    TrueQ[AllTrue[countsForValue, GreaterThan[1]]],
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
        
        ARCReferenceableObjectProperties[objectReferences, parsedScenes]
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
    GetObject[object, parsedScene["Objects"], namedObjects]

GetObject[object_Association, objects_List, namedObjects_Association : <||>] :=
    Module[{},
        Replace[
            Cases[
                objects,
                KeyValuePattern[Normal[object]]
            ],
            {
                {matchingObject_} :> matchingObject,
                {} :> ReturnFailure[
                    "ObjectNotFound",
                    "The object wasn't found in the scene.",
                    "Object" -> object
                ],
                multipleObjects:{_, __} :> ReturnFailure[
                    "AmbiguousObject",
                    "Multiple matching objects were found, but only 1 match was expected.",
                    "ObjectPattern" -> object,
                    "MatchingObjects" -> objects
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
            parsedScenes
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
ARCReferenceableObjectProperties[objects_List, parsedScenes_List] :=
    Module[{res, objectsOfType, propertyValues, constantProperties},
        
        (* What property values are consistent for all objects and thus not worth including
           on RHSs? *)
        constantProperties = Select[
            Keys[$properties],
            Length[DeleteDuplicates[Flatten[parsedScenes[[All, "Objects"]]][[All, #]]]] === 1 &
        ];
        
        res = Function[{objectReference},
            
            (* Find the objects of this type from the given scene. *)
            objectsOfType = Function[{scene},
                object =
                    ReturnIfFailure@
                    GetObject[objectReference, scene]
            ] /@ parsedScenes;
            
            (* Find the commonalities between these objects. *)
            objectReference -> Association[
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
    "Move" -> <|
        (* MinimalPropertySets are sets of properties that can fully specify the transform
           given that you also know the input object. For example, a move can be specified
           either by just the Offset, or by just the Position. *)
        "MinimalPropertySets" -> {
            {
                "Offset" -> <|
                    "SubProperties" -> {"Y", "X"}
                |>
            },
            {
                "Position" -> <|
                    "SubProperties" -> {
                        "Y" -> <|
                            "ObjectGet" -> Function[#["Y"]]
                        |>,
                        "X" -> <|
                            "ObjectGet" -> Function[#["X"]]
                        |>
                    }
                |>
            },
            {
                "BlockedBy" -> <||>
            }
        }
    |>,
    "AddComponents" -> <|
        "MinimalPropertySets" -> {
            {
                "Components" -> <|
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
                        |>
                    },
                    "MinimalPropertySets" -> {
                        {"Image", "Position"},
                        {"Shapes", "Width", "Height", "Color", "Position"}
                    }
                |>
            }
        }
    |>
|>;
Clear[ARCGeneralizeConclusions];
ARCGeneralizeConclusions[conclusions_List, referenceableInputObjects_Association, examples_List] :=
    Module[
        {
            transformType,
            transformDetails,
            property,
            rule,
            minimalPropertySets,
            pruned,
            uniqueValue,
            propertiesNeeded,
            workableTransforms
        },
        
        (* Always a transform of the same type? *)
        If [AllTrue[
                conclusions,
                MatchQ[#, KeyValuePattern["Transform" -> type_]] &
            ],
            transformType = conclusions[[1, "Transform", "Type"]];
            transformDetails = ReturnFailureIfMissing[
                $transformTypes[transformType],
                "MissingTransformationDetails",
                "$transformTypes doesn't specify details for the transform type " <> transformType <> "."
            ];
            workableTransforms = Function[{propertySet},
                rule =
                ReturnIfFailure@
                Module[{},
                    rule = <||>;
                    Function[{propertyNameAndAttributes},
                        property =
                            Replace[propertyNameAndAttributes, HoldPattern[Rule][propertyName_, _] :> propertyName];
                        If [Length[uniqueValue = DeleteDuplicates[conclusions[[All, "Transform", property]]]] === 1,
                            If [MissingQ[uniqueValue[[1]]],
                                rule = Missing[]
                                ,
                                (* This property has a predictable value. Set it. *)
                                rule[property] = uniqueValue[[1]];
                                If [ListQ[minimalPropertySets = propertyNameAndAttributes[[2]]["MinimalPropertySets"]],
                                    (* But this property has minimal property sets defined, so
                                       we prune which transform properties we return so that
                                       they are minimized. *)
                                    Block[{},
                                        Function[{minimalPropertySet},
                                            (* TODO: We're pruning the association(s) at their
                                                     top level, but $transformTypes might also
                                                     defined nested minimal property sets, so we
                                                     may need to factor this pruning logic out into
                                                     a function and make it recursive. *)
                                            pruned = KeyTake[
                                                rule[property],
                                                minimalPropertySet
                                            ];
                                            If [Or[
                                                    (* Single association that has these properties
                                                       defined? *)
                                                    And[
                                                        !ListQ[pruned],
                                                        Keys[pruned] === minimalPropertySet
                                                    ],
                                                    (* List of associations that all have these
                                                       properties defined? *)
                                                    And[
                                                        ListQ[pruned],
                                                        DeleteDuplicates[Keys /@ pruned] === {minimalPropertySet}
                                                    ]
                                                ],
                                                rule[property] = pruned;
                                                Return[Null, Block]
                                            ]
                                        ] /@ minimalPropertySets
                                    ];
                                ];
                            ]
                            ,
                            (* This property doesn't have a predictable value, so we'll see if we
                               can determine how to produce it dynamically. *)
                            rule = Append[
                                rule,
                                If [And[
                                        ListQ[conclusions[[1, "Transform", property]]],
                                        ListQ[propertyNameAndAttributes[[2, "SubProperties"]]]
                                    ],
                                    (* This property's values are actually lists of
                                       nested objects, so we need to process them
                                       specially. *)
                                    valueCounts = Length /@ conclusions[[All, "Transform", property]];
                                    If [Length[DeleteDuplicates[valueCounts]] =!= 1,
                                        (* Not all lists are of the same size, so for now we'll
                                           give up on this case. *)
                                        Return[Missing["NotImplemented", "ListsOfDifferingSizes"], Module]
                                        ,
                                        Replace[
                                            Function[{listPosition},
                                                Replace[
                                                    ReturnIfFailure@
                                                    ARCGeneralizeConclusionValue[
                                                        {property},
                                                        (* Attributes *)
                                                        propertyNameAndAttributes[[2]],
                                                        Function[{conclusion},
                                                            Prepend[
                                                                KeyTake[conclusion, {"Example", "Input"}],
                                                                "Value" -> conclusion[["Transform", property, listPosition]]
                                                            ]
                                                        ] /@ conclusions,
                                                        referenceableInputObjects,
                                                        examples
                                                    ],
                                                    Nothing | _Missing :> Return[Missing["NotFound"], Module]
                                                ]
                                            ] /@ Range[valueCounts[[1]]],
                                            list: {Repeated[_ -> _]} :> property -> list[[All, 2]]
                                        ]
                                    ]
                                    ,
                                    Replace[
                                        ReturnIfFailure@
                                        ARCGeneralizeConclusionValue[
                                            {property},
                                            (* Attributes *)
                                            propertyNameAndAttributes[[2]],
                                            Function[{conclusion},
                                                Prepend[
                                                    KeyTake[conclusion, {"Example", "Input"}],
                                                    "Value" -> conclusion["Transform", property]
                                                ]
                                            ] /@ conclusions,
                                            referenceableInputObjects,
                                            examples
                                        ],
                                        Nothing | _Missing :> Return[Missing["NotFound"], Module]
                                    ]
                                ]
                            ]
                        ]
                    ] /@ propertySet;
                    rule
                ];
                If [!MissingQ[rule],
                    <|
                        "Transform" -> <|
                            "Type" -> transformType,
                            rule
                        |>
                    |>
                    ,
                    Nothing
                ]
            ] /@ transformDetails["MinimalPropertySets"];
            
            If [MatchQ[workableTransforms, {__}],
                Return[
                    ARCChooseBestTransform[workableTransforms],
                    Module
                ]
            ]
        ];
        
        (* What properties do we need to infer? *)
        propertiesNeeded = Keys /@ KeyDrop[conclusions, {"Example", "Input"}];
        If [MatchQ[propertiesNeeded, {Repeated[{property_String}]}],
            (* There is always just one property that we need to infer. *)
            property = propertiesNeeded[[1, 1]];
            Replace[
                ReturnIfFailure@
                ARCGeneralizeConclusionValue[
                    {property},
                    Automatic,
                    Function[{conclusion},
                        Prepend[
                            KeyTake[conclusion, {"Example", "Input"}],
                            "Value" -> conclusion[property]
                        ]
                    ] /@ conclusions,
                    referenceableInputObjects,
                    examples
                ],
                {
                    rule_Rule :> Return[<|rule|>, Module],
                    Nothing :> Return[Missing["NotFound"], Module]
                }
            ]
        ];
        
        Missing["NotFound"]
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
ToXY[positionOrOffset: {y_, x_}] :=
    <|"Y" -> y, "X" -> x|>

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
        ARCGeneralizeConclusionValue[propertyPath, propertyAttributes, conclusions, referenceableInputObjects, examples] '' Given a list of conclusion values that we'd like to generalize for a given property (or sub-property), attempts to determine how to dynamically produce the given values from the input objects.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGeneralizeConclusionValue]
    
    \maintainer danielb
*)
Clear[ARCGeneralizeConclusionValue];
ARCGeneralizeConclusionValue[propertyPath_List, propertyAttributes: _Association | Automatic, conclusions_List, referenceableInputObjects_Association, examples_List] :=
    (*EchoTag["ARCGeneralizeConclusionValue result" -> propertyPath]@*)
    Module[
        {
            uniqueValue,
            subProperties,
            subPropertySets,
            getFunction,
            inputObjectValues
        },
        
        XEcho["propertyPath" -> propertyPath];
        
        values = conclusions[[All, "Value"]];
        
        If [!FreeQ[values, _Missing],
            Return[Missing["NotInferrable", "RequiredValuesMissing"], Module]
        ];
        
        If [TrueQ[propertyAttributes["ClassList"]],
            (* The values of this property are lists of classes that the object is a member
               of, so what we need to do is check if all of the objects share a common
               intersection of those classes. *)
            Replace[
                Intersection @@ values,
                intersection:{__} :> Return[
                    Last[propertyPath] ->
                        (* Because our conclusion will be used to generate a scene,
                           I think we can get away with just keeping the most specific
                           classes. e.g. ifmyulnv8-shape *)
                        ARCPruneAlternatives[
                            intersection,
                            Last[propertyPath],
                            "Most" -> "Specific"
                        ],
                    Module
                ]
            ]
            ,
            If [Length[uniqueValue = DeleteDuplicates[values]] === 1,
                (* This property has a predictable value. *)
                Return[Last[propertyPath] -> uniqueValue[[1]], Module]
            ]
        ];
        
        If [AssociationQ[conclusions[[1, "Value"]]],
            
            (* The values are actually associations, so we will iterate over each of their
               keys and try to infer them separately. *)
            subPropertySets =
                If [ListQ[propertyAttributes["SubProperties"]],
                    (* $transformTypes specifies which sub-properties we need to be able to
                       infer, so we loop over them. *)
                    subProperties = propertyAttributes["SubProperties"];
                    If [ListQ[propertyAttributes["MinimalPropertySets"]],
                        (* There are different combinations of the properties that can be used
                           to achieve a minimally specifying set of properties. *)
                        Function[{minimalPropertySet},
                            KeyTake[
                                subProperties,
                                minimalPropertySet
                            ]
                        ] /@ propertyAttributes["MinimalPropertySets"]
                        ,
                        {
                            subProperties
                        }
                    ]
                    ,
                    If [!MissingQ[propertyAttributes["SubProperties"]],
                        ReturnFailure[
                            "InvalidSubProperties",
                            "The SubProperties specification is invalid. It should be a list.",
                            "SubProperties" -> propertyAttributes["SubProperties"]
                        ]
                        ,
                        (* $transformTypes doesn't specify which sub-properties we need to be able
                           to infer -- which it really should. As a fallback, we'll just try iterating
                           over the keys that are specified in this conclusion association. *)
                        {
                            Keys[values[[1]]]
                        }
                    ]
                ];
            
            Last[propertyPath] ->
                ReturnIfFailure@
                ReturnIfMissing@
                Module[{},
                    Function[{theseSubProperties},
                        ReturnIfNotMissing@
                        ReturnIfFailure@
                        arcGeneralizeConclusionValueHelper[
                            propertyPath,
                            If [AssociationQ[theseSubProperties],
                                Normal[theseSubProperties]
                                ,
                                (* Don't call Normal in this case, since if theseSubProperties is
                                   a list of key value pairs where the values are associations,
                                   calling Normal in that case actually changes the value
                                   associations to lists, which we don't want. *)
                                theseSubProperties
                            ],
                            conclusions,
                            referenceableInputObjects,
                            examples
                        ]
                    ] /@ subPropertySets;
                    Missing["NotInferrable", propertyPath]
                ]
            ,
            (* The values are not associations -- they are just normal values that we will now
               try to infer from inputs. *)
            
            getFunction =
                If [propertyAttributes === Automatic,
                    Function[#[Last[propertyPath]]]
                    ,
                    propertyAttributes["ObjectGet"]
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
                        values === inputObjectValues,
                            (* The first thing we should check is to ensure that these
                               sub-properties actually change from the values they have
                               in the inputs. If not, we can actually just drop this key
                               from our rule conclusion. (Actually, for nested transform
                               properties, like a component in an AddComponents, I don't
                               think we'd actually want to _drop_ these keys. Wouldn't
                               it be better to replace them with something like:
                               ObjectValue["InputObject"],
                               or ObjectValue["InputObject", "MyProperty"]? *)
                            Return[Nothing, Module],
                        Length[differences = DeleteDuplicates[values - inputObjectValues]] === 1,
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
                                Last[propertyPath] -> Inactive[Plus][
                                    ObjectValue[
                                        "InputObject",
                                        Last[propertyPath]
                                    ],
                                    First[differences]
                                ],
                                Module
                            ]
                    ]
            ];
            
            (* Check whether any of the referenceable objects can be used to infer the values. *)
            Last[propertyPath] ->
                ReturnIfMissing@
                ReturnIfFailure@
                ARCGeneralizeConclusionValueUsingReferenceableObjects[
                    KeyTake[conclusions, {"Value", "Example"}],
                    referenceableInputObjects,
                    examples
                ]
        ]
    ]

(*!
    \function arcGeneralizeConclusionValueHelper
    
    \calltable
        arcGeneralizeConclusionValueHelper[propertyPath, subProperties, conclusions, referenceableInputObjects, examples] '' Helper for ARCGeneralizeConclusionValue that considers a specific set of sub properties.
    
    Examples:
    
    arcGeneralizeConclusionValueHelper[propertyPath, subProperties, conclusions, referenceableInputObjects, examples] === TODO
    
    \maintainer danielb
*)
Clear[arcGeneralizeConclusionValueHelper];
arcGeneralizeConclusionValueHelper[propertyPath_List, subProperties_List, conclusions_List, referenceableInputObjects_Association, examples_List] :=
    Module[
        {
            subPropertyAlternatives,
            subPropertyResult,
            successForSubPropertyAlternatives
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
                        propertyName_String :> propertyName -> <||>,
                        {1}
                    ];
                
                subPropertyResult = Block[{},
                    successForSubPropertyAlternatives = False;
                    KeyValueMap[
                        Function[{subPropertyName, subPropertyAttributes},
                            Replace[
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
                                ],
                                res:Except[_Missing] :> (
                                    (* We found an alternative subproperty that we can infer.
                                        For now we'll assume we want to use it rather than
                                        considering other subproperties. *)
                                    successForSubPropertyAlternatives = True;
                                    Return[res, Block]
                                )
                            ]
                        ],
                        subPropertyAlternatives
                    ]
                ];
                
                If [TrueQ[successForSubPropertyAlternatives],
                    subPropertyResult
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
        ARCGeneralizeConclusionValueUsingReferenceableObjects[values, referenceableObjects, examples] '' Checks whether any of the referenceable objects can be used to infer the given values.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGeneralizeConclusionValueUsingReferenceableObjects]
    
    \maintainer danielb
*)
Clear[ARCGeneralizeConclusionValueUsingReferenceableObjects];
ARCGeneralizeConclusionValueUsingReferenceableObjects[values_List, referenceableObjects_Association, examples_List] :=
    Module[{theseExamples, objects, valuesToInfer, property},
        
        theseExamples = examples[[values[[All, "Example"]]]];
        
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
        
        referenceableValues =
            Function[{reference},
                
                objects = Function[{example},
                    ReturnIfFailure@
                    GetObject[reference, example["Input"]]
                ] /@ theseExamples;
                
                property =
                    ARCFindPropertyToInferValues[
                        objects,
                        valuesToInfer
                    ];
                
                If [!MissingQ[property],
                    ObjectValue[reference[[1]], property]
                    ,
                    Nothing
                ]
                
            ] /@ Keys[referenceableObjects];
        
        (* Echo[referenceableObjects -> referenceableValues]; *)
        
        If [MatchQ[referenceableValues, {__}],
            (* TODO: Instead of just choosing the first one, choose the best one. *)
            First[referenceableValues]
            ,
            Missing["NotFound"]
        ]
    ]

(*!
    \function ARCFindPropertyToInferValues
    
    \calltable
        ARCFindPropertyToInferValues[objects, values] '' Given a list of objects and a corresponding list of values that need to be inferred, returns the property that can be used to perform the inference, or Missing if none found.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFindPropertyToInferValues]
    
    \maintainer danielb
*)
Clear[ARCFindPropertyToInferValues];
ARCFindPropertyToInferValues[objects_List, values_List] :=
    Module[{transposedObjects, matchingProperties, values2},
        
        transposedObjects = AssociationTranspose[
            KeyDrop[
                objects,
                {"UUID"}
            ]
        ];
        
        matchingProperties = Select[
            transposedObjects,
            # === values &
        ];
        
        If [Length[matchingProperties] > 0,
            (* TODO: What to do if there are multiple properties that could
                     be used? *)
            First[Keys[matchingProperties]]
            ,
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
ResolveValues[expr_, inputObject_Association, scene_Association] :=
    Module[{resolvedObject, propertyValue, head = None},
        Replace[
            expr,
            {
                (* Resolve an object's value. *)
                ObjectValue[pattern_, property_] :> (
                    
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
        ]
    ]

(*!
    \function ARCTry
    
    \calltable
        ARCTry[file, trainOrTest, exampleIndex] '' Given an ARC example, tries finding transformation rules and then applying them to the given example.
    
    \maintainer danielb
*)
Clear[ARCTry];
ARCTry[file_String, trainOrTest_String, exampleIndex_Integer] :=
    Module[{parsedFile, rules, output, successQ},
        
        parsedFile = ReturnIfFailure[ARCParseFile[file]];
        
        ReturnIfDifferingInputAndOutputSize[parsedFile];
        
        rules =
            ReturnIfFailure@
            ARCFindRules[parsedFile["Train"]];
        
        If [ListQ[rules],
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
    Module[{objectWidth, objectHeight, leftoverImage, processedPartsOfImage, subImagesFound},
        
        objectWidth = ImageWidth[object["Image"][[1]]];
        objectHeight = ImageHeight[object["Image"][[1]]];
        
        leftoverImage = object["Image"][[1]];
        
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
                        
                        <|"Object" -> subImage[[2]], "Position" -> subImagePosition|>
                        ,
                        Nothing
                    ]
                ] /@ subImagePositions
                ,
                Nothing
            ]
            
        ] /@ subImages;
        
        subImagesFound = Flatten[subImagesFound];
        
        Which[
            Length[subImagesFound] > 0,
                Join[
                    (* This object contains one or more notable sub-images, so we'll create
                       independent objects for them. *)
                    Function[{subImageFound},
                        Sett[
                            ARCRepositionObject[
                                subImageFound["Object"],
                                object["Position"] + subImageFound["Position"] - {1, 1}
                            ],
                            "UUID" -> CreateUUID[]
                        ]
                    ] /@ subImagesFound
                    ,
                    If [DeleteDuplicates[Flatten[leftoverImage]] =!= {0},
                        (* After removing the sub-images, there are still pixels left, so we will
                           generate object(s) for the leftover pixels. *)
                        (*ARCEcho["leftoverImage" -> ARCScene[leftoverImage]];*)
                        ARCParseScene[
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
ARCInferObjectProperties[object_Association] :=
    Module[{width, height, y, x, area, filledArea},
        
        width = ImageWidth[object["Image"]];
        height = ImageHeight[object["Image"]];
        
        Join[
            object,
            <|
                "Y" -> (y = object["Position"][[1]]),
                "X" -> (x = object["Position"][[2]]),
                "Y2" -> y + height - 1,
                "X2" -> x + width - 1,
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
ARCRepositionObject[object_Association, position_List] :=
    Module[{positionDifference},
        
        positionDifference = position - object["Position"];
        
        ARCInferObjectProperties@
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
                            component["Position"] + positionDifference
                        ]
                    ] /@ object["Components"]
                    ,
                    Nothing
                ]
            }
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
ARCToMonochrome[image_, backgroundColor_Integer] :=
    Replace[image, Except[backgroundColor, _Integer] :> 10, {3}]

ARCToMonochrome[ARCScene[image_], backgroundColor_Integer]
    ARCScene[ARCToMonochrome[image], backgroundColor]

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
        ReturnIfDifferingInputAndOutputSize[parsedFile] '' Given a parsed file, returns Missing if the input and output grid sizes don't match.
    
    Examples:
    
    ReturnIfDifferingInputAndOutputSize[ReturnIfFailure[ARCParseFile["007bbfb7"]]]
    
    ===
    
    Missing["NotImplemented", "DifferingInputAndOutputSize"]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ReturnIfDifferingInputAndOutputSize]
    
    \maintainer danielb
*)
Clear[ReturnIfDifferingInputAndOutputSize];
ReturnIfDifferingInputAndOutputSize[parsedFile_ARCExample] :=
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
    ] /@ parsedFile["Train"];

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
                        StringJoin[propertyName, "Rank"] -> <|
                            "Type" -> "Integer",
                            "Rank" -> True,
                            "RankOf" -> propertyName,
                            "InverseRankProperty" -> propertyName <> "InverseRank"
                        |>,
                        StringJoin[propertyName, "InverseRank"] -> <|
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
                        ARCTransformScore[transform["Transform"]]
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
        ARCTransformScore[transform] '' Given a transform, returns a score to quantify how good it seems.
    
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
ARCTransformScore[transform_Association] :=
    Module[{score = 0},
        
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
ARCGroupByOutputObject[mapping_Association, outputObjects_List, backgroundColor_Integer] :=
    Module[{outputObjectsByUUID, outputObjectsByUUID2},
        
        outputObjectsByUUID = ObjectsByAttribute[Values[mapping], "UUID"];
        
        (* If there's a many-to-one mapping, the multiple output RHSs will have their
           Position property set to a RelativePosition which will not be consistent,
           so we need to map back to the original output object in that case. *)
        outputObjectsByUUID2 = ObjectsByAttribute[outputObjects, "UUID"];
        
        Association@
        Replace[
            Reverse /@
            Normal@
            GroupBy[
                Normal[mapping],
                Function[{item}, Last[item]["UUID"]] -> First
            ],
            {
                HoldPattern[Rule][{singleItem_}, outputObjectUUID_] :> (singleItem -> outputObjectsByUUID[outputObjectUUID]),
                HoldPattern[Rule][lhsGroup:{_, __}, outputObjectUUID_] :> Rule[
                    ARCSetGroupProperties[lhsGroup, backgroundColor],
                    outputObjectsByUUID2[outputObjectUUID]
                ]
            },
            {1}
        ]
    ]

(*!
    \function ARCSetGroupProperties
    
    \calltable
        ARCSetGroupProperties[components] '' Given a list of a components, forms a group object and sets its various properties.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSetGroupProperties]
    
    \maintainer danielb
*)
Clear[ARCSetGroupProperties];
ARCSetGroupProperties[components_List, backgroundColor_Integer] :=
    Module[{position, y1, x1, y2, x2},
        
        position = {
            y1 = Min[components[[All, "Y"]]],
            x1 = Min[components[[All, "X"]]]
        };
        y2 = Max[components[[All, "Y"]]];
        x2 = Max[components[[All, "X"]]];
        
        ARCInferObjectProperties@
        <|
            "Type" -> "Group",
            "UUID" -> CreateUUID[],
            "Image" -> ARCScene[
                ARCRenderScene[
                    <|
                        "Background" -> backgroundColor,
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
        |>
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
        ARCAddComponentsTransform[inputObject, outputObject, outputComponent] '' Given an input object and the output object it maps to, as well as the output component it corresponds with, produces an output object with an AddComponents transform.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCAddComponentsTransform]
    
    \maintainer danielb
*)
Clear[ARCAddComponentsTransform];
ARCAddComponentsTransform[inputObject_Association, outputObject_Association, outputComponent_Association] :=
    Module[{newComponents},
        
        newComponents = DeleteCases[outputObject["Components"], outputComponent];
        
        Append[
            outputObject,
            "Transform" -> <|
                "Type" -> "AddComponents",
                "Components" -> Function[{component},
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
                            InferColor["Color" -> component]
                        }
                    ]
                ] /@ KeyTake[newComponents, {"Image", "Position", "Shapes", "Colors", "Width", "Height"}]
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
                        {y_, x_} :> {y - object["Y"], x - object["X"]}
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
            (* How many training tasks are currently passing. *)
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
        |>
    }

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
ARCCleanRules[rules_List] :=
    Module[{},
        Replace[
            rules,
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
            {0, Infinity},
            Heads -> True
        ]
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
    FailureDetails["ARCInferObjectImageFailure"]@
    Module[{},
        
        ReturnIfNotMissing[object["Image"]];
        
        ReturnFailureIfMissing[object["Width"]];
        ReturnFailureIfMissing[object["Height"]];
        ReturnFailureIfMissing[object["Color"]];
        ReturnFailureIfMissing[object["Shapes"]];
        
        If [!MatchQ[object["Shapes"], {_, ___}],
            ReturnFailure[
                "ARCInferObjectImageFailure",
                "The Shapes must be specified as a list of one or more shapes.",
                "Shapes" -> object["Shapes"],
                "Object" -> object
            ]
        ];
        
        ARCInferObjectImage[
            object["Shapes"],
            object["Color"],
            object["Width"],
            object["Height"]
        ]
    ]

ARCInferObjectImage[
        {___, shape:KeyValuePattern["Name" -> "Square" | "Rectangle"], ___},
        color_Integer,
        width_,
        height_
    ] :=
    ARCScene@
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
        {___, shape:KeyValuePattern["Name" -> "Pixel"], ___},
        color_Integer,
        width_,
        height_
    ] :=
    ARCScene[
        {{color}}
    ]

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
                                    ],
                                    (* Other than the "Name", the qualifiers are the same. *)
                                    KeySort[KeyDrop[item, "Name"]] === KeySort[KeyDrop[#, "Name"]]
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
        "Rectangle" -> "Square"
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

End[]

EndPackage[]

If [TrueQ[DevTools`$DebugLoad], Print["Done: Daniel`ARC`"]];