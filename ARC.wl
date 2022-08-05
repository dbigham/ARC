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

$gitDirectory = FileNameJoin[{FileNameDrop[FindFile["ERP`"], -7], "ARC"}];
$trainingDirectory = FileNameJoin[{$gitDirectory, "data", "training"}];

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
                SelectFirst[
                    ARCTrainingFiles[],
                    StringContainsQ[#, file] &,
                    ReturnFailure[
                        "FileNotFound",
                        "No matching training example was found.",
                        "File" -> file
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
    Module[{res},
        
        res = Grid[
            Replace[grid[[1]], _Integer :> "", {2}],
            ItemSize -> {1.3, 1.5},
            Frame -> True,
            FrameStyle -> {AbsoluteThickness[1], GrayLevel[0.5]},
            Dividers -> All,
            Background -> {
                None,
                None,
                Flatten[
                    MapIndexed[
                        Function[{color, position},
                            position -> Replace[color, $integerToColor]
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
            ];
        
        ToBoxes[res]
    ]

example_ARCExample[keys___] := example[[1, keys]]

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
    Module[{background, backgroundInteger, objects},
        
        background = 0;
        
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
                            ARCToMonochrome[scene],
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
ARCContiguousImageRegions[image_List, OptionsPattern[]] :=
    Module[{
            pixelsOfColor,
            componentMatrix,
            pixelPositions,
            xValues,
            yValues,
            xMinMax,
            yMinMax,
            bottomRightCorner,
            position
        },
        Function[{color},
            pixelsOfColor = Replace[image, Except[color] -> 0, {2}];
            componentMatrix = MorphologicalComponents[
                pixelsOfColor,
                CornerNeighbors -> OptionValue["FollowDiagonals"]
            ];
            componentNumbers = DeleteCases[DeleteDuplicates[Flatten[componentMatrix]], 0];
            Function[{componentNumber},
                pixelPositions = Position[componentMatrix, componentNumber];
                <|
                    "Color" -> color,
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
                        Replace[
                            (* Take the rectangular part of the matrix occupied by this object. *)
                            componentMatrix[[
                                position[[1]] ;; bottomRightCorner[[1]],
                                position[[2]] ;; bottomRightCorner[[2]]
                            ]],
                            (* We need to make any pixels not in our object black incase there's
                               another object within the bounds of this object's rectangular
                               area. *)
                            Except[componentNumber] :> 0,
                            {2}
                        ],
                        Except[0] -> color,
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
        ] /@ DeleteCases[
            ARCColorIntegers[],
            OptionValue["Background"]
        ] // Flatten // ARCImageRegions
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
    If [And[
            ImageWidth[image] === ImageHeight[image],
            ARCClassifyRectange[image] =!= Nothing
        ],
        <|"Name" -> "Square"|>
        ,
        Nothing
    ]

(*!
    \function ARCClassifyRectange
    
    \calltable
        ARCClassifyRectange[image] '' Checks whether the given image can be classified as a rectangle.
    
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
            List[
                Repeated[
                    List[
                        c:Repeated[Except[0]]
                    ]
                ]
            ]
        ],
        <|"Name" -> "Rectangle"|>
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
                            Except[0],
                            c:Repeated[0]
                        ]
                    ]
                ]
            ],
            (* Horizontal line *)
            MatchQ[
                Last[image],
                List[Repeated[c:Except[0]]]
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
    
    Examples:
    
    ARCIndent[expr] === TODO
    
    \maintainer danielb
*)
Clear[ARCIndent];
ARCIndent[expr_, opts:OptionsPattern[]] :=
    Module[{temporaryAssociationSymbol},
        Indent3[
            Replace2[
                expr,
                temporaryAssociationSymbol,
                assoc:temporaryAssociationSymbol[a___, "Colors" -> colors_List, b___] :> (
                    <|
                        a,
                        "Colors" -> Values[KeyTake[$integerToColor, colors]],
                        b
                    |>
                ),
                {0, Infinity},
                Heads -> True
            ],
            "FormattedHeads" -> {ARCScene, RGBColor, GrayLevel, TestResultObject},
            opts,
            "ColumnsAvailable" -> 120
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
    
    TODO: Not yet implemented
    
    Examples:
    
    ARCInferBackgroundColor[example] === TODO
    
    \maintainer danielb
*)
Clear[ARCInferBackgroundColor];
ARCInferBackgroundColor[example_] :=
    Module[{scenes},
        
        scenes = Cases[example, _ARCScene, Infinity][[All, 1]];
        
        colorCounts = Reverse[Sort[Counts[Flatten[scenes]]]];
        
        (* Experimentation *)
        <|
            "Ratio" -> Round[Normal[colorCounts][[1, 2]] / Normal[colorCounts][[2, 2]], 0.01],
            "Counts" -> colorCounts
        |>
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
    Module[{singleColorObjectsByUUID, singleColorObjectsByPixelPosition, res, object},
        
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
                                image = ARCScene[
                                    Times[
                                        scene[[1]][[
                                            position[[1]] ;; position[[1]] + object["Height"] - 1,
                                            position[[2]] ;; position[[2]] + object["Width"] - 1
                                        ]],
                                        (* We need to make any pixels not in our object black incase there's
                                           another object within the bounds of this object's rectangular
                                           area. *)
                                        Replace[objectIn["Image"][[1]], 10 :> 1, {2}]
                                    ]
                                ]
                            ),
                            "Colors" ->
                                (* We want to sort the values so that the object references created
                                   by functions like ARCMakeObjectsReferenceable can be turned into
                                   patterns and then matching objects selected. *)
                                Sort@
                                DeleteDuplicates@
                                Flatten[object["Components"][[All, "Colors"]]],
                            "Shapes" -> Join[
                                ARCImageRotations[image[[1]]],
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
                            ]
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
                                    ]
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
    Module[{outputObjects, inputObjects, mapping},
        
        outputObjects = output["Objects"];
        inputObjects = input["Objects"];
        
        mapping = <|
            Function[{object},
                (* Map this input object to an output object. *)
                ReturnIfFailure@
                ARCFindObjectMapping[object, outputObjects, inputObjects]
            ] /@ inputObjects
        |>;
        
        ARCGroupByOutputObject[mapping, outputObjects, input["Background"]]
        
        (* TODO: The return value doesn't indicate which objects exist in the output
                 but don't exist in the input. *)
    ]

ARCFindObjectMapping[objectIn_Association, objectsToMapTo_List, inputObjects_List] :=
    Module[
        {
            object = objectIn,
            matchingComponent,
            mappedToObject,
            possibleMatches
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
               We will thus express its location relative to the object. *)
            mappedToObject["Position"] =
                <|
                    "RelativePosition" ->
                        mappedToObject["Position"] - object["Position"]
                |>;
            Return[
                Rule[
                    Append[object, "OutputComponentUUID" -> matchingComponent["UUID"]],
                    mappedToObject
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
        If [MatchQ[possibleMatches, {_}],
            mappedToObject = possibleMatches[[1]];
            mappedToObject["Transform"] = <|
                "Type" -> "Move",
                "Position" -> ToXY @ mappedToObject["Position"],
                "Offset" -> ToXY[mappedToObject["Position"] - object["Position"]]
            |>;
            Return[object -> mappedToObject, Module]
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
        
        Missing["NotFound"]
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
SimplifyObjects[expr_] :=
    Module[{temporaryAssociationSymbol},
        Replace2[
            expr,
            temporaryAssociationSymbol,
            object:temporaryAssociationSymbol[___, "UUID" -> _, ___] :>
                KeyTake[Association @@ object, {"Image", "Position", "Transform"}],
            {0, Infinity}
        ]
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
                            conclusion = Prepend[conclusion, "Shape" -> ARCToMonochrome[conclusion["Image"]]];
                            conclusion = KeyDrop[conclusion, "Image"],
                        And[
                            MatchQ[conclusion["Input", "Colors"], {_}],
                            MatchQ[value["Colors"], {_}],
                            conclusion["Input", "Colors"] =!= value["Colors"],
                            ARCToMonochrome[conclusion["Image"]] === ARCToMonochrome[value["Image"]]
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
    Module[
        {
            examples = examplesIn,
            referenceableInputObjects,
            referenceableOutputObjects,
            objectMappings,
            preRules,
            rules,
            transform
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
        
        (* For now, if there are any removed/unampped objects, just give up. *)
        (*If [Cases[objectMappings, _Missing, {2}] =!= {},
            Return[{}, Module]
        ];*)
        
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
        
        Function[{property},
            rules = ARCFindRules[preRules, property, referenceableInputObjects, examples];
            If [TrueQ[ARCGoodRulesQ[rules, examples]], Return[rules, Module]];
        ] /@ DeleteCases[
            Prepend[
                If [False,
                    {"Y2"}
                    ,
                    Keys[$properties]
                ],
                (* See if one rule can be used to transform all objects. *)
                None
            ],
            Alternatives[
                (* TODO *)
                "Shapes",
                "PixelPositions",
                (* TODO *)
                "Dimensions"
            ]
        ];
        
        {}
    ]

ARCFindRules[preRules_List, property: _String | None, referenceableInputObjects_Association, examples_List] :=
    Module[
        {
            unhandled,
            groupedByPattern,
            conclusion,
            rules,
            pattern
        },
        
        (*Echo[property];*)
        
        unhandled = {};
        
        (*ARCEcho[preRules];*)
        
        (* Question: Here we are first grouping by the property-value pair, and then below
                     we later group by the transformation type, and finally look for
                     rules. I wonder if there are cases where it would be better to first
                     group by transformation type, and then look for how property values
                     can be used to infer those things. Not clear in my head. *)
        
        (* Form rules based on this property. *)
        groupedByPattern =
            If [StringQ[property],
                GroupBy[
                    Function[{item},
                        <|property -> item[[1, property]]|> -> item[[2]]
                    ] /@ preRules
                    ,
                    First -> Last
                ]
                ,
                (* No property was specified. Try creating rules that apply universally. *)
                <|
                    <||> -> preRules[[All, 2]]
                |>
            ];
        
        (*ARCEcho[groupedByPattern];*)
        
        (* Merge all instances of the same rule, forming "Examples" and "UseCount" properties. *)
        groupedByPattern = Function[{rhs},
            
            {conclusion, unhandled} =
                ReturnIfFailure@
                ARCFindRules[rhs, referenceableInputObjects, examples, unhandled];
            
            conclusion
            
        ] /@ groupedByPattern;
        
        unhandled = Flatten[unhandled];
        
        (*ARCEcho[SimplifyObjects[unhandled]];*)
        
        rules = Normal[DeleteMissing[groupedByPattern]];
        
        If [Length[unhandled] > 0,
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
                            {multipleValues_} :> Alternatives @@ multipleValues,
                            (* No values. *)
                            {} :> Return[{}, Module]
                        }
                    ]
                ]
            |>;
            
            (*ARCEcho[SimplifyObjects[groupedByConclusion]];*)
            
            {conclusion, unhandled} =
                ReturnIfFailure@
                ARCFindRules[unhandled, referenceableInputObjects, examples, unhandled];
            
            If [!MissingQ[conclusion],
                rules = AppendTo[
                    rules,
                    pattern -> conclusion
                ]
            ]
        ];
        
        rules
    ]

(* `conclusionGroup` is a group of conclusion RHSs that might share the fact that the
   corresponding input objects had the same value for some property, etc. *)
ARCFindRules[conclusionGroup_List, referenceableInputObjects_Association, examples_List, unhandledIn_List] :=
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
        
        (*ARCEcho[groupedByConclusion];*)
        
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
                    "UseCount" -> Length[exampleInstances]
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
                unhandled =
                    DeleteDuplicates@
                    Join[
                        unhandled,
                        conclusionGroup
                    ];
                conclusion = Missing["NotFound", "InsufficientRuleSupport"]
            ]
            ,
            (* This pattern has multiple conflicting conclusions that we weren't able to
               generalize, so we'll drop this rule. *)
            Missing["NotFound"]
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
                    MatchQ[objectIn, KeyValuePattern @@ Normal[pattern]]
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
                            ResolveValues[value, objectIn, scene],
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

(* HERE *)
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
            
            output[[
                posY ;; posY + ImageHeight[image] - 1,
                posX ;; posX + ImageWidth[image] - 1
            ]] = object["Image"][[1]]
            
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
    
    Examples:
    
    ARCTest[file] === TODO
    
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
GetObject[object_Object, parsedSceneOrObjectsList_] :=
    GetObject[object[[1]], parsedSceneOrObjectsList]

GetObject[object_Association, parsedScene_Association] :=
    GetObject[object, parsedScene["Objects"]]

GetObject[object_Association, objects_List] :=
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
                    "Object" -> object,
                    "Scene" -> ARCIndent[parsedScene]
                ],
                multipleObjects:{_, __} :> ReturnFailure[
                    "AmbiguousObject",
                    "Multiple matching objects were found, but only 1 match was expected.",
                    "ObjectPattern" -> object,
                    "MatchingObjects" -> objects,
                    "Scene" -> ARCIndent[parsedScene]
                ]
            }
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
    Module[{res, objectsOfType, propertyValues},
        
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
                ] /@ Complement[
                    Keys[$properties],
                    (* Since we know all objects share property values for the properties in the
                       object reference, we will for now remove them from the RHSs, although
                       it's possible we should leave them if they are for any reason useful
                       in the future. *)
                    Keys[objectReference[[1]]]
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
        (* MinimumPropertySets are sets of properties that can fully specify the transform
           given that you also know the input object. For example, a move can be specified
           either by just the Offset, or by just the Position. *)
        "MinimumPropertySets" -> {
            {
                "Offset" -> <|
                    "SubProperties" -> <|
                        "Y" -> <|
                            "ObjectGet" -> Function[#["Y"]]
                        |>,
                        "X" -> <|
                            "ObjectGet" -> Function[#["X"]]
                        |>
                    |>
                |>
            },
            {
                "Position" -> <|
                    "SubProperties" -> <|
                        "Y" -> <|
                            "ObjectGet" -> Function[#["Y"]]
                        |>,
                        "X" -> <|
                            "ObjectGet" -> Function[#["X"]]
                        |>
                    |>
                |>
            },
            {
                "BlockedBy" -> <||>
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
            propertyNameAndAttributes,
            rule,
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
                rule = Module[{},
                    rule = <||>;
                    Function[{propertyNameAndAttributes},
                        property =
                            Replace[propertyNameAndAttributes, HoldPattern[Rule][propertyName_, _] :> propertyName];
                        If [Length[uniqueValue = DeleteDuplicates[conclusions[[All, "Transform", property]]]] === 1,
                            If [MissingQ[uniqueValue[[1]]],
                                rule = Missing[]
                                ,
                                (* This property has a predictable value. Set it. *)
                                rule[property] = uniqueValue[[1]]
                            ]
                            ,
                            (* This property doesn't have a predictable value, so we'll see if we
                               can determine how to produce it dynamically. *)
                            rule = Append[
                                rule,
                                Replace[
                                    ReturnIfFailure@
                                    ARCGeneralizeConclusionValue[
                                        {property},
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
                                    Nothing :> Return[Missing["NotFound"], Module]
                                ]
                            ]
                        ]
                    ] /@ propertySet;
                    rule
                ];
                If [!MissingQ[rule],
                    <|
                        "Transform" -> <|
                            "Type" -> "Move",
                            rule
                        |>
                    |>
                    ,
                    Nothing
                ]
            ] /@ transformDetails["MinimumPropertySets"];
            
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
    Module[{uniqueValue, subProperties, getFunction},
        
        values = conclusions[[All, "Value"]];
        
        If [Length[uniqueValue = DeleteDuplicates[values]] === 1,
            (* This property has a predictable value. *)
            Return[Last[propertyPath] -> uniqueValue[[1]], Module]
        ];
        
        If [AssociationQ[conclusions[[1, "Value"]]],
            (* The values are actually associations, so we will iterate over each of their
               keys and try to infer them separately. *)
            subProperties = Keys[values[[1]]];
            Last[propertyPath] ->
                Association[
                    Function[{subProperty},
                        Replace[
                            ReturnIfFailure@
                            ARCGeneralizeConclusionValue[
                                Append[propertyPath, subProperty],
                                Replace[
                                    propertyAttributes["SubProperties"],
                                    {
                                        Except[_Association] :> <||>,
                                        _Association :> (
                                            Replace[
                                                propertyAttributes["SubProperties", subProperty],
                                                Except[_Association] :> <||>
                                            ]
                                        )
                                    }
                                ],
                                AssociationApply[
                                    conclusions,
                                    <|
                                        "Value" -> Function[
                                            #[subProperty]
                                        ]
                                    |>
                                ],
                                referenceableInputObjects,
                                examples
                            ],
                            _Missing :>
                                (* Note that this doesn't return from this function but rather the
                                   Module for this property set. *)
                                Return[Nothing, Module]
                        ]
                    ] /@ subProperties
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
            If [!MatchQ[getFunction, _Function],
                ReturnFailure[
                    "MissingObjectGetFunction",
                    "The transformation property (or sub-property) doesn't specify its ObjectGet function.",
                    "PropertyPath" -> propertyPath,
                    "PropertyAttributes" -> propertyAttributes
                ]
            ];
            
            (* The first thing we should check is to ensure that these sub-properties actually
               change from the values they have in the inputs. If not, we can actually just
               drop this key from our rule conclusion. *)
            If [SameQ[
                    values,
                    getFunction /@ conclusions[[All, "Input"]]
                ],
                Return[Nothing, Module]
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
                
                If [StringQ[property],
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
    Module[{matchingProperties},
        
        matchingProperties = Select[
            AssociationTranspose[
                KeyDrop[
                    objects,
                    {"UUID"}
                ]
            ],
            # === values &
        ];
        
        If [Length[matchingProperties] > 0,
            (* TODO: What to do if there are multiple properties that could
                     be used? *)
            First[Keys[matchingProperties]]
            ,
            Missing["NotFound"]
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
    Module[{},
        Replace[
            expr,
            {
                (* Resolve an object's value. *)
                ObjectValue[pattern_, property_] :>
                    ReturnFailureIfMissing[
                        (
                            resolvedObject = ReturnIfFailure[GetObject[pattern, scene]]
                        )[property],
                        "MissingPropertyValue",
                        "A property's value couldn't be found for a resolved object.",
                        "ObjectPattern" -> pattern,
                        "ResolvedObject" -> resolvedObject
                    ],
                (* Resolve an object. *)
                Object[pattern_] :>
                    ReturnFailureIfMissing[
                        GetObject[pattern, scene],
                        "MissingPropertyValue",
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
    
    Examples:
    
    ARCTry[file, inputOrOutput, exampleIndex] === TODO
    
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
        
        output = ARCApplyRules[
            parsedFile[trainOrTest, exampleIndex, "Input"],
            rules
        ];
        
        successQ = (output === parsedFile[trainOrTest, exampleIndex, "Output"]);
        
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
    
    ARCNotableSubImages[{<|"Image" -> {{1, 0}, {0, 1}}|>}] === {{{1, 0}, {0, 1}}}
    
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
                        ResourceFunction["FindSubmatrix"][
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
                                    backgroundColor
                                ],
                                MemberQ[#, backgroundColor] &
                            ]
                        ],
                        (* Paint this region of `leftoverImage` black so that at the end we can tell
                           if our sub-images have accounted for all non-black pixels in the image. *)
                        leftoverImage[[
                            subImagePosition[[1]] ;; subImagePosition[[1]] + ImageHeight[subImage[[1]]] - 1,
                            subImagePosition[[2]] ;; subImagePosition[[2]] + ImageWidth[subImage[[1]]] - 1
                        ]] = 0;
                        
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
    Module[{y, x, area, filledArea},
        Join[
            object,
            <|
                "Y" -> (y = object["Position"][[1]]),
                "X" -> (x = object["Position"][[2]]),
                "Y2" -> y + height - 1,
                "X2" -> x + width - 1,
                "Width" -> (width = ImageWidth[object["Image"]]),
                "Height" -> (height = ImageHeight[object["Image"]]),
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
    Module[{},
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
                ConstantArray[0, {1, subImageDimensions[[2]]}]
            ],
            (* Right *)
            Flatten@
            QuietCheck[
                image[[
                    yRange,
                    subImagePosition[[2]] + subImageDimensions[[2]] ;; subImagePosition[[2]] + subImageDimensions[[2]]
                ]],
                ConstantArray[0, {subImageDimensions[[1]], 1}]
            ],
            (* Below *)
            Flatten@
            QuietCheck[
                image[[
                    subImagePosition[[1]] + subImageDimensions[[1]] ;; subImagePosition[[1]] + subImageDimensions[[1]],
                    xRange
                ]],
                ConstantArray[0, {1, subImageDimensions[[2]]}]
            ],
            (* Left *)
            Flatten@
            QuietCheck[
                image[[
                    yRange,
                    subImagePosition[[2]] - 1 ;; subImagePosition[[2]] - 1
                ]],
                ConstantArray[0, {subImageDimensions[[1]], 1}]
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
        ARCToMonochrome[image] '' Given an image, makes it black and white.
    
    Examples:
    
    ARCToMonochrome[ARCScene[{{2, 0}, {0, 2}}]] === ARCScene[{{10, 0}, {0, 10}}]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCToMonochrome]
    
    \maintainer danielb
*)
Clear[ARCToMonochrome];
ARCToMonochrome[image_] :=
    Replace[image, Except[0, _Integer] :> 10, {3}]

ARCToMonochrome[ARCScene[image_]]
    ARCScene[ARCToMonochrome[image]]

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
    Replace[image, Except[0, _Integer] :> color, {3}]

ARCColorize[ARCScene[image_, color_]]
    ARCScene[ARCToMonochrome[image, color]]

(*!
    \function SetTrainingDataKeyValue
    
    \calltable
        SetTrainingDataKeyValue[file, key, value] '' Sets a key/value pair for the given training data file.
    
    Examples:
    
    SetTrainingDataKeyValue[file, key, value] === TODO
    
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
    
    Examples:
    
    ARCAddMoveAttributes[examples, referenceableOutputObjects] === TODO
    
    \maintainer danielb
*)
Clear[ARCAddMoveAttributes];
ARCAddMoveAttributes[examplesIn_List, referenceableOutputObjects_Association] :=
    Module[{examples = examplesIn},
        
        XARCEcho[examples];
        XARCEcho[examples[[1, "ObjectMapping", 1]]];
        
        examples = Function[{example},
            Replace[
                example,
                objectMapping:KeyValuePattern[inputObject_ -> outputObject:KeyValuePattern["Transform" -> KeyValuePattern["Type" -> "Move"]]] :> (
                    
                    XEcho["A" -> example];
                    
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
    
    Examples:
    
    ARCSimplifyRules[rules] === TODO
    
    \maintainer danielb
*)
Clear[ARCSimplifyRules];
ARCSimplifyRules[rules_List] :=
    Replace[
        rules,
        assoc: KeyValuePattern["Examples" -> _] :>
            KeyDrop[assoc, {"Examples", "ExampleCount", "UseCount"}],
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
                    propertyName <> "Rank" -> <|"Type" -> "Integer", "Rank" -> True, "RankOf" -> propertyName|>
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
    Module[{objects = objectsIn, rankProperties, sortedValues},
        
        rankProperties = Select[$properties, TrueQ[#["Rank"]] &];
        
        Function[{rankProperty},
            
            property = rankProperty["RankOf"];
            
            sortedValues = ReverseSort[
                DeleteDuplicates[
                    DeleteMissing[
                        objects[[All, property]]
                    ]
                ]
            ];
            
            objects = Function[{object},
                If [!MissingQ[object[property]],
                    Sett[
                        object,
                        property <> "Rank" ->
                            Position[sortedValues, object[property]][[1, 1]]
                    ]
                    ,
                    object
                ]
            ] /@ objects;
            
        ] /@ rankProperties;
        
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
    Module[{},
        ReverseSort[
            Function[{transform},
                transform -> (
                    ARCTransformScore[transform["Transform"]]
                )
            ] /@ transforms
        ][[1, 1]]
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
        
        score
    ]

(*!
    \function ProcessExamples
    
    \calltable
        ProcessExamples[files] '' UI to iterate over examples and annotate them with metadata.
    
    Examples:
    
    ProcessExamples[files] === TODO
    
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
    
    Examples:
    
    ARCNotebook[file] === TODO
    
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

End[]

EndPackage[]

If [TrueQ[DevTools`$DebugLoad], Print["Done: Daniel`ARC`"]];