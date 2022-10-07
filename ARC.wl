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
Needs["EntityLink`"]

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

Class::usage = "Class  "

ObjectValue::usage = "ObjectValue  "

ClassValue::usage = "ClassValue  "

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

ARCFindOccludedLines::usage = "ARCFindOccludedLines  "

ARCPositionBeyondLine::usage = "ARCPositionBeyondLine  "

ARCLineDirections::usage = "ARCLineDirections  "

ShapeQ::usage = "ShapeQ  "

ARCFormCompositeObject::usage = "ARCFormCompositeObject  "

ARCPrunePattern::usage = "ARCPrunePattern  "

ARCAngleForTwoPoints::usage = "ARCAngleForTwoPoints  "

ARCRemoveEmptySpaceQ::usage = "ARCRemoveEmptySpaceQ  "

ARCConsiderMappingObjectsByColor::usage = "ARCConsiderMappingObjectsByColor  "

ARCRemoveEmptySpace::usage = "ARCRemoveEmptySpace  "

ARCSupportedOcclusionObjectQ::usage = "ARCSupportedOcclusionObjectQ  "

ARCResolveExample::usage = "ARCResolveExample  "

ARCSortNotableSubImages::usage = "ARCSortNotableSubImages  "

ARCContiguousSubImageQ::usage = "ARCContiguousSubImageQ  "

ARCPixelColor::usage = "ARCPixelColor  "

ARCFormExceptRules::usage = "ARCFormExceptRules  "

ARCObjectFromAllPixels::usage = "ARCObjectFromAllPixels  "

ARCObjectImageShape::usage = "ARCObjectImageShape  "

ARCRemoveExtendedMetadataFromConclusion::usage = "ARCRemoveExtendedMetadataFromConclusion  "

ARCHollowCount::usage = "ARCHollowCount  "

ARCUpdateReadme::usage = "ARCUpdateReadme  "

ARCImageScalings::usage = "ARCImageScalings  "

ARCScaleImage::usage = "ARCScaleImage  "

ARCListMultiplier::usage = "ARCListMultiplier  "

ARCGeneralizeValue::usage = "ARCGeneralizeValue  "

ARCDropObjectProperties::usage = "ARCDropObjectProperties  "

ARCFixUnwantedManyToOneMappings::usage = "ARCFixUnwantedManyToOneMappings  "

ARCDenoise::usage = "ARCDenoise  "

ARCSurroundingPixels::usage = "ARCSurroundingPixels  "

ARCNoiseObjects::usage = "ARCNoiseObjects  "

ARCImageColors::usage = "ARCImageColors  "

ARCRulesForOutput::usage = "ARCRulesForOutput  "

ARCSurfacePixelCount::usage = "ARCSurfacePixelCount  "

ARCMXPut::usage = "ARCMXPut  "

ARCMXFile::usage = "ARCMXFile  "

ARCMXGet::usage = "ARCMXGet  "

ARCSortRules::usage = "ARCSortRules  "

ARCSortRuleScore::usage = "ARCSortRuleScore  "

ARCSubdivideImage::usage = "ARCSubdivideImage  "

ARCImageFlips::usage = "ARCImageFlips  "

ARCFlipImage::usage = "ARCFlipImage  "

ARCCombineGridOfImages::usage = "ARCCombineGridOfImages  "

ARCCombineRowOfImages::usage = "ARCCombineRowOfImages  "

ARCFindRulesForSubdividedOutput::usage = "ARCFindRulesForSubdividedOutput  "

ARCChooseTransform::usage = "ARCChooseTransform  "

ARCImageShapes::usage = "ARCImageShapes  "

ARCCommunityRiddlePage::usage = "ARCCommunityRiddlePage  "

ARCTaskNotesMarkdownURL::usage = "ARCTaskNotesMarkdownURL  "

ARCLinkToDanielBighamsSolution::usage = "ARCLinkToDanielBighamsSolution  "

ARCInferImageUseCountPropertyValues::usage = "ARCInferImageUseCountPropertyValues  "

ARCInferShapeUseCountPropertyValues::usage = "ARCInferShapeUseCountPropertyValues  "

ARCInferGeneralShapeUseCountPropertyValues::usage = "ARCInferGeneralShapeUseCountPropertyValues  "

ARCFindRulesForSubdividedInput::usage = "ARCFindRulesForSubdividedInput  "

ARCParseGrid::usage = "ARCParseGrid  "

ARCAllExamplesUseGridInInputAndOutput::usage = "ARCAllExamplesUseGridInInputAndOutput  "

ARCSubdivideImageUsingGrid::usage = "ARCSubdivideImageUsingGrid  "

ARCFindRulesForGridSubdivision::usage = "ARCFindRulesForGridSubdivision  "

ARCCombineDividersIntoGrid::usage = "ARCCombineDividersIntoGrid  "

ARCMemoized::usage = "ARCMemoized  "

ARCFindRulesForGridSubdivisionToOutputPixels::usage = "ARCFindRulesForGridSubdivisionToOutputPixels  "

ARCGridSizeMatchesOutputPixelDimensions::usage = "ARCGridSizeMatchesOutputPixelDimensions  "

ARCPixelsAsScenes::usage = "ARCPixelsAsScenes  "

ARCObjectMinimalPropertySetsAndSubProperties::usage = "ARCObjectMinimalPropertySetsAndSubProperties  "

ARCImageTransforms::usage = "ARCImageTransforms  "

ARCFindPropertyToInferBooleanValues::usage = "ARCFindPropertyToInferBooleanValues  "

ARCFindPropertyToInferImageValues::usage = "ARCFindPropertyToInferImageValues  "

Transform::usage = "Transform  "

ARCImageFlipPlusRotations::usage = "ARCImageFlipPlusRotations  "

ARCHandlerForListConclusions::usage = "ARCHandlerForListConclusions  "

ARCPossiblyGeneratedObjectQ::usage = "ARCPossiblyGeneratedObjectQ  "

ARCPixelPossiblyPartOfLine::usage = "ARCPixelPossiblyPartOfLine  "

ARCFollowLine::usage = "ARCFollowLine  "

ARCLineTurnCount::usage = "ARCLineTurnCount  "

ARCMappingsForGeneratedObject::usage = "ARCMappingsForGeneratedObject  "

ARCTurnDegrees::usage = "ARCTurnDegrees  "

SignedVectorAngle::usage = "SignedVectorAngle  "

ARCDirectionForAngle::usage = "ARCDirectionForAngle  "

ARCFindRulesForGeneratedObjects::usage = "ARCFindRulesForGeneratedObjects  "

ARCRemoveObjectFromScene::usage = "ARCRemoveObjectFromScene  "

ARCCompleteRuleSubsets::usage = "ARCCompleteRuleSubsets  "

ARCSetPropertyListPositions::usage = "ARCSetPropertyListPositions  "

ARCTimeConstrained::usage = "ARCTimeConstrained  "

ProcessARCLog::usage = "ProcessARCLog  "

ARCLogScope::usage = "ARCLogScope  "

ARCLog::usage = "ARCLog  "

ARCTwoDiagonalRectanglesQ::usage = "ARCTwoDiagonalRectanglesQ  "

ARCGenerateObject::usage = "ARCGenerateObject  "

ARCGeneratorInputState::usage = "ARCGeneratorInputState  "

ARCSetGridPosition::usage = "ARCSetGridPosition  "

ARCInferObjectPropertiesForRendering::usage = "ARCInferObjectPropertiesForRendering  "

ARCCheckForLogicOperationQ::usage = "ARCCheckForLogicOperationQ  "

ARCDrawSubImage::usage = "ARCDrawSubImage  "

ARCConsiderLogicOperations::usage = "ARCConsiderLogicOperations  "

ARCApplyValueMappingToGrid::usage = "ARCApplyValueMappingToGrid  "

ARCSubdivisionImages::usage = "ARCSubdivisionImages  "

ARCBinarizeImage::usage = "ARCBinarizeImage  "

ARCParseColorGrids::usage = "ARCParseColorGrids  "

ARCCheckForImputedRectangleForSymmetry::usage = "ARCCheckForImputedRectangleForSymmetry  "

ARCSymmetryLocations::usage = "ARCSymmetryLocations  "

ARCCheckForImputation::usage = "ARCCheckForImputation  "

ARCSubImage::usage = "ARCSubImage  "

ARCMappingForReplacedObject::usage = "ARCMappingForReplacedObject  "

ARCFindSymmetry::usage = "ARCFindSymmetry  "

ARCThreePatchesToPossibleSymmetryBounds::usage = "ARCThreePatchesToPossibleSymmetryBounds  "

ARCApproximateSymmetryQ::usage = "ARCApproximateSymmetryQ  "

ARCCheckForImputationUsingSymmetry::usage = "ARCCheckForImputationUsingSymmetry  "

ARCCheckForSceneRepairUsingImputationQ::usage = "ARCCheckForSceneRepairUsingImputationQ  "

ARCCheckForRepeatingPattern::usage = "ARCCheckForRepeatingPattern  "

ARCApplyPatternFill::usage = "ARCApplyPatternFill  "

ARCOverlapQ::usage = "ARCOverlapQ  "

ARCSceneObject::usage = "ARCSceneObject  "

SingleUniqueValueQ::usage = "SingleUniqueValueQ  "

Begin["`Private`"]

Utility`Reload`SetupReloadFunction["Daniel`ARC`"];

$MinimumExamplesPerRule = 2;

$memoization = None;

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
ProcessOneByOne = Utility`ProcessOneByOne;
CreateNamedNotebook2 = DevTools`NotebookTools`CreateNamedNotebook2;
CreateDirectoryIfDoesntExist = Utility`CreateDirectoryIfDoesntExist;
SpecifiedQ = Utility`SpecifiedQ;
FailureDetails = Utility`FailureDetails;
EntityName = EntityLink`EntityName;
EntityMatchQ = EntityLink`EntityMatchQ;
SectionCellObject = DevTools`NotebookTools`SectionCellObject;
MoveNotebook = DevTools`NotebookTools`MoveNotebook;
FilterOptions = Utility`FilterOptions;
Memoized = Utility`Memoized;
CreateMemoizationFunction = Utility`CreateMemoizationFunction;
LogScope = EntityLink`Logging`LogScope;
ClearLog = EntityLink`Logging`ClearLog;
ProcessLog = EntityLink`Logging`ProcessLog;
EntityRepository = EntityLink`EntityRepository;
EntityRepositorySet = EntityLink`EntityRepositorySet;
EchoTiming2 = Utility`EchoTiming2;

(* For the purposes of using LogScope. *)
initializeEntityRepository[] :=
    Module[{},
        
        entityRepositoryDirectory = FileNameJoin[{$TemporaryDirectory, "ARC"}];
        
        CreateDirectoryIfDoesntExist[entityRepositoryDirectory];
        
        ReturnIfFailure@
        EntityRepository[$repo, entityRepositoryDirectory];
        
        ReturnIfFailure@
        EntityRepositorySet[$repo, "LogDirectory" -> FileNameJoin[{entityRepositoryDirectory, "Logs"}]];
        
        ReturnIfFailure@
        EntityRepositorySet[
            $repo,
            "DatabaseTablePrefix" -> "arc_"
        ];
        
        ReturnIfFailure@
        EntityRepositorySet[
            $repo,
            "DatabaseConnectionOpener" ->
                Inactive[
                    DatabaseLink`OpenSQLConnection[
                        DatabaseLink`JDBC["PostgreSQL", "localhost:5432/postgres"],
                        "Username" -> "postgres",
                        "Password" -> "password"
                    ]
                ],
            Automatic
        ];
        
        ReturnIfFailure@
        EntityLink`EntityTypeCreate`LoadCoreEntityLinkEntityTypes[$repo];
    ]

If [!MatchQ[$repo, _EntityRepository] && !TrueQ[$disableARCLogScopes],
    PrintIfFailure@
    initializeEntityRepository[]
];

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
$outOfBoundsColor = -2;

$integerToColor = <|
    0 -> Black,
    1 -> RGBColor["#0074d9"],
    2 -> RGBColor["#ff4136"],
    3 -> RGBColor["#2ecc40"],
    4 -> RGBColor["#ffdc00"],
    5 -> RGBColor["#aaa"],
    6 -> RGBColor["#f012be"],
    7 -> RGBColor["#ff851b"],
    8 -> RGBColor["#7fdbff"],
    9 -> RGBColor["#870c25"],
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
    ARCMemoized[
        "MemoizationKey" -> file
    ]@
    Module[{exampleDetails},
        
        exampleDetails = ReturnIfFailure[ARCResolveExample[file]];
        
        ARCExample@
        Prepend[
            First[
                ReturnIfFailure@
                ARCParseFile[
                    ReturnIfFailure[Import[exampleDetails["File"], "JSON"]]
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
    "SingleObject" -> False,                                (*< Should all non-background pixels be treated as part of a single object, even if they are non-contiguous? *)
    "OtherScene" -> Null,                                   (*< A parse of the scene this scene corresponds to. For example, if `scene` is an input scene, then OtherScene would be the output scene, and vice versa. If provided, we can use OtherScene to resolve some ambiguities about whether to chunk objects into composite objects. An association of the form <|"WithoutMultiColorCompositeObjects" -> ..., "WithMultiColorCompositeObjects" -> ...|> should be passed. *)
    "SingleColorObjects" -> Automatic,                      (*< If the single color objects have already been determined, they can be passed in to save time. *)
    "InferPropertiesThatRequireFullObjectList" -> True,     (*< Rank and RankInverse properties require that we have the full object list. If False, we won't infer those properties. *)
    "FindOcclusions" -> True,                               (*< Whether we should consider possible occlusions when interpreting the scene. *)
    "NotableSubImages" -> Automatic,                        (*< The list of images which are considered notable sub-images. If we find objects that contain these as sub-images, we should consider splitting that object up so that the sub-image is its own object. *)
    "ExampleIndex" -> Missing["NotSpecified"],              (*< Given a list of example inputs/outputs, what example number is this scene? *)
    "InputOrOutput" -> Missing["NotSpecified"],             (*< Is this an input scene or an output scene? *)
    "SubdivideInput" -> False,                              (*< If {rowCount, columnCount} is passed in, we subdivide the input into a grid of objects and then try to find rules. e.g. 2dee498d *)
    "Background" -> Automatic,                              (*< The background color of scenes. *)
    "FollowDiagonals" -> Automatic,                         (*< Should diagonally adjacent pixels form a single object? *)
    "CheckForGridsAndDividers" -> True                      (*< If we see things that look like grids/dividers, should we treat the specially, such as segmenting them into their own objects? *)
};
ARCParseScene[scene_ARCScene, opts:OptionsPattern[]] :=
    ARCMemoized["MemoizationKey" -> {scene, opts}]@
    (* Used in ARCImageShapes. *)
    Block[{$singleObject = OptionValue["SingleObject"]},
    Module[{background, objects, res},
        
        (*Echo["ARCParseScene" -> scene -> OptionValue["InputOrOutput"] -> OptionValue["ExampleIndex"]];*)
        
        background = Replace[
            OptionValue["Background"],
            Automatic :> ARCInferBackgroundColor[
                scene,
                "FormMultiColorCompositeObjects" -> OptionValue["FormMultiColorCompositeObjects"],
                "SingleObject" -> Or[
                    OptionValue["SingleObject"],
                    ListQ[OptionValue["SubdivideInput"]]
                ]
            ]
        ];
        
        Which[
            TrueQ[OptionValue["SingleObject"]],
                objects = {
                    ReturnIfFailure[ARCObjectFromAllPixels[scene, background]]
                },
            ListQ[OptionValue["SubdivideInput"]],
                objects =
                    ReturnIfFailure@
                    ARCSubdivideImage[
                        scene,
                        OptionValue["SubdivideInput"][[1]],
                        OptionValue["SubdivideInput"][[2]],
                        "Background" -> background,
                        "ReturnObjects" -> True
                    ],
            True,
                objects =
                    ReturnIfFailure@
                    ARCParseScene[scene, background, opts];
                
                notableSubImages =
                    Replace[
                        OptionValue["NotableSubImages"],
                        Automatic :>
                            ReturnIfFailure@
                            ARCNotableSubImages[objects, ImageWidth[scene], ImageHeight[scene]]
                    ];
                
                If [MatchQ[notableSubImages, {__}],
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
            
            If [TrueQ[OptionValue["FindOcclusions"]],
                objects =
                    ReturnIfFailure@
                    ARCFindOccludedLines[scene, background, objects]
            ]
        ];
        
        If [TrueQ[OptionValue["InferPropertiesThatRequireFullObjectList"]],
            objects = ARCInferPropertiesThatRequireFullObjectList[objects]
        ];
        
        (*ARCEcho[SimplifyObjects["ExtraKeys" -> "ZOrder"][objects]];*)
        
        res = ARCSceneObject[scene, background, objects];
        
        (*If [ListQ[OptionValue["SubdivideInput"]],
            ARCEcho2[res];
            (*Throw["HERE"];*)
        ];*)
        
        res
    ]
    ]

ARCParseScene[scene_ARCScene, backgroundColor_, opts:OptionsPattern[]] :=
    ARCMemoized["MemoizationKey" -> {scene, backgroundColor, opts}]@
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
                        "Background" -> backgroundColor,
                        "FollowDiagonals" -> (OptionValue["FollowDiagonals"] =!= False)
                    ],
                    ImageWidth[sceneImage],
                    ImageHeight[sceneImage]
                ]
        ];
        
        (* Can also be Automatic, which means True in this context. *)
        If [OptionValue["CheckForGridsAndDividers"] =!= False,
            
            (* Determine if any of the objects are grids or dividers. *)
            objects =
                ARCGridOrDividerQ["Objects" -> objects, ImageWidth[scene], ImageHeight[scene]];
            
            (* Remove any grids/dividers from the main object list, since we don't want them
               to get combined with other objects into composite objects. *)
            gridsAndDividers = Select[objects, AssociationQ[#["GridOrDivider"]] &];
            objects = Select[objects, !AssociationQ[#["GridOrDivider"]] &];
            
            gridsAndDividers =
                ReturnIfFailure@
                ARCCombineDividersIntoGrid[scene, gridsAndDividers];
            
            If [And[
                    Length[gridsAndDividers] === 1,
                    gridsAndDividers[[1, "GridOrDivider", "Type"]] === "Grid"
                ],
                (* e.g. 0bb8dee *)
                objects =
                    ReturnIfFailure@
                    ARCSetGridPosition[
                        objects,
                        gridsAndDividers[[1, "GridOrDivider"]]
                    ]
            ];
            ,
            gridsAndDividers = {}
        ];
        
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
                            "Background" -> backgroundColor,
                            "FollowDiagonals" -> (OptionValue["FollowDiagonals"] =!= False)
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
        
        objects = ARCInferImageUseCountPropertyValues[objects];
        
        objects = ARCInferShapeUseCountPropertyValues[objects];
        
        objects = ARCInferGeneralShapeUseCountPropertyValues[objects];
        
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
    "FormMultiColorCompositeObjects" -> True,       (*< Whether connected single-color objects should be combined to form multi-color composite objects. *)
    "NotableSubImages" -> Automatic,                (*< The list of images which are considered notable sub-images. If we find objects that contain these as sub-images, we should consider splitting that object up so that the sub-image is its own object. *)
    "SingleObject" -> False,                        (*< Should all non-background pixels be treated as part of a single object, even if they are non-contiguous? *)
    "SubdivideInput" -> False,                      (*< If {rowCount, columnCount} is passed in, we subdivide the input into a grid of objects and then try to find rules. e.g. 2dee498d *)
    "FindOcclusions" -> True,                       (*< Whether we should consider possible occlusions when interpreting the scene. *)
    "Background" -> Automatic,                      (*< The background color of scenes. *)
    "FollowDiagonals" -> Automatic,                 (*< Should diagonally adjacent pixels form a single object? *)
    "CheckForGridsAndDividers" -> True              (*< If we see things that look like grids/dividers, should we treat the specially, such as segmenting them into their own objects? *)
};

ARCParseInputAndOutputScenes[examples_List, opts:OptionsPattern[]] :=
    ARCMemoized[
        "MemoizationKey" -> {
            examples,
            opts
        }
    ]@
    ARCLogScope["ARCParseInputAndOutputScenes"]@
    Module[{},
        
        (* Detect the list of notable sub-images across all input and output scenes. *)
        notableSubImages =
            If [!TrueQ[OptionValue["SingleObject"]] && !ListQ[OptionValue["SubdivideInput"]],
                notableSubImages = Flatten[
                    MapIndexed[
                        Function[{example, exampleIndex},
                            Function[{inputOrOutput},
                                (* This isn't our final parse of the scene, just an initial parse to detect
                                   notable sub-images. *)
                                ReturnIfFailure@
                                ARCNotableSubImages[
                                    Function[{object},
                                        Sett[
                                            object,
                                            {
                                                (* Annotate these objects with the example they are from for
                                                   use by downstream code in ARCMakeObjectsForSubImages. *)
                                                "ExampleIndex" -> First[exampleIndex],
                                                "InputOrOutput" -> inputOrOutput
                                            }
                                        ]
                                    ] /@
                                        ReturnIfFailure[
                                            ARCParseScene[
                                                example[inputOrOutput],
                                                "ExampleIndex" -> First[exampleIndex],
                                                "InputOrOutput" -> inputOrOutput,
                                                "FindOcclusions" -> False,
                                                "Background" -> OptionValue["Background"],
                                                "FollowDiagonals" -> OptionValue["FollowDiagonals"],
                                                "InferPropertiesThatRequireFullObjectList" -> False,
                                                opts
                                            ]
                                        ]["Objects"],
                                    ImageWidth[example[inputOrOutput]],
                                    ImageHeight[example[inputOrOutput]]
                                ]
                            ] /@ {"Input", "Output"}
                        ],
                        examples
                    ]
                ];
                
            (* Combine the notable sub-images from each input/output example. *)
            ARCSortNotableSubImages@
            Values[
                Function[{group},
                    <|
                        "Image" -> group[[1, "Image"]],
                        "Count" -> Total[group[[All, "Count"]]],
                        "ExampleObjects" -> Flatten[group[[All, "ExampleObjects"]], 1]
                    |>
                ] /@ GroupBy[notableSubImages, Function[#["Image"]] -> Identity]
            ]
            ,
            {}
        ];
        
        (*ARCEcho["Notable sub images" -> ARCScene /@ notableSubImages[[All, "Image"]]];*)
        
        (* Parse each scene. *)
        MapIndexed[
            Function[{example, exampleIndex},
                ReturnIfFailure@
                ARCParseInputAndOutputScenes[
                    example["Input"],
                    example["Output"],
                    First[exampleIndex],
                    opts,
                    "NotableSubImages" -> notableSubImages
                ]
            ],
            examples
        ]
    ];

ARCParseInputAndOutputScenes[inputScene_ARCScene, outputScene_ARCScene, exampleIndex_Integer, OptionsPattern[]] :=
    Module[
        {
            inputSceneParseWithoutMultiColorCompositeObjects,
            inputSceneParseWithMultiColorCompositeObjects,
            inputSceneParsed,
            outputSceneParseWithoutMultiColorCompositeObjects,
            outputSceneParseWithMultiColorCompositeObjects,
            commonParseSceneOptions
        },
        
        commonParseSceneOptions = Sequence @@ {
            "FindOcclusions" -> OptionValue["FindOcclusions"],
            "Background" -> OptionValue["Background"],
            "FollowDiagonals" -> OptionValue["FollowDiagonals"],
            "CheckForGridsAndDividers" -> OptionValue["CheckForGridsAndDividers"]
        };
        
        If [TrueQ[OptionValue["SingleObject"]] || ListQ[OptionValue["SubdivideInput"]],
            Return[
                <|
                    "Input" ->
                        ReturnIfFailure@
                        ARCParseScene[
                            inputScene,
                            "SingleObject" -> OptionValue["SingleObject"],
                            "SubdivideInput" -> OptionValue["SubdivideInput"],
                            commonParseSceneOptions,
                            "ExampleIndex" -> exampleIndex,
                            "InputOrOutput" -> "Input"
                        ],
                    "Output" ->
                        ReturnIfFailure@
                        ARCParseScene[
                            outputScene,
                            "SingleObject" -> Or[
                                TrueQ[OptionValue["SingleObject"]],
                                ListQ[OptionValue["SubdivideInput"]]
                            ],
                            commonParseSceneOptions,
                            "ExampleIndex" -> exampleIndex,
                            "InputOrOutput" -> "Output"
                        ]
                |>,
                Module
            ]
        ];
        
        inputSceneParseWithoutMultiColorCompositeObjects =
            ReturnIfFailure@
            ARCParseScene[
                inputScene,
                "FormMultiColorCompositeObjects" -> False,
                "InferPropertiesThatRequireFullObjectList" -> False,
                "NotableSubImages" -> OptionValue["NotableSubImages"],
                commonParseSceneOptions,
                "ExampleIndex" -> exampleIndex,
                "InputOrOutput" -> "Input"
            ];
        
        outputSceneParseWithoutMultiColorCompositeObjects =
            ReturnIfFailure@
            ARCParseScene[
                outputScene,
                "FormMultiColorCompositeObjects" -> False,
                "InferPropertiesThatRequireFullObjectList" -> False,
                "NotableSubImages" -> OptionValue["NotableSubImages"],
                commonParseSceneOptions,
                "ExampleIndex" -> exampleIndex,
                "InputOrOutput" -> "Output"
            ];
        
        If [TrueQ[OptionValue["FormMultiColorCompositeObjects"]],
            
            inputSceneParseWithMultiColorCompositeObjects =
                ReturnIfFailure@
                ARCParseScene[
                    inputScene,
                    "FormMultiColorCompositeObjects" -> True,
                    "SingleColorObjects" -> inputSceneParseWithoutMultiColorCompositeObjects["Objects"],
                    "InferPropertiesThatRequireFullObjectList" -> False,
                    "NotableSubImages" -> OptionValue["NotableSubImages"],
                    commonParseSceneOptions,
                    "ExampleIndex" -> exampleIndex,
                    "InputOrOutput" -> "Input"
                ];
            
            outputSceneParseWithMultiColorCompositeObjects =
                ReturnIfFailure@
                ARCParseScene[
                    outputScene,
                    "FormMultiColorCompositeObjects" -> True,
                    "SingleColorObjects" -> outputSceneParseWithoutMultiColorCompositeObjects["Objects"],
                    "InferPropertiesThatRequireFullObjectList" -> False,
                    "NotableSubImages" -> OptionValue["NotableSubImages"],
                    commonParseSceneOptions,
                    "ExampleIndex" -> exampleIndex,
                    "InputOrOutput" -> "Output"
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
                    |>,
                    "NotableSubImages" -> OptionValue["NotableSubImages"],
                    commonParseSceneOptions,
                    "ExampleIndex" -> exampleIndex,
                    "InputOrOutput" -> "Input"
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
                    |>,
                    "NotableSubImages" -> OptionValue["NotableSubImages"],
                    commonParseSceneOptions,
                    "ExampleIndex" -> exampleIndex,
                    "InputOrOutput" -> "Output"
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
                    |>,
                    "NotableSubImages" -> OptionValue["NotableSubImages"],
                    commonParseSceneOptions,
                    "ExampleIndex" -> exampleIndex,
                    "InputOrOutput" -> "Input"
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
                    |>,
                    "NotableSubImages" -> OptionValue["NotableSubImages"],
                    commonParseSceneOptions,
                    "ExampleIndex" -> exampleIndex,
                    "InputOrOutput" -> "Output"
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
                ARCInferShapeAndShapes[region["Image"], {region["Color"]}],
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
    Module[{numericProperties, ruleConditionQuality},
        
        numericProperties = Select[properties, #["Type"] === "Integer" &];
        
        Join[
            properties,
            Association[
                Function[{propertyName},
                    If [MatchQ[propertyName, "Area"],
                        (* To beat out more specific / less general properties like Width.
                           e.g. 694f12f3
                           One downside is that this means that 0962bcdd favors Area.Rank for
                           its condition instead of Width, which isn't ideal, but that still
                           functionally works. *)
                        ruleConditionQuality = 0.95
                        ,
                        ruleConditionQuality = Nothing
                    ];
                    {
                        StringJoin[propertyName, ".Rank"] -> <|
                            "Type" -> "Integer",
                            "Rank" -> True,
                            "RankOf" -> propertyName,
                            "InverseRankProperty" -> propertyName <> ".InverseRank",
                            If [ruleConditionQuality =!= Nothing,
                                "RuleConditionQuality" -> ruleConditionQuality
                                ,
                                Nothing
                            ]
                        |>,
                        StringJoin[propertyName, ".InverseRank"] -> <|
                            "Type" -> "Integer",
                            "Rank" -> True,
                            "InverseRank" -> True,
                            "RankOf" -> propertyName,
                            If [ruleConditionQuality =!= Nothing,
                                "RuleConditionQuality" -> ruleConditionQuality
                                ,
                                Nothing
                            ]
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
    "MonochromeImage" -> <|
        "Type" -> "MonochromeImage",
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
        "RuleConditionQuality" -> 1.195
    |>,
    "Angle" -> <|
        "Type" -> "Angle",
        "Type2" -> "Angle"
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
    "VerticalLineSymmetry" -> <|
        "Type" -> "Boolean",
        "Type2" -> "Symmetry",
        "RuleConditionQuality" -> 0.8
    |>,
    "HorizontalLineSymmetry" -> <|
        "Type" -> "Boolean",
        "Type2" -> "Symmetry",
        "RuleConditionQuality" -> 0.8
    |>,
    "VerticalAndHorizontalLineSymmetry" -> <|
        "Type" -> "Boolean",
        "Type2" -> "Symmetry",
        "RuleConditionQuality" -> 0.8
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
    "YInverse" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue",
        "RuleConditionQuality" -> 0.5
    |>,
    "XInverse" -> <|
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
    "Y2Inverse" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue",
        "RuleConditionQuality" -> 0.5
    |>,
    "X2Inverse" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue",
        "RuleConditionQuality" -> 0.5
    |>,
    "YMiddle" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue",
        "RuleConditionQuality" -> 0.5
    |>,
    "XMiddle" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue",
        "RuleConditionQuality" -> 0.5
    |>,
    "XRelative" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue",
        "RuleConditionQuality" -> 0.5
    |>,
    "YRelative" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue",
        "RuleConditionQuality" -> 0.5
    |>,
    "ZOrder" -> <|
        "Type" -> "Integer",
        "Type2" -> "PositionDimensionValue"
    |>,
    "PrimarySizeDimension" -> <|
        "Type" -> "SizeDimension",
        "Type2" -> "SizeDimension"
    |>,
    "AspectRatio" -> <|
        "Type" -> "Integer",
        "Type2" -> "SizeDimensionRatio"
    |>,
    "HollowCount" -> <|
        "Type" -> "Integer",
        "Type2" -> "Count"
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
    "SurfacePixelCount" -> <|
        "Type" -> "Integer",
        "Type2" -> "Count"
    |>,
    (* The number of pixels in the scene with this color. *)
    "ColorUseCount" -> <|
        "Type" -> "Integer",
        "Type2" -> "Count"
    |>,
    "PixelPositions" -> <|
        "Type" -> "Region",
        "Type2" -> "Region"
    |>,
    (* Set in a rule condition when some or all of the matched objects need to first
       be formed from a group of non-contiguous objects in the scene. Not set on input
       objects. *)
    "Group" -> <|
        "RuleConditionQuality" -> 0.5
    |>,
    "ColorCount" -> <|
        "Type" -> "Integer",
        "Type2" -> "Count",
        (* Otherwise it will lose out to "Colors" for "6e02f1e3". *)
        "RuleConditionQuality" -> 0.9
    |>,
    "MostUsedColor" -> <|
        "Type" -> "Integer",
        "Type2" -> "Color",
        (* Adopting this from "ColorCount", not sure if it's needing to be high like this. *)
        "RuleConditionQuality" -> 0.9
    |>,
    "SecondMostUsedColor" -> <|
        "Type" -> "Integer",
        "Type2" -> "Color",
        (* Adopting this from "ColorCount", not sure if it's needing to be high like this. *)
        "RuleConditionQuality" -> 0.9
    |>,
    "ImageUseCount" -> <|
        "Type" -> "Integer",
        "Type2" -> "Count",
        "RuleConditionQuality" -> 0.5
    |>,
    "ShapeUseCount" -> <|
        "Type" -> "Integer",
        "Type2" -> "Count",
        "RuleConditionQuality" -> 0.5
    |>,
    "GeneralShapeUseCount" -> <|
        "Type" -> "Integer",
        "Type2" -> "Count",
        "RuleConditionQuality" -> 0.5
    |>,
    "GridPosition" -> <|
        "Type" -> "GridPosition",
        "Type2" -> "Position"
    |>
|>;

$properties = ARCAddRankProperties[$properties];

(*!
    \function ARCSetPropertyListPositions
    
    \calltable
        ARCSetPropertyListPositions[] '' Updates $propertyListPositions to specify where a given property occurs in $properties.
    
    \maintainer danielb
*)
Clear[ARCSetPropertyListPositions];
ARCSetPropertyListPositions[] :=
    Module[{},
        (* Given a property, what position is it within the list of properties? *)
        $propertyListPositions =
            MapIndexed[
                Function[{property, position},
                    property -> First[position]
                ],
                Keys[$properties]
            ]
    ]

ARCSetPropertyListPositions[];

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
    Module[{rectangleClassification},
        {
            If [TrueQ[OptionValue["IncludeImageShapes"]],
                ARCImageShapes[image]
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
                rectangleClassification = ARCClassifyRectange[image];
                ARCClassifySquare[image, "RectangleClassification" -> rectangleClassification],
                rectangleClassification,
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
Options[ARCClassifySquare] =
{
    "RectangleClassification" -> Null       (*< The return value of ARCClassifyRectangle if already known. *)
};
ARCClassifySquare[image_List, OptionsPattern[]] :=
    Module[{rectangle},
        If [And[
                ImageWidth[image] === ImageHeight[image],
                (
                    rectangle = Replace[
                        OptionValue["RectangleClassification"],
                        Null :> ARCClassifyRectange[image]
                    ]
                ) =!= Nothing
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
    Module[
        {
            interiorColors,
            interiorColor,
            borderColors,
            borderColor,
            renderable
        },
        (* Question: Should rectangles with a width or height of 1 be given the "Rectangle"
                     designation in addition to "Line"? *)
        If [Or[
                (* All pixels are non-background color. *)
                MatchQ[
                    image,
                    Alternatives[
                        List[
                            Repeated[
                                List[
                                    Repeated[Except[$nonImageColor]]
                                ]
                            ]
                        ]
                    ]
                ],
                (* Border is all non-background color. *)
                MatchQ[
                    image,
                    (* Empty rectangle. *)
                    List[
                        (* Horizontal line. *)
                        List[Repeated[Except[$nonImageColor]]],
                        Repeated[
                            List[
                                Except[$nonImageColor],
                                Repeated[_, {0, Infinity}],
                                Except[$nonImageColor]
                            ],
                            {0, Infinity}
                        ],
                        (* Horizontal line. *)
                        List[Repeated[Except[$nonImageColor]]]
                    ]
                ]
            ],
            
            interiorColors =
                If [And[
                        Length[image] >= 2,
                        Length[image[[1]]] >= 2
                    ],
                    DeleteDuplicates[Flatten[image[[2 ;; -2, 2 ;; -2]]]]
                    ,
                    {}
                ];
            
            borderColors =
                DeleteDuplicates@
                Join[
                    image[[1, 1 ;; -1]],
                    image[[1 ;; -1, 1]],
                    image[[1 ;; -1, -1]],
                    image[[-1, 1 ;; -1]]
                ];
            
            If [MatchQ[interiorColors, {Except[$nonImageColor]}],
                interiorColor = interiorColors[[1]]
            ];
            
            If [MatchQ[borderColors, {_}],
                borderColor = borderColors[[1]]
            ];
            
            (* If we know this shape and the colors of the border and inner area, could we
               render the object? If the border or interior aren't solid colors, then we
               cannot. *)
            renderable = MatchQ[
                image,
                (* Empty rectangle. *)
                List[
                    (* Horizontal line. *)
                    List[Repeated[border:Except[$nonImageColor]]],
                    Repeated[
                        List[
                            border:Except[$nonImageColor],
                            Repeated[interior_, {0, Infinity}],
                            border:Except[$nonImageColor]
                        ],
                        {0, Infinity}
                    ],
                    If [ImageHeight[image] > 1,
                        (* Horizontal line. *)
                        List[Repeated[border:Except[$nonImageColor]]]
                        ,
                        Nothing
                    ]
                ]
            ];
            
            <|
                "Name" -> "Rectangle",
                Which[
                    Or[
                        Length[image] <= 2,
                        Length[image[[1]]] <= 2,
                        MatchQ[DeleteDuplicates[Flatten[image[[2 ;; -2, 2 ;; -2]]]], {Except[$nonImageColor]}]
                    ],
                        "Filled" -> True,
                    MatchQ[interiorColors, {$nonImageColor}],
                        "Filled" -> False,
                    True,
                        Nothing
                ],
                If [And[
                        SpecifiedQ[interiorColor],
                        SpecifiedQ[borderColor],
                        interiorColor =!= borderColor
                    ],
                    <|
                        "Interior" -> <|"Color" -> interiorColor|>,
                        "Border" -> <|"Color" -> borderColor|>
                    |>
                    ,
                    Nothing
                ],
                (* We need to specify this so that when choosing which item from "Shapes" to
                   use as the singular "Shape" value, we avoid using a shape if it isn't
                   renderable. This is because we want to ensure that when finding generalized
                   rule expressions, we are guaranteed that Shape + Color, if inferrable, are
                   enough to render an object. e.g. 37d3e8b2 *)
                If [!TrueQ[renderable],
                    "Renderable" -> False
                    ,
                    Nothing
                ]
            |>
            ,
            Nothing
        ]
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
        Function[{direction},
            (* Rotate by 90 degrees. *)
            image = ARCFlipImage[imageIn, direction];
            If [(classification = classifyFunction[image]) =!= Nothing,
                Join[
                    classification,
                    <|
                        "Transform" -> <|
                            "Type" -> "Flip",
                            "Direction" -> direction
                        |>
                    |>
                ]
                ,
                Nothing
            ]
        ] /@ {"Vertical", "Horizontal"}
    ]

(*!
    \function ARCIndent
    
    \calltable
        ARCIndent[expr] '' Indents the given ARC expression, keeping appropriate things formatted.
    
    \maintainer danielb
*)
Clear[ARCIndent];

ARCIndent[failure_Failure] := failure

ARCIndent[expr_, opts:OptionsPattern[]] :=
    Module[{temporaryAssociationSymbol, expr2},
        Indent3[
            expr2 = Replace2[
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
            (* If named entities have additional key/values beyond "Name", then we don't want to
               format them, otherwise if we export the expression to the web, people won't be able
               to see those extended key/value pairs. *)
            "FormatNamedAssociations" -> MatchQ[
                Cases[expr2, KeyValuePattern["Name" -> _], Infinity],
                {Repeated[Association["Name" -> _]]}
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
    If [ARCClassifyPixel[image] =!= Nothing,
        {
            <|"Name" -> "Line", "Angle" -> 0|>,
            <|"Name" -> "Line", "Angle" -> 90|>,
            <|"Name" -> "Line", "Angle" -> 135|>,
            <|"Name" -> "Line", "Angle" -> 45|>
        },
        Which[
            (* Vertical *)
            MatchQ[
                image,
                List[
                    Repeated[{c:Except[$nonImageColor]}, {1, Infinity}]
                ]
            ],
                (* TODO: If the pixel is of length 1, then technically it isn't just this
                        type of line but all rotations. *)
                <|"Name" -> "Line", "Angle" -> 90|>,
            (* Horizontal *)
            MatchQ[
                image,
                {{Repeated[c:Except[$nonImageColor], {1, Infinity}]}}
            ],
                <|"Name" -> "Line", "Angle" -> 0|>,
            (* Diagonal *)
            And[
                ImageWidth[image] === ImageHeight[image],
                ImageWidth[image] > 1,
                With[{width = ImageWidth[image]},
                    MatchQ[
                        image,
                        Function[{y},
                            Flatten[
                                {
                                    Table[$nonImageColor, {y - 1}],
                                    Except[$nonImageColor],
                                    Table[$nonImageColor, {width - y}]
                                },
                                1
                            ]
                        ] /@ Range[ImageHeight[image]]
                    ]
                ]
            ],
                <|"Name" -> "Line", "Angle" -> 135|>,
            And[
                ImageWidth[image] === ImageHeight[image],
                ImageWidth[image] > 1,
                With[{width = ImageWidth[image]},
                    MatchQ[
                        image,
                        Function[{y},
                            Flatten[
                                {
                                    Table[$nonImageColor, {width - y}],
                                    Except[$nonImageColor],
                                    Table[$nonImageColor, {y - 1}]
                                },
                                1
                            ]
                        ] /@ Range[ImageHeight[image]]
                    ]
                ]
            ],
                <|"Name" -> "Line", "Angle" -> 45|>,
            True,
                Nothing
        ]
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
    "FormMultiColorCompositeObjects" -> True,       (*< Whether connected single-color objects should be combined to form multi-color composite objects. Only applies to some down values. *)
    "SingleObject" -> False,                        (*< Should all non-background pixels be treated as part of a single object, even if they are non-contiguous? *)
    "Return" -> "BackgroundColor"                   (*< Can also be set to "Details" to return not only the background color but details on how strong the background color was, etc. *)
};
ARCInferBackgroundColor[example_, OptionsPattern[]] :=
    Module[{scenes, colorCounts, stats, res, blackAsFallback = False, ratioRequirement = Missing[]},
        
        scenes = Cases[example, _ARCScene, {0, Infinity}][[All, 1]];
        
        colorCounts = Normal[Reverse[Sort[Counts[Flatten[scenes]]]]];
        
        If [Length[colorCounts] === 1,
            (* What should we do if the entire image is a single color? For the moment
               we'll use black as the background color, but this probably isn't what we'd
               want in many cases. *)
            Return[0, Module]
        ];
        
        stats = <|
            (* The ratio of the most common color to the second-most-common color. *)
            "Ratio" -> Round[Normal[colorCounts][[1, 2]] / Normal[colorCounts][[2, 2]], 0.01],
            "ColorCounts" -> colorCounts
        |>;
        
        (*ARCEcho[example -> stats];*)
        
        (* It's not clear to me how this should be done, so for now we'll use some heuristics.
           We want to be cautious about choosing a non-black background, since the vast
           majority of scenes will use black as the background color, so the cost of non-black
           false positives will be high, and quickly diminish or eliminate the benefit of having
           a background color detector. *)
        res = Which[
            stats["Ratio"] >= 10,
                colorCounts[[1, 1]],
            And[
                If [Or[
                        (* If we're treating the entire scene as a single object, it's more likely
                           that the output will not have much black background showing, so we
                           should be more conservative about using a non-black background.
                           For example, a740d043 training example 3's output has a ratio of 2, but
                           we don't want to treat it's background as gray. *)
                        TrueQ[OptionValue["SingleObject"]],
                        (* Previously we were disabling this mode for this situation, but in
                           a740d043, that meant that this mode treated the blue background
                           as not the background color, which led to a crazy rule set that
                           worked for the training examples but not the test example.
                           So, we will allow this mode for this case, but we will require
                           a stronger ratio to consider a non-black background color.
                           For a740d043, I believe the ratio is >= 5.8.  *)
                        OptionValue["FormMultiColorCompositeObjects"] === False
                    ],
                    stats["Ratio"] >= (ratioRequirement = 4)
                    ,
                    stats["Ratio"] >= (ratioRequirement = 2)
                ],
                (* The second most common color isn't black. *)
                colorCounts[[2, 1]] =!= 0
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
                (*OptionValue["FormMultiColorCompositeObjects"] =!= False*)
                (* See comment higher up explaining that we used to strictly disable this,
                   but now allow it, but require a higher ratio. *)
            ],
                If [colorCounts[[1, 1]] =!= 0 && !MissingQ[ratioRequirement],
                    stats["RatioRequirement"] = ratioRequirement
                ];
                colorCounts[[1, 1]],
            True,
                blackAsFallback = True;
                0
        ];
        
        If [OptionValue["Return"] === "Details",
            <|
                "Background" -> res,
                If [res === 0,
                    "BlackAsFallback" -> blackAsFallback
                    ,
                    Nothing
                ],
                stats
            |>
            ,
            res
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
    \function ARCFormCompositeObject
    
    \calltable
        ARCFormCompositeObject[scene, object, components] '' Forms a composite object.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFormCompositeObject]
    
    \maintainer danielb
*)
Clear[ARCFormCompositeObject];
Options[ARCFormCompositeObject] =
{
    "Shape" -> Automatic    (*< The "Shape" property value to use. *)
};
ARCFormCompositeObject[scene_ARCScene, objectIn_, components_List, OptionsPattern[]] :=
    Module[
        {
            object = objectIn,
            sceneImage,
            image,
            pixelPositions,
            colors,
            posX,
            posY
        },
        If [Length[components] === 1,
            (* If an object only has a single component, don't populate its "Components"
               property. *)
            components[[1]]
            ,
            (*ARCEcho[SimplifyObjects[components]];*)
            
            If [MissingQ[object["UUID"]],
                object["UUID"] = CreateUUID[]
            ];
            
            If [MissingQ[object["PixelPositions"]],
                object["PixelPositions"] = Sort[
                    Join @@ components[[All, "PixelPositions"]]
                ]
            ];
            
            If [OptionValue["Shape"] =!= Automatic,
                object["Shape"] = OptionValue["Shape"]
            ];
            
            If [MissingQ[object["Position"]],
                object["Position"] = {
                    Min[components[[All, "Y"]]],
                    Min[components[[All, "X"]]]
                }
            ];
            
            If [MissingQ[object["Y"]],
                object["Y"] = object["Position"][[1]]
            ];
            
            If [MissingQ[object["X"]],
                object["X"] = object["Position"][[2]]
            ];
            
            If [MissingQ[object["Width"]],
                object["Width"] = Plus[
                    Max[components[[All, "X2"]]],
                    -object["X"],
                    1
                ]
            ];
            
            If [MissingQ[object["Height"]],
                object["Height"] = Plus[
                    Max[components[[All, "Y2"]]],
                    -object["Y"],
                    1
                ]
            ];
            
            If [!IntegerQ[object["Color"]],
                object = KeyDrop[object, "Color"]
            ];
            
            (*ARCEcho[object];*)
            
            object = Sett[
                object,
                With[{position = object["Position"]},
                    {
                        "Image" -> (
                            
                            sceneImage = scene[[1]];
                            image = Table[$nonImageColor, {object["Height"]}, {object["Width"]}];
                            posY = position[[1]];
                            posX = position[[2]];
                            pixelPositions = object["PixelPositions"];
                            
                            Function[{pixelPosition},
                                image[[
                                    pixelPosition[[1]] - posY + 1,
                                    pixelPosition[[2]] - posX + 1
                                ]] = sceneImage[[Sequence @@ pixelPosition]]
                            ] /@ pixelPositions;
                            
                            ARCScene[image]
                        ),
                        "Colors" -> (
                            (* We want to sort the values so that the object references created
                                by functions like ARCMakeObjectsReferenceable can be turned into
                                patterns and then matching objects selected. *)
                            colors =
                                Sort@
                                DeleteDuplicates@
                                Flatten[components[[All, "Colors"]]]
                        ),
                        Normal@
                        ARCInferShapeAndShapes[image, colors],
                        "Components" -> ARCSetRelativeXY[
                            components,
                            object
                        ]
                    }
                ]
            ];
            
            (* Incase Color got set to Missing above due to being multi-colored. *)
            object = DeleteMissing[object];
            
            object = ReturnIfFailure[ARCInferObjectProperties[object, ImageWidth[scene], ImageHeight[scene]]];
            
            object
        ]
    ]

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
    Module[
        {
            singleColorObjectsByUUID,
            singleColorObjectsByPixelPosition,
            res,
            singleColorObjectsToCombine
        },
        
        singleColorObjectsByUUID = ObjectsByAttribute[singleColorObjects, "UUID"];
        singleColorObjectsByPixelPosition = ObjectsByAttribute[singleColorObjects, "PixelPosition"];
        
        res = Function[{object},
            
            singleColorObjectsToCombine = Lookup[
                singleColorObjectsByUUID,
                DeleteDuplicates@
                Lookup[
                    singleColorObjectsByPixelPosition,
                    object["PixelPositions"],
                    ReturnFailure[
                        "ObjectNotFound",
                        "An object couldn't be found by its pixel positions while forming composite objects.",
                        "PixelPositions" -> object["PixelPositions"],
                        "Lookup" -> singleColorObjectsByPixelPosition
                    ]
                ],
                ReturnFailure[
                    "ObjectNotFound",
                    "An object couldn't be found by its UUID while forming composite objects."
                ]
            ];
            
            If [Length[singleColorObjectsToCombine] > 1,
                If [(* If there are two rectangles that are just connected on their corner, then
                       by default we won't combine them into a single object. e.g. 445eab21 *)
                    !And[
                        Length[singleColorObjectsToCombine] === 2,
                        TrueQ[ARCTwoDiagonalRectanglesQ @@ singleColorObjectsToCombine]
                    ],
                    ARCFormCompositeObject[
                        scene,
                        object,
                        singleColorObjectsToCombine
                    ]
                    ,
                    Sequence @@
                    singleColorObjectsToCombine
                ]
                ,
                (* Just a single object, so no need to form a composite object. *)
                singleColorObjectsToCombine[[1]]
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
Options[ARCFindObjectMapping] =
{
    "FormMultiColorCompositeObjects" -> True,       (*< Whether connected single-color objects should be combined to form multi-color composite objects. Only applies to some down values. *)
    "SingleObject" -> Automatic,                    (*< Should all non-background pixels be treated as part of a single object, even if they are non-contiguous? *)
    "FollowDiagonals" -> Automatic,                 (*< Should diagonally adjacent pixels form a single object? *)
    "CheckForGridsAndDividers" -> Automatic         (*< If we see things that look like grids/dividers, should we treat the specially, such as segmenting them into their own objects? *)
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
                (* We don't know the example number here, so use 1. *)
                1,
                opts
            ];
        
        (*ARCEcho2[parsedScenes["Output"]];*)
        
        ARCFindObjectMapping[
            parsedScenes["Input"],
            parsedScenes["Output"],
            opts
        ]
    ]

ARCFindObjectMapping[input_Association, output_Association, opts:OptionsPattern[]] :=
    ARCLogScope["ARCFindObjectMapping"]@
    Module[
        {
            outputObjects,
            outputObjectsAvailableToMapTo,
            inputObjects,
            inputObjectsHandled,
            mapping,
            objectsNotMappedTo,
            objectsNotMappedFrom,
            res
        },
        
        outputObjectsAvailableToMapTo = outputObjects = output["Objects"];
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
                            ARCFindObjectMapping[
                                object,
                                outputObjectsAvailableToMapTo,
                                inputObjects,
                                output,
                                opts
                            ],
                        {
                            HoldPattern[Rule][inputObject_, outputObject_] :> (
                                (* This call returned a single mapping from our input object. *)
                                AppendTo[inputObjectsHandled, inputObject];
                                If [And[
                                        inputObject["Position"] == outputObject["Position"],
                                        inputObject["Width"] == outputObject["Width"],
                                        inputObject["Height"] == outputObject["Height"]
                                    ],
                                    (* If the input and output objects are at the same position
                                       and the same size, then remove the output object from
                                       the list of objects that can be mapped to so that we don't
                                       end up with the unwanted situation of multiple input
                                       objects mapping to it. e.g. 2dee498d (example 1) *)
                                    outputObjectsAvailableToMapTo = DeleteCases[
                                        outputObjectsAvailableToMapTo,
                                        outputObject
                                    ];
                                ];
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
        
        (* If both the input and output consist of a single object, then we'll produce a mapping
           between them. For the moment we'll only do this in SingleObject mode. e.g. ff28f65a
           The reason we don't do this immediately is for cases where the object has been
           rotated, etc, where the deeper ARCFindObjectMapping down value detects that and
           specifies a Transform rotation, etc. *)
        If [And[
                MatchQ[Values[mapping], {_Missing}],
                TrueQ[OptionValue["SingleObject"]],
                Length[input["Objects"]] === 1 && Length[output["Objects"]] === 1
            ],
            Return[
                <|
                    input["Objects"][[1]] -> output["Objects"][[1]]
                |>,
                Module
            ]
        ];
        
        (* Are there any many-to-one mappings that we want to fix due to one of the objects
           being an exact image match and one or more not being an exact match? e.g. a87f7484 *)
        mapping =
            ReturnIfFailure@
            ARCFixUnwantedManyToOneMappings[mapping];
        
        (*ARCEcho[SimplifyObjects[mapping]];*)
        
        objectsNotMappedTo =
            ReturnIfFailure@
            ARCOutputObjectsNotMappedTo[outputObjects, mapping];
        
        objectsNotMappedFrom =
            Keys@
            Select[mapping, MissingQ];
        
        (* If we have an equal number of objects in the input and output that haven't been mapped
           yet, and they uniquely overlap each other, then add them as mappings. *)
        If [Length[objectsNotMappedFrom] === Length[objectsNotMappedTo],
            Replace[
                Function[{object},
                    ARCMappingToObjectWithOverlappingFilledInPixels[
                        object,
                        objectsNotMappedTo,
                        (* e.g. surface-pixel-count *)
                        "OverlapRequired" -> "Overlap",
                        (* e.g. surface-pixel-count *)
                        "Colors" -> "Overlap"
                    ]
                ] /@ objectsNotMappedFrom,
                newMappings: {Repeated[HoldPattern[Rule][_, _Association]]} :> (
                    mapping = Join[mapping, Association[newMappings]]
                )
            ]
        ];
        
        (* Are there any objects in the output that don't have a corresponding input object? *)
        mapping = <|
            mapping,
            ARCAddedObjectsMapping@
            ARCOutputObjectsNotMappedTo[outputObjects, mapping]
        |>;
        
        mapping =
            ReturnIfFailure@
            ARCGroupByOutputObject[mapping, outputObjects, input["Background"], input["Width"], input["Height"]];
        
        ReturnIfNotMissing@
        ARCConsiderMappingObjectsByColor[inputObjects, outputObjects, output, mapping];
        
        mapping
        
        (* TODO: The return value doesn't indicate which objects exist in the output
                 but don't exist in the input. *)
    ]

ARCFindObjectMapping[object_Association, objectsToMapTo_List, inputObjects_List, outputScene_Association, OptionsPattern[]] :=
    Module[
        {
            matchingComponent,
            mappedToObject,
            possibleMatches,
            inputsObjectsOfType,
            matchingComponents,
            removeEmptySpaceQ
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
            Block[{},
                
                Function[{component},
                    {mappedToObject, matchingComponent} =
                        ARCObjectWithComponent[objectsToMapTo, component];
                    If [!MissingQ[mappedToObject],
                        Return[
                            matchingComponents = DeleteMissing[
                                Function[{component2},
                                    ARCGetMatchingComponent[mappedToObject, component2]
                                ] /@ object["Components"]
                            ];
                            If [Length[matchingComponents] === Length[object["Components"]],
                                Return[Null, Block]
                                ,
                                (* Not all components from the input were present in the output. *)
                                mappedToObject = Null
                            ];
                            ,
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
        
        outputObjectAtPosition =
            With[{objectShapeImage = ARCObjectImageShape[object]},
                SelectFirst[
                    objectsToMapTo,
                    And[
                        #["Position"] == object["Position"],
                        (* Discard cases where the "transformed" image-shape is actually
                           the same as our object's image-shape. For example, if a vertical
                           or horizontal flip of our image is exactly the same as the image
                           itself due to our object being symmetrical, then for now we'll
                           avoid assuming that the object has been flipped, as that would be
                           extremely presumptuous. That said, there may be cases where it
                           _was_ flipped, so we'll need to put some more thought into how
                           to support those cases.
                           NOTE: Now that ARCImageFlips (etc) by default doesn't include
                                 no-op transforms, this condition is perhaps no longer
                                 needed here. *)
                        ARCObjectImageShape[#] =!= objectShapeImage
                    ] &
                ]
            ];
        
        (* Is the output object at this position a transform (e.g. rotation) of our object's
           image? *)
        If [!MissingQ[outputObjectAtPosition],
            Replace[
                ARCImageTransforms[object, outputObjectAtPosition["Image"]],
                transforms: {__} :> Return[
                    object -> Append[
                        outputObjectAtPosition,
                        "Transforms" -> transforms
                    ],
                    Module
                ]
            ]
        ];
        
        (* Check if the object moved. *)
        possibleMatches = Select[
            objectsToMapTo,
            #["Image"] == object["Image"] &
        ];
        (* If we weren't able to find the object in the output, but we're treating the scene
           as a single object, then check if removing empty space from the input results
           in a match. *)
        If [And[
                possibleMatches === {},
                TrueQ[OptionValue["SingleObject"]]
            ],
            With[{prunedImage = ARCRemoveEmptySpace[object["Image"], $nonImageColor, "PruneLeftAndAbove" -> True]},
                If [prunedImage =!= object["Image"],
                    removeEmptySpaceQ = True;
                    possibleMatches = Select[
                        objectsToMapTo,
                        #["Image"] == prunedImage &
                    ]
                ]
            ]
        ];
        Which[
            MatchQ[possibleMatches, {_}],
                (* There's a single object in the output with this color + shape, so we'll treat
                   this as a moved object. *)
                mappedToObject = possibleMatches[[1]];
                mappedToObject["Transforms"] = {
                    <|
                        "Type" -> "Move",
                        "Position" -> ToXY @ mappedToObject["Position"],
                        "Offset" -> ToXY[mappedToObject["Position"] - object["Position"], "RemoveZeroes" -> True],
                        If [TrueQ[removeEmptySpaceQ],
                            "RemoveEmptySpace" -> True
                            ,
                            Nothing
                        ]
                    |>
                };
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
                                mappedToObject["Transforms"] = {
                                    <|
                                        "Type" -> "Move",
                                        "Position" -> ToXY @ mappedToObject["Position"],
                                        "Offset" -> ToXY[offset, "RemoveZeroes" -> True]
                                    |>
                                };
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
           our input object is fully contained within, or vice versa. *)
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
                                ARCMappingForReplacedObject[object, mappedToObject],
                                Module
                            ]
                        )
                    ]
                )
            }
        ];
        (* e.g. d5d6de2d *)
        Replace[
            Select[
                objectsToMapTo,
                ObjectWithinQ[#, object] &
            ],
            {
                {mappedToObject_} :> (
                    Replace[
                        Select[
                            inputObjects,
                            ObjectWithinQ[mappedToObject, #] &
                        ],
                        {_} :> (
                            (* Since there was only 1 output object within this
                               input object, we'll create a mapping. *)
                            Return[
                                ARCMappingForReplacedObject[object, mappedToObject],
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
        
        (* If there is only one object in the input and only one object in the output.
           e.g. A79310A0 *)
        If [And[
                Length[inputObjects] === 1,
                Length[objectsToMapTo] === 1,
                (* For the moment we'll be conservative and require them to have the
                   same shape, or the same colors. *)
                Or[
                    And[
                        Or[
                            object["Shape"] === objectsToMapTo[[1, "Shape"]],
                            And[
                                MatchQ[object["Shape"], KeyValuePattern["Name" -> _]],
                                MatchQ[objectsToMapTo[[1, "Shape"]], KeyValuePattern["Name" -> _]],
                                object["Shape", "Name"] === objectsToMapTo[[1, "Shape", "Name"]]
                            ]
                        ],
                        object["Width"] === objectsToMapTo[[1, "Width"]],
                        object["Height"] === objectsToMapTo[[1, "Height"]]
                    ],
                    object["Colors"] === objectsToMapTo[[1, "Colors"]]
                ]
            ],
            Return[
                object -> objectsToMapTo[[1]],
                Module
            ]
        ];
        
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
            object:Alternatives[
                temporaryAssociationSymbol[___, "UUID" -> _, ___],
                temporaryAssociationSymbol[___, "Image" -> _ARCScene, ___]
             ] :>
                KeyTake[Association @@ object, {"Image", "Position", "GridOrDivider", "Transform", "Transforms", Sequence @@ OptionValue["ExtraKeys"]}],
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
                                    "ZOrder",
                                    "Transform",
                                    "Transforms"
                                }
                            ],
                            <|
                                "Example" -> exampleIndex,
                                "Input" -> inputObject,
                                "Output" ->
                                    (* The RHSs make use of
                                       "Position" -> <|"RelativePosition" -> ...|>
                                       in some cases, which we don't want when calling
                                       ARCFindRulesForGeneratedObjects, so we revert that. *)
                                    Replace[
                                        rhs,
                                        KeyValuePattern["Position" -> KeyValuePattern["RelativePosition" -> _]] :> (
                                            Sett[
                                                rhs,
                                                "Position" -> {
                                                    rhs["Position", "Y"],
                                                    rhs["Position", "X"]
                                                }
                                            ]
                                        )
                                    ]
                            |>
                        ];
                    
                    If [Complement[Normal[conclusionKeysFromInput], Normal[inputObject]] === {},
                        conclusion = <|
                            "Same" -> True,
                            conclusion
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
                                   populate a property which is the colorless form of the
                                   image. *)
                                (* e.g. 3ac3eb23 *)
                                conclusion = Prepend[conclusion, "MonochromeImage" -> ARCToMonochrome[conclusion["Image"], $nonImageColor]],
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
    "SettleForOneExamplePerRule" -> True,               (*< If we can't find a workable rule set supported by 2+ examples per rule, should we try again and settle for 1+ examples per rule? *)
    "SingleObject" -> Automatic,                        (*< Should all non-background pixels be treated as part of a single object, even if they are non-contiguous? *)
    "Denoise" -> Automatic,                             (*< Should we consider removing noise from the image? *)
    "SubdivideInput" -> False,                          (*< If {rowCount, columnCount} is passed in, we subdivide the input into a grid of objects and then try to find rules. e.g. 2dee498d *)
    "AllowSubdividing" -> True,                         (*< Should we consider subdividing the input and/or output scenes? *)
    "FindOcclusions" -> True,                           (*< Whether we should consider possible occlusions when interpreting the scene. *)
    "Background" -> Automatic,                          (*< The background color of scenes. *)
    "FollowDiagonals" -> Automatic,                     (*< Should diagonally adjacent pixels form a single object? *)
    "CheckForGridsAndDividers" -> Automatic,            (*< If we see things that look like grids/dividers, should we treat the specially, such as segmenting them into their own objects? *)
    "CheckForImputation" -> True,                       (*< Should we check for imputation? *)
    "CheckForPatternFill" -> True,                      (*< Should we check for pattern fill rules? *)
    
    "UnnormalizedConclusionGroup" -> Missing[]          (*< If finding rules for a normalized conclusion group, we need to pass in the unnormalized conclusion group for use in updating the `unhandled` list. Only used by one of the down values. *)
};
ARCFindRules[examplesIn_List, opts:OptionsPattern[]] :=
    (* When running the training or evaluation sets in parallel, tasks take about 50% longer to
       execute as compared to when they are run in serial, so this maximum time needs to take
       that into account. *)
    ARCTimeConstrained[
        Quantity[
            If [MatchQ[
                    $file,
                    "6773b310" | "0d3d703e" | "3194b014" |
                    (* These started failing Oct 1 in training test runs, but didn't fail
                       when I ran them locally, so adding them here experimentally. *)
                    "1b2d62fb" | "1f876c06" | "22eb0ac0" | "746b3537" | "8efcae92" | "90c28cc7"
                ],
                (* If an input is known to be slow, but should be working, then we give
                   it lots of time to try to avoid false positive failures. *)
                180
                ,
                55
            ],
            "Seconds"
        ]
    ]@
    Internal`InheritedBlock[{$memoization, $singleObject},
    Function[{expr},
        If [!TrueQ[$disableARCLogScopes],
            ClearLog[$repo]
        ];
        expr,
        {HoldAllComplete}
    ]@
    ARCLogScope["ARCFindRules"]@
    Module[
        {
            examples = examplesIn,
            workingRulesFound,
            res,
            foundRulesQ,
            foundRules2Q,
            existingRulesScore,
            denoiseResult,
            (* The parsed examples using the standard parsing approach, if computed. *)
            parsedExamples,
            backgroundDetails,
            semiParsedExamples,
            thisBackground
        },
        
        If [$memoization === None,
            $memoization = CreateMemoizationFunction[]
        ];
        
        If [TrueQ[OptionValue["SingleObject"]],
            $singleObject = True
        ];
        
        (* Check whether these are examples of a rectangle in an input that can be imputed
           using symmetry. *)
        If [TrueQ[OptionValue["CheckForImputation"]],
            (* For now we'll just check for scene symmetry in the first example. *)
            ARCLogScope["CheckForImputation"]@
            With[{symmetryResult = ReturnIfFailure[ARCFindSymmetry[examples[[1, "Input"]]]]},
                Replace[
                    ARCCheckForImputedRectangleForSymmetry[symmetryResult],
                    res_Association :> Return[<|"Rules" -> res|>, Module]
                ];
                (* Check for imputation repair involving a grid fill pattern. *)
                Replace[
                    (* For now we'll just use the first example. *)
                    (* e.g. 29ec7d0e *)
                    ReturnIfFailure@
                    ARCCheckForImputation[examples[[1, "Input"]], examples[[1, "Output"]]],
                    res_ARCScene :> Return[
                        <|
                            "Rules" -> <|
                                "Type" -> "Imputation",
                                "Pattern" -> "GridFill",
                                "Output" -> "RepairedScene"
                            |>
                        |>,
                        Module
                    ]
                ];
                If [TrueQ[ARCCheckForSceneRepairUsingImputationQ[examples]],
                    If [MatchQ[symmetryResult, _Association],
                        (* Check for imputation repair using symmetry. *)
                        Replace[
                            (* For now we'll just use the first example. *)
                            ReturnIfFailure@
                            ARCCheckForImputationUsingSymmetry[
                                examples[[1, "Input"]],
                                symmetryResult
                            ],
                            res_ARCScene :> Return[
                                <|
                                    "Rules" -> <|
                                        "Type" -> "Imputation",
                                        "Pattern" -> "Symmetry",
                                        "Output" -> "RepairedScene"
                                    |>
                                |>,
                                Module
                            ]
                        ]
                    ]
                ]
            ]
        ];
        
        If [TrueQ[OptionValue["CheckForPatternFill"]],
            
            semiParsedExamples = MapIndexed[
                Function[{example, index},
                    thisBackground = ARCInferBackgroundColor[example["Input"]];
                    <|
                        "Input" -> Append[
                            ARCSceneObject[
                                example["Input"],
                                thisBackground,
                                Missing[]
                            ],
                            "Background" -> thisBackground
                        ]
                    |>
                ],
                examples
            ];
            
            (*ARCEcho2["semiParsedExamples" -> semiParsedExamples];*)
            
            Replace[
                ARCCheckForRepeatingPattern[
                    examples,
                    "Background" -> OptionValue["Background"],
                    "SemiParsedExamples" -> semiParsedExamples
                ],
                rule_Association :> (
                    Replace[
                        {
                            ARCGeneralizeConclusionValueNonRecursive[
                                "Width",
                                ImageWidth[#["Output"]] & /@ examples,
                                semiParsedExamples
                            ],
                            ARCGeneralizeConclusionValueNonRecursive[
                                "Height",
                                ImageHeight[#["Output"]] & /@ examples,
                                semiParsedExamples
                            ]
                        },
                        {
                            widthExpression: Except[_Missing],
                            heightExpression: Except[_Missing]
                        } :> (
                            Return[
                                <|
                                    "Width" -> widthExpression,
                                    "Height" -> heightExpression,
                                    "Rules" -> rule
                                |>,
                                Module
                            ]
                        )
                    ]
                )
            ]
        ];
        
        workingRulesFound[] := (
            TrueQ[
                If [!foundRulesQ,
                    False
                    ,
                    TrueQ[ARCWorkingQ[examples, res]]
                ]
            ]
        );
        
        (*ReturnIfDifferingInputAndOutputSize[examples];*)
        
        (* NOTE: We don't want to ReturnIfFailure here, since there may be cases where we are
                 unable to find rules when forming composite objects, but if we try again
                 without forming composite objects below, it may work. This also brings to mind
                 the question of whether arcFindRulesHelper should return a Failure in cases
                 where there isn't really a code failure, but rather we simply couldn't find
                 rules, such as in Aug 2022 how we don't yet have support for dealing with
                 AddObjects where multiple objects need to be added, and a Failure is returned. *)
        If [And[
                OptionValue["FormMultiColorCompositeObjects"] =!= False,
                !TrueQ[OptionValue["SingleObject"]]
            ],
            res =
                ARCLogScope["ARCFindRules:MultiColorObjects"]@
                arcFindRulesHelper[examples, opts];
            parsedExamples = $parsedExamples
        ];
        foundRulesQ = MatchQ[res, KeyValuePattern["Rules" -> _List]];
        
        (*ARCEcho[ARCSimplifyRules[res["Rules"]]];*)
        
        If [And[
                MatchQ[OptionValue["FormMultiColorCompositeObjects"], Automatic | False],
                !TrueQ[OptionValue["SingleObject"]]
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
            If [!TrueQ[workingRulesFound[]],
                (* Try finding rules without forming composite objects. *)
                res2 =
                    ARCLogScope["ARCFindRules:SingleColorObjects"]@
                    arcFindRulesHelper[
                        examples,
                        "FormMultiColorCompositeObjects" -> False,
                        opts
                    ];
                (*ARCEcho2[ARCSimplifyRules[res2["PartialRules"]]];*)
                foundRulesQ = MatchQ[res2, KeyValuePattern["Rules" -> _List]];
                If [foundRulesQ,
                    res = <|
                        "FormMultiColorCompositeObjects" -> False,
                        res2
                    |>
                ]
            ]
        ];
        
        If [And[
                OptionValue["SingleObject"] =!= False,
                MatchQ[OptionValue["FormMultiColorCompositeObjects"], Automatic | True]
            ],
            If [Or[
                    !TrueQ[workingRulesFound[]],
                    (* Even if we have a working rule set, if it's score is sufficiently low,
                       let's take that as evidence that we should consider whether interpreting
                       the scene as a single object yields a better rule set.
                       e.g. a740d043 *)
                    And[
                        (existingRulesScore = ARCRuleSetScore[res["Rules"]]) < -2
                        (* For now we will disallow SingleObject mode here if we're allowing single
                           examples per rule, otherwise it can produce a rule set that just maps
                           from a whole input scene to a whole output scene. *)
                        (* Actually, we don't want to disable this, otherwise it breaks
                           6e02f1e3. Note: Score for that example is about -2.1. *)
                        (*$MinimumExamplesPerRule > 1*)
                    ]
                ],
                (* Try again, this time parsing the scene as a single object. *)
                res2 =
                    ARCLogScope["ARCFindRules:SingleObject"]@
                    arcFindRulesHelper[examples, "SingleObject" -> True, opts];
                foundRules2Q = MatchQ[res2, KeyValuePattern["Rules" -> _List]];
                
                (*ARCEcho2[ARCRulesForOutput[res2]];*)
                
                If [foundRules2Q,
                    If [And[
                            TrueQ[ARCWorkingQ[examples, res2]],
                            Or[
                                !workingRulesFound[],
                                (* e.g. a740d043 *)
                                (* e.g. 6e02f1e3: Approx 0.5 improvement in score. *)
                                (newRulesScore = ARCRuleSetScore[res2["Rules"]]) - existingRulesScore >= 0.5
                            ]
                        ],
                        foundRulesQ = True;
                        res = res2
                    ]
                ];
            ];
            
            If [!TrueQ[$findingRulesForSubdivision] && TrueQ[OptionValue["AllowSubdividing"]],
                (* Consider whether the output width is always a multiple of the input width and the
                   output height is always a mutliple of the input height. If so, try sub-dividing the
                   problem. *)
                If [!workingRulesFound[],
                    (*Echo["ARCFindRulesForSubdividedOutput"];*)
                    res2 = ARCFindRulesForSubdividedOutput[examples];
                    foundRulesQ2 = MatchQ[res2, KeyValuePattern["Rules" -> _List]];
                    If [foundRulesQ2,
                        foundRulesQ = True;
                        res = res2
                    ]
                ]
            ]
        ];
        
        (* If both inputs and outputs have a shared grid structure, we can try subdividing
           the input/output scenes into their individual grid cells. *)
        If [And[
                ListQ[parsedExamples],
                ARCAllExamplesUseGridInInputAndOutput[parsedExamples],
                 TrueQ[OptionValue["AllowSubdividing"]]
            ],
            If [!TrueQ[workingRulesFound[]],
                res2 =
                    ARCLogScope["ARCFindRulesForGridSubdivision"]@
                    ARCFindRulesForGridSubdivision[parsedExamples];
                foundRulesQ2 = MatchQ[res2, KeyValuePattern["Rules" -> _List]];
                If [foundRulesQ2,
                    foundRulesQ = True;
                    res = res2
                ]
            ]
        ];
        
        (* If inputs have a grid structure, and the output width and height (in pixels) always
           matches the number of grid rows/columns, we can try finding rules to map from grid
           cells to output pixels. *)
        If [And[
                ListQ[parsedExamples],
                ARCGridSizeMatchesOutputPixelDimensions[parsedExamples],
                TrueQ[OptionValue["AllowSubdividing"]]
            ],
            If [!TrueQ[workingRulesFound[]],
                res2 =
                    ARCLogScope["ARCFindRulesForGridSubdivisionToOutputPixels"]@
                    ARCFindRulesForGridSubdivisionToOutputPixels[parsedExamples];
                foundRulesQ2 = MatchQ[res2, KeyValuePattern["Rules" -> _List | _Association]];
                If [foundRulesQ2,
                    foundRulesQ = True;
                    res = res2
                ]
            ]
        ];
        
        (* Check if the input scenes can be subdivided into a grid structure on account of their
           colorings. Sometimes this is done so that the output can be produced as a logical
           combination of the input segments. e.g. 94f9d214 *)
        If [FreeQ[parsedExamples, KeyValuePattern["Grid" -> _]],
            With[{parseColorGridsResult = ARCParseColorGrids[parsedExamples]},
                If [TrueQ[parseColorGridsResult["Result"]],
                    parsedExamples[[All, "Input", "Grid"]] = KeyDrop[parseColorGridsResult, "Result"]
                ]
            ]
        ];
        
        (* If we can't find a rule set, all of the inputs are subdivided into segments of equal
           sizes via dividers, and all outputs are the size of one of those segments (while also
           being a single color), then we can consider whether the segments from the first image
           should be combined via logical operations. *)
        If [And[
                ListQ[parsedExamples],
                MatchQ[
                    subdivisionInfo = ARCCheckForLogicOperationQ[parsedExamples],
                    KeyValuePattern["Result" -> True]
                ],
                TrueQ[OptionValue["AllowSubdividing"]]
            ],
            If [!TrueQ[workingRulesFound[]],
                res2 =
                    ARCLogScope["ARCConsiderLogicOperations"]@
                    ARCConsiderLogicOperations[parsedExamples, subdivisionInfo];
                foundRulesQ2 = MatchQ[res2, _Association];
                If [foundRulesQ2,
                    foundRulesQ = True;
                    res = <|
                        "Subdivision" -> <|
                            "Input" -> (
                                gridType = Replace[
                                    parsedExamples[[1, "Input", "Grid", "Type"]],
                                    {
                                        "ColorGrid" :> <|
                                            "Type" -> "ColorGrid",
                                            KeyTake[
                                                parsedExamples[[1, "Input", "Grid"]],
                                                {"RowCount", "ColumnCount"}
                                            ]
                                        |>,
                                        _Missing :> "Grid"
                                    }
                                ]
                            ),
                            "Output" -> None
                        |>,
                        "Rules" -> <|
                            "Type" -> "ValueMap",
                            "Binarize" -> True,
                            "OutputColor" -> subdivisionInfo["OutputColor"],
                            "Mapping" -> res2
                        |>
                    |>
                ]
            ]
        ];
        
        (* If we can't find a rule set, and only some examples make use of non-zero Z order,
           then try parsing the scene again without Z order. e.g. b91ae062 *)
        If [And[
                !TrueQ[workingRulesFound[]],
                With[{whetherEachExampleUsesZOrder = !FreeQ[#, KeyValuePattern["ZOrder" -> 1]] & /@ parsedExamples},
                    And[
                        !FreeQ[whetherEachExampleUsesZOrder, True],
                        !FreeQ[whetherEachExampleUsesZOrder, False]
                    ]
                ]
            ],
            res2 =
                ARCLogScope["ARCFindRules:Occlusions"]@
                arcFindRulesHelper[
                        examples,
                        "FindOcclusions" -> False,
                        opts
                    ];
            foundRulesQ2 = MatchQ[res2, KeyValuePattern["Rules" -> _List | _Association]];
            If [foundRulesQ2,
                foundRulesQ = True;
                res = res2
            ]
        ];
        
        (* If we can't find a rule set, and only some examples make use of non-black background,
           then try parsing the scenes again assuming a black background. e.g. 7468f01a *)
        If [And[
                OptionValue["Background"] === Automatic,
                ListQ[parsedExamples],
                !TrueQ[workingRulesFound[]],
                With[
                    {
                        backgroundColors = Join[
                            parsedExamples[[All, "Output", "Background"]],
                            parsedExamples[[All, "Input", "Background"]]
                        ]
                    },
                    (*And[
                        MemberQ[backgroundColors, 0],*)
                        MemberQ[backgroundColors, Except[0]]
                    (*]*)
                ]
            ],
            res2 =
                ARCLogScope["ARCFindRules:BlackBackground"]@
                arcFindRulesHelper[
                    examples,
                    "Background" -> 0,
                    opts
                ];
            foundRulesQ2 = MatchQ[res2, KeyValuePattern["Rules" -> _List | _Association]];
            If [foundRulesQ2,
                foundRulesQ = True;
                res = res2
            ]
        ];
        
        (* If we can't find a rule set, and there is at least one example that used a black
           background color, but black appears like it might in theory be a non-background
           color, then try again using no background color. e.g. bda2d7a6 *)
        If [And[
                OptionValue["Background"] === Automatic,
                ListQ[parsedExamples],
                !TrueQ[workingRulesFound[]],
                (* Black was chosen as the background color for at least one scene. *)
                With[
                    {
                        backgroundColors = Join[
                            parsedExamples[[All, "Output", "Background"]],
                            parsedExamples[[All, "Input", "Background"]]
                        ]
                    },
                    MemberQ[backgroundColors, 0]
                ],
                With[{colorCounts = Counts[Flatten[examples[[All, "Input", 1]]]]},
                    And[
                        (* Black is used as a color in the input scenes. *)
                        Lookup[colorCounts, 0, 0] > 0,
                        (* Black represents less than 40% of pixels in the scenes.
                           In bda2d7a6, black is 32%. Now that we have a condition below
                           to require that black wasn't more than a fallback background
                           color below, it's possible that we should remove this condition,
                           since this condition has a risk of false negatives.*)
                        colorCounts[0] / Total[colorCounts] < 0.4
                    ]
                ]
            ],
            backgroundDetails =
                Function[{example},
                    ARCInferBackgroundColor[
                        example["Input"],
                        "FormMultiColorCompositeObjects" -> OptionValue["FormMultiColorCompositeObjects"],
                        "SingleObject" -> Or[
                            OptionValue["SingleObject"],
                            ListQ[OptionValue["SubdivideInput"]]
                        ],
                        "Return" -> "Details"
                    ]
                ] /@ examples;
            (* There weren't any cases where black was more than a fallback for default
               background color. *)
            If [FreeQ[backgroundDetails, KeyValuePattern[{"Background" -> 0, "BlackAsFallback" -> False}]],
                res2 =
                    ARCLogScope["ARCFindRules:NoBackground"]@
                    ARCFindRules[
                        examples,
                        (* TODO: If `backgroundDetails` shows that there were non-black colors
                                 that were strong enough to be a background color, then instead
                                 of saying "Background" -> None, we should probably say something
                                 like "Background" -> "NonBlack" or something which would tell
                                 downstream code that non-black backgrounds are OK, but otherwise,
                                 use None as the background color for a scene, not black. *)
                        "Background" -> None,
                        "CheckForPatternFill" -> False,
                        If [$MinimumExamplesPerRule =!= 1,
                            "SettleForOneExamplePerRule" -> False
                            ,
                            Sequence @@ {}
                        ],
                        opts
                    ];
                foundRulesQ2 = MatchQ[res2, KeyValuePattern["Rules" -> _List | _Association]];
                If [foundRulesQ2,
                    foundRulesQ = True;
                    res = res2
                ]
            ];
        ];
        
        (* If we haven't found a rule set and we have a small image, then check whether
           _not_ following diagonals when forming images results in a rule set.
           e.g. 67385A82 *)
        If [And[
                OptionValue["FollowDiagonals"] === Automatic,
                ListQ[parsedExamples],
                !TrueQ[workingRulesFound[]],
                And[
                    AllTrue[parsedExamples[[All, "Input", "Width"]], Function[Between[#, {2, 8}]]],
                    AllTrue[parsedExamples[[All, "Input", "Height"]], Function[Between[#, {2, 8}]]]
                ]
            ],
            res2 =
                ARCLogScope["ARCFindRules:DontFollowDiagonals"]@
                arcFindRulesHelper[
                    examples,
                    (* Commenting this out since it looks like it might have been kept here
                       by accident. *)
                    (*"Background" -> 0,*)
                    "FollowDiagonals" -> False,
                    opts
                ];
            foundRulesQ2 = MatchQ[res2, KeyValuePattern["Rules" -> _List | _Association]];
            If [foundRulesQ2,
                foundRulesQ = True;
                res = res2
            ]
        ];
        
        (* If one or more objects were treated as a grid or divider, then try parsing the scene again
           without treating those things as a grid (e.g. d9f24cd1) or dividers (e.g. 496994bd). *)
        If [And[
                OptionValue["CheckForGridsAndDividers"] === Automatic,
                ListQ[parsedExamples],
                !FreeQ[parsedExamples, KeyValuePattern["GridOrDivider" | "Grid" -> _Association]]
            ],
            If [Or[
                    !TrueQ[workingRulesFound[]],
                    (* Contains a non-gray grid/divider. e.g. 496994bd *)
                    !FreeQ[parsedExamples, KeyValuePattern["Grid" -> KeyValuePattern["Color" -> Except[5]]]]
                ],
                res2 =
                    (* Note that we need to do a full recursion into ARCFindRules rather than
                       only to arcFindRulesHelper, since we might need to use a scene parsing
                       mode like "FormMultiColorCompositeObjects" -> False to find a rule set.
                       e.g. d9f24cd1 *)
                    ARCLogScope["ARCFindRules:NoGridsOrDividers"]@
                    ARCFindRules[
                        examples,
                        "CheckForGridsAndDividers" -> False,
                        (* If we aren't in single-example mode, then our recursive call here
                           shouldn't allow single examples, since later on we'll make a
                           call if necessary to ARCFindRules with that option, which itself
                           can recurse again in CheckForGridsAndDividers -> False mode if
                           necessary. This avoids us finding single-example
                           CheckForGridsAndDividers -> False rules before having the chance
                           to consider single-example CheckForGridsAndDividers -> Automatic
                           rules. e.g. 0d3d703e *)
                        If [$MinimumExamplesPerRule =!= 1,
                            "SettleForOneExamplePerRule" -> False
                            ,
                            Sequence @@ {}
                        ],
                        "CheckForImputation" -> False,
                        opts
                    ];
                foundRulesQ2 = MatchQ[res2, KeyValuePattern["Rules" -> _List | _Association]];
                If [foundRulesQ2,
                    foundRulesQ = True;
                    res = res2
                ]
            ]
        ];
        
        If [MatchQ[OptionValue["Denoise"], Automatic | True],
            If [!TrueQ[workingRulesFound[]],
                
                denoiseResult =
                    ReturnIfFailure[ARCDenoise[examples]];
                
                If [TrueQ[denoiseResult["Denoised"]],
                    
                    Block[{$denoised = True},
                        res2 =
                            ARCLogScope["ARCFindRules:Denoise"]@
                            ARCFindRules[
                                denoiseResult["Examples"],
                                "Denoise" -> False,
                                If [$MinimumExamplesPerRule =!= 1,
                                    "SettleForOneExamplePerRule" -> False
                                    ,
                                    Sequence @@ {}
                                ],
                                opts
                            ]
                    ];
                    foundRules2Q = MatchQ[res2, KeyValuePattern["Rules" -> _List]];
                    
                    If [foundRules2Q && TrueQ[ARCWorkingQ[examples, res2]],
                        foundRulesQ = True;
                        res = res2
                    ]
                ]
            ]
        ];
        
        If [TrueQ[OptionValue["SettleForOneExamplePerRule"]],
            (* TODO: I wonder if instead of having a second pass, we should allow
                     single-example rules in general, and just make sure we're
                     scoring them appropriately such that they get dropped appropriately
                     without needing to take a big performance penalty re-doing things.
                     The penalty is substantially worse with cases like 6e02f1e3
                     which currently require trying single-example mode even when
                     we have found a working rule set. *)
            If [And[
                    $MinimumExamplesPerRule > 1,
                    Or[
                        !TrueQ[foundRulesQ = workingRulesFound[]](*,
                        (* e.g. 6e02f1e3 *)
                        Replace[
                            (existingRulesScore = ARCRuleSetScore[res["Rules"]]) < -2.5,
                            True :> (
                                (*Echo["HERE" -> $file -> existingRulesScore];*)
                                True
                            )
                        ]*)
                    ]
                ],
                (* Try again, this time allowing rules to be formed with only 1 example.
                   e.g. 0d3d703e *)
                Block[{$MinimumExamplesPerRule = 1},
                    res2 =
                        ARCLogScope["ARCFindRules:OneExamplePerRule"]@
                        ARCFindRules[
                            examples,
                            "CheckForImputation" -> !TrueQ[foundRulesQ],
                            "CheckForPatternFill" -> !TrueQ[foundRulesQ],
                            opts
                        ];
                    foundRules2Q = MatchQ[res2, KeyValuePattern["Rules" -> _List]];
                    If [foundRules2Q,
                        If [And[
                                TrueQ[ARCWorkingQ[examples, res2]],
                                Or[
                                    !TrueQ[workingRulesFound[]],
                                    (* e.g. 6e02f1e3 *)
                                    (newRulesScore = ARCRuleSetScore[res2["Rules"]]) - existingRulesScore > 0.05
                                ]
                            ],
                            (*Echo["HERE2" -> $file -> {existingRulesScore, newRulesScore, newRulesScore - existingRulesScore}];*)
                            foundRulesQ = True;
                            res = res2
                        ]
                    ]
                ]
            ]
        ];
        
        ReturnIfFailure[res];
        
        (*ARCRuleSetScore[res["Rules"]];*)
        
        If [!AssociationQ[res],
            res = <||>
        ];
        
        ARCRulesForOutput[res]
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
    ARCMemoized[
        "MemoizationKey" -> {
            examplesIn,
            opts
        }
    ]@
    Internal`InheritedBlock[{$transformTypes},
    Module[
        {
            examples = examplesIn,
            widthExpression,
            heightExpression,
            allObjects,
            returnRules,
            referenceableInputObjects,
            referenceableOutputObjects,
            objectMappings,
            ruleSets,
            additionalRules = {},
            ruleSets2,
            ruleFindings2,
            additionalRules2
        },
        
        $transformTypes = getTransformTypes[];
        
        $parsedExamples = Missing["NotComputedYet"];
        
        (* Helper function for producing the final return value. *)
        returnRules[rules_Association] :=
            Block[{rulesResult},
                Return[
                    
                    (* TODO: WHEN ADDING PROPERTIES HERE, REMEMBER TO UPDATE:
                             ARCRulesForOutput *)
                    
                    rulesResult = <|
                        If [ListQ[OptionValue["SubdivideInput"]],
                            "SubdivideInput" -> OptionValue["SubdivideInput"]
                            ,
                            Nothing
                        ],
                        If [TrueQ[$denoised],
                            "Denoise" -> True
                            ,
                            Nothing
                        ],
                        If [TrueQ[OptionValue["SingleObject"]],
                            "SceneAsSingleObject" -> True
                            ,
                            Nothing
                        ],
                        If [OptionValue["FormMultiColorCompositeObjects"] =!= Automatic,
                            "FormMultiColorCompositeObjects" -> OptionValue["FormMultiColorCompositeObjects"]
                            ,
                            Nothing
                        ],
                        If [OptionValue["FollowDiagonals"] =!= Automatic,
                            "FollowDiagonals" -> OptionValue["FollowDiagonals"]
                            ,
                            Nothing
                        ],
                        If [OptionValue["CheckForGridsAndDividers"] === False,
                            "CheckForGridsAndDividers" -> False
                            ,
                            Nothing
                        ],
                        If [OptionValue["Background"] =!= Automatic,
                            "Background" -> OptionValue["Background"]
                            ,
                            With[
                                {
                                    inputBackgrounds = DeleteDuplicates[examples[[All, "Input", "Background"]]],
                                    outputBackgrounds = DeleteDuplicates[examples[[All, "Output", "Background"]]]
                                },
                                If [And[
                                        inputBackgrounds =!= outputBackgrounds,
                                        MatchQ[outputBackgrounds, {_}]
                                    ],
                                    "OutputBackground" -> First[outputBackgrounds]
                                    ,
                                    Nothing
                                ]
                            ]
                        ],
                        If [SpecifiedQ[widthExpression],
                            "Width" -> widthExpression
                            ,
                            Nothing
                        ],
                        If [SpecifiedQ[heightExpression],
                            "Height" -> heightExpression
                            ,
                            Nothing
                        ],
                        "Rules" -> Join[
                            ARCCleanRules[rules["Rules"], allObjects],
                            additionalRules
                        ],
                        KeyTake[rules, "Groups"],
                        "Examples" -> examples,
                        "ObjectMappings" -> objectMappings
                    |>;
                    
                    (*ARCEcho2[ARCSimplifyRules[KeyDrop[rulesResult, {"Examples", "ObjectMappings"}]]];*)
                    
                    If [TrueQ[ARCRemoveEmptySpaceQ[rulesResult, examples]],
                        rulesResult = Prepend[
                            rulesResult,
                            "RemoveEmptySpace" -> True
                        ]
                        ,
                        (* If we're not removing empty space, but inputs and outputs are
                           different sizes, then we should now consider whether we could
                           infer the width and height of outputs, even if it is smaller. *)
                        widthExpression = ARCGeneralizeValue[
                            examples[[All, "Input", "Width"]],
                            examples[[All, "Output", "Width"]],
                            ObjectValue["InputScene", "Width"]
                        ];
                        
                        heightExpression = ARCGeneralizeValue[
                            examples[[All, "Input", "Height"]],
                            examples[[All, "Output", "Height"]],
                            ObjectValue["InputScene", "Height"]
                        ];
                        
                        If [SpecifiedQ[widthExpression],
                            rulesResult["Width"] = widthExpression
                        ];
                        
                        If [SpecifiedQ[heightExpression],
                            rulesResult["Height"] = heightExpression
                        ];
                    ];
                    
                    rulesResult
                    ,
                    Module
                ]
            ];
        
        examples =
            ReturnIfFailure@
            ARCParseInputAndOutputScenes[
                examplesIn,
                "FormMultiColorCompositeObjects" -> OptionValue["FormMultiColorCompositeObjects"] =!= False,
                "SingleObject" -> TrueQ[OptionValue["SingleObject"]],
                "SubdivideInput" -> OptionValue["SubdivideInput"],
                "FindOcclusions" -> OptionValue["FindOcclusions"],
                "Background" -> OptionValue["Background"],
                "FollowDiagonals" -> OptionValue["FollowDiagonals"],
                "CheckForGridsAndDividers" -> OptionValue["CheckForGridsAndDividers"]
            ];
        
        (* If the caller is interested in capturing this we'll pass it this way. *)
        $parsedExamples = examples;
        
        widthExpression = ARCGeneralizeValue[
            examples[[All, "Input", "Width"]],
            examples[[All, "Output", "Width"]],
            ObjectValue["InputScene", "Width"],
            (* For now we won't specify constants widths because that seems to produce things
               that don't generalize as well, such as 72CA375D being given a fixed height of 2. *)
            (* But if a greater width is required, let's note that, otherwise (at least for now)
               this would cause a failure due to not being able to render the object due to the
               input not being large enough. e.g. 9172f3a0
               One unintended consequence of how we have implemented this is that it's also
               throwing away dynamic width/height expressions if they are smaller than the input,
               but I think that's what we want since our guess is that RemoveEmptySpace is probably
               a better way to deal with this for now. *)
            "OnlyIfLarger" -> True
        ];
        
        heightExpression = ARCGeneralizeValue[
            examples[[All, "Input", "Height"]],
            examples[[All, "Output", "Height"]],
            ObjectValue["InputScene", "Height"],
            "OnlyIfLarger" -> True
        ];
        
        If [Not[
                Or[
                    SpecifiedQ[widthExpression],
                    examples[[All, "Output", "Width"]] === examples[[All, "Input", "Width"]]
                ]
            ],
            (* The width of the output scene isn't dependably known, so properties like
               XInverse, X2Inverse, etc. shouldn't be used. e.g. d631b094 *)
            examples = ARCDropObjectProperties[
                examples,
                {
                    "XInverse",
                    "XInverse.Rank",
                    "XInverse.InverseRank",
                    "X2Inverse",
                    "X2Inverse.Rank",
                    "X2Inverse.InverseRank"
                }
            ]
        ];
        
        If [Not[
                Or[
                    SpecifiedQ[heightExpression],
                    examples[[All, "Output", "Height"]] === examples[[All, "Input", "Height"]]
                ]
            ],
            (* The height of the output scene isn't dependably known, so properties like
               YInverse, Y2Inverse, etc. shouldn't be used. *)
            examples = ARCDropObjectProperties[
                examples,
                {
                    "YInverse",
                    "YInverse.Rank",
                    "YInverse.InverseRank",
                    "Y2Inverse",
                    "Y2Inverse.Rank",
                    "Y2Inverse.InverseRank"
                }
            ]
        ];
        
        allObjects = Flatten[examples[[All, "Input", "Objects"]]];
        
        (*ARCEcho[examples[[1]]];
        Throw["HERE"];*)
        
        (*ARCEcho2[examples[[1]]];
        Throw["HERE"];*)
        
        (* For each example, map input objects to output objects. *)
        examples = Function[{example},
            Append[
                example,
                "ObjectMapping" ->
                    ReturnIfFailure@
                    ARCFindObjectMapping[
                        example,
                        "SingleObject" -> TrueQ[OptionValue["SingleObject"]]
                    ]
            ]
        ] /@ examples;
        
        (* HEREF *)
        
        (*ARCEcho2[examples[[All, "ObjectMapping"]]];
        Throw["HEREF"];*)
        
        (*ARCEcho[examples[[1, "ObjectMapping"]]];
        Throw["HERE"];*)
        
        (* Determine if input objects can be referenced in any particular ways in general. *)
        referenceableInputObjects =
            Prepend[
                If [!TrueQ[OptionValue["SingleObject"]],
                    ReturnIfFailure@
                    ARCMakeObjectsReferenceable[examples[[All, "Input"]]]
                    ,
                    (* If the scene is a single object, then Object["InputScene"] should
                       suffice to refer to it. *)
                    <||>
                ],
                Object["InputScene"] -> <||>
            ];
        
        ARCLog["ReferenceableInputObjects" -> Length[referenceableInputObjects]];
        
        referenceableOutputObjects =
            ReturnIfFailure@
            ARCMakeObjectsReferenceable[examples[[All, "Output"]]];
        
        ARCLog["ReferenceableOutputObjects" -> Length[referenceableOutputObjects]];
        
        (*ARCEcho[SimplifyObjects[referenceableInputObjects]];*)
        
        (*ARCEcho[SimplifyObjects[examples]];*)
        
        Global`$parsedExamples = examples;
        
        examples =
            ReturnIfFailure@
            ARCLogScope["AddMoveAttributes"]@
            ARCAddMoveAttributes[examples, referenceableOutputObjects];
        
        (*ARCEcho[SimplifyObjects[examples]];*)
        
        objectMappings = examples[[All, "ObjectMapping"]];
        
        (*ARCEcho[SimplifyObjects[objectMappings]];*)
        
        (*ARCEcho2[objectMappings];*)
        (*ARCEcho[objectMappings];*)
        
        res =
            ARCLogScope["ARCFindRules"]@
            ARCFindRules[examples, objectMappings, referenceableInputObjects];
        
        (*Throw["HERE"];*)
        
        If [And[
                (* We weren't able to find a rule set. *)
                Or[
                    FailureQ[res],
                    res[[1]] === {}
                ],
                (* All output scenes have a single object. *)
                DeleteDuplicates[Length /@ examples[[All, "Output", "Objects"]]] === {1},
                (* It isn't the case that all objects in all scenes get deleted due to them not
                   being mapped to an output object. *)
                !MatchQ[
                    DeleteDuplicates[Flatten[(Normal /@ objectMappings)[[All, All, 2]]]],
                    {_Missing}
                ]
            ],
            (* We weren't able to find rules, but the output scene always has a single object, so
               it would be worth us trying to find rules again using no object mapping.
               i.e. To assume that we're going to just delete all input objects and try to infer
               the properties of the output object. *)
            
            {ruleSets2, ruleFindings2, additionalRules2} =
                ReturnIfFailure@
                ARCLogScope["ARCFindRulesWithNoObjectMapping"]@
                ARCFindRules[
                    examples,
                    Function[{output},
                        <|
                            ARCAddedObjectsMapping[{output[["Objects", 1]]}]
                        |>
                    ] /@ examples[[All, "Output"]],
                    referenceableInputObjects
                ];
            
            If [Length[additionalRules2] > 0,
                (*If [OptionValue["Background"] === 0,
                    ARCEcho[ARCSimplifyRules[additionalRules2]];
                ];*)
                ruleSets = {
                    <|
                        "Rules" -> {
                            If [DeleteDuplicates[Length /@ examples[[All, "Input", "Objects"]]] =!= {0},
                                (* Delete any input objects that were present since we only need to
                                   add objects. *)
                                <||> -> <|"Transform" -> <|"Type" -> "Delete"|>|>
                                ,
                                Nothing
                            ]
                        }
                    |>
                };
                additionalRules = additionalRules2
            ]
            ,
            ReturnIfFailure[res];
            {ruleSets, ruleFindings, additionalRules} = res
        ];
        
        If [Length[ruleSets] > 0,
            (*ARCEcho[ARCSimplifyRules[ruleSets]];*)
            returnRules[
                Replace[
                    ReturnIfFailure@
                    ARCChooseBestRuleSet[
                        ReturnIfFailure[ARCCleanRules[#, allObjects]] & /@ ruleSets
                    ],
                    res: Except[KeyValuePattern["Rules" -> _List]] :> ReturnFailure[
                        "InvalidRuleResult",
                        "After attempting to choose the best rule set, we got something that isn't an association.",
                        "Result" -> res
                    ]
                ]
            ]
        ];
        
        <|
            "Examples" -> examples,
            "ObjectMappings" -> objectMappings,
            "PartialRules" ->
                ARCCleanRules[
                    Reverse@
                    SortBy[
                        ruleFindings,
                        Length[#["MappedInputObjects"]] &
                    ],
                    allObjects
                ]
        |>
    ]
    ]

(* Try to find rules given object mappings. *)
ARCFindRules[examples_List, objectMappingsIn_List, referenceableInputObjects_Association] :=
    Module[
        {
            objectMappings = objectMappingsIn,
            addedObjects,
            addedObjectsRule,
            preRules,
            inputObjectsNeedingMapping,
            additionalRules,
            rules,
            ruleSets,
            ruleFindings,
            groups
        },
        
        (* Form rules for removed/deleted objects. i.e. Objects that we weren't able to
           map. *)
        objectMappings = Replace[
            objectMappings,
            _Missing :> <|"Transform" -> <|"Type" -> "Delete"|>|>,
            {2}
        ];
        
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
        
        (*ARCEcho2[preRules];*)
        (*ARCEcho2[preRules[[All, 2]]];*)
        
        (*ARCEcho[referenceableInputObjects];*)
        
        inputObjectsNeedingMapping = preRules[[All, 2, "Input", "UUID"]];
        
        (*Echo[Length[inputObjectsNeedingMapping]];*)
        
        (*EchoIndented[Counts[preRules[[All, 2, "Transforms"]]]];*)
        
        (* If there are objects in the output that don't seem to correspond to objects in the
           input, then we'll start by trying to model them. *)
        (*ARCEcho2["AddedObjects" -> addedObjects];*)
        addedObjectsRule =
            ReturnIfFailure@
            ReturnFailureIfMissing[
                ARCRuleForAddedObjects[addedObjects, referenceableInputObjects, examples],
                "AddedObjectsFailure",
                "Unable to produce a rule for adding objects.",
                "AddedObjects" -> addedObjects
            ];
        
        If [AssociationQ[addedObjectsRule] && inputObjectsNeedingMapping === {},
            (* There aren't any input objects needing to be mapped, we just needed to find
               a rule for adding objects, which we have done. *)
            Return[
                {
                    {},
                    <||>,
                    {addedObjectsRule}
                },
                Module
            ]
        ];
        
        additionalRules = {
            If [AssociationQ[addedObjectsRule],
                addedObjectsRule
                ,
                Nothing
            ]
        };
        
        (* Special case: There's a single transformation that can be applied to any
           input object to produce the output. e.g. 3c9b0459 *)
        If [And[
                MatchQ[
                    preRules[[All, 2]],
                    {KeyValuePattern["Transforms" -> {_}]..}
                ],
                MatchQ[
                    transform = DeleteDuplicates[preRules[[All, 2, "Transforms", 1]]],
                    {_}
                ]
            ],
            Return[
                {
                    {
                        <|
                            "Rules" -> {
                                <||> -> <|"Transform" -> transform[[1]]|>
                            }
                        |>
                    },
                    <||>,
                    additionalRules
                },
                Module
            ]
        ];
        
        ruleSets = {};
        
        ruleFindings =
            Association@
            Flatten[
                Function[{property},
                    
                    rules =
                        ReturnIfFailure@
                        ARCFindRules[preRules, property, referenceableInputObjects, examples];
                    
                    (*Echo[property -> Length[Flatten[rules[[All, 2, "InputObjects"]]]]];*)
                    
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
                        groups =
                            ReturnIfFailure@
                            ARCReplaceRulePatternsWithGroupPatternsIfAppropriate[
                                rules,
                                Flatten[Keys[objectMappings]]
                            ];
                        
                        (* ARCReplaceRulePatternsWithGroupPatternsIfAppropriate can return Missing,
                           so we check for that before adding this to our list of rules. *)
                        If [!MissingQ[rules],
                            AppendTo[
                                ruleSets,
                                <|
                                    "Rules" -> rules,
                                    If [groups =!= {},
                                        "Groups" -> groups
                                        ,
                                        Nothing
                                    ]
                                |>
                            ]
                        ]
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
                    If [False && !TrueQ[$arcFindRulesForGeneratedObjects],
                        {"Width"}
                        (*{"Area.Rank", "Shapes"}*)
                        (*{"Width.Rank", "Width.InverseRank", "Image"}*)
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
                        "XRelative",
                        "YRelative",
                        "Group"
                    ]
                ]
            ];
        
        If [True, (*ruleSets === {},*)
            (* Try combining properties like HeightRank and HeightInverseRank to see if they
               can together span all inputs. Should we do this in all cases, or only if there
               are no possible rules using a single property? As of Setp 20 2022, we always
               consider this, since for a61f2674 there are rules for Height, but they aren't
               the ones we want. This way, downstream scoring code can be responsible for
               deciding which rules are the best. *)
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
                        AppendTo[
                            ruleSets,
                            <|
                                "Rules" -> Join[
                                    ruleFindings[rankPropertyName, "Rules"],
                                    ruleFindings[rankPropertyAttributes["InverseRankProperty"], "Rules"]
                                ]
                            |>
                        ]
                        (*Return[
                            {
                                {
                                    <|
                                        "Rules" -> Join[
                                            ruleFindings[rankPropertyName, "Rules"],
                                            ruleFindings[rankPropertyAttributes["InverseRankProperty"], "Rules"]
                                        ]
                                    |>
                                },
                                ruleFindings,
                                additionalRules
                            },
                            Module
                        ]*)
                    ];
                ],
                Select[$properties, TrueQ[#["Rank"]] && !TrueQ[#["InverseRank"]] &]
            ]
        ];
        
        {
            ruleSets,
            ruleFindings,
            additionalRules
        }
    ]

ARCFindRules[preRules_List, property: _String | None, referenceableInputObjects_Association, examples_List] :=
    ARCLogScope["ARCFindRules:" <> ToString[property]]@
    Module[
        {
            unhandled,
            groupedByPattern,
            conclusion,
            rules,
            pattern,
            mutuallyExclusiveRules = True,
            rulesWithInsufficientSupport,
            rulesWithSufficientSupport,
            unhandledInputs,
            method1ExceptRuleFailedQ = False
        },
        
        (*Echo[property];*)
        
        unhandled = {};
        
        (*ARCEcho[preRules];*)
        (*ARCEcho[SimplifyObjects["ExtraKeys" -> "Color"][preRules]];*)
        
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
                                ] /@ Replace[propertyValue, _Missing :> {}]
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
        
        If [Length[groupedByPattern] === 1 && property =!= None,
            (* If all objects share a single property value, and this isn't the no-grouping
               scenario (None), then we'll bail out, because we don't want to waste time
               re-doing something that the None case will already consider. *)
            Return[{}, Module]
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
                            (*If [pattern === <|"FilledArea" -> 3|>,
                                ARCDebug
                                ,
                                Identity
                            ]@*)
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
        
        If [$MinimumExamplesPerRule > 1,
            (* If there are rules with insufficient support, try forming an Except rule via
               "Method 1" below prior to trying to find one using "Method2" further below.
               To do this, we need to update `unhandled` to be the conclusions that had
               either no rules, or rules with insufficient support. *)
            rulesWithInsufficientSupport =
                Select[rules, #[[2, "ExampleCount"]] < $MinimumExamplesPerRule &];
            rulesWithSufficientSupport =
                Select[rules, #[[2, "ExampleCount"]] >= $MinimumExamplesPerRule &];
            If [Length[rulesWithInsufficientSupport] >= 1,
                unhandledInputs = Flatten[rulesWithInsufficientSupport[[All, 2, "InputObjects"]]];
                unhandled = Join[
                    unhandled,
                    Select[
                        preRules[[All, 2]],
                        MemberQ[unhandledInputs, #[["Input", "UUID"]]] &
                    ]
                ];
            ]
            ,
            rulesWithSufficientSupport = rules
        ];
        
        (* Method 1 for forming an except rule. *)
        If [And[
                Length[unhandled] > 0 &&
                property =!= None &&
                (
                    unhandled = ReturnIfFailure[ARCChooseTransform[unhandled]];
                    (* All of the leftover mappings have been transformed by the same
                       type of operation. *)
                    Length[DeleteDuplicates[unhandled[[All, "Transform", "Type"]]]] === 1
                )
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
                        rulesWithSufficientSupport[[All, 1, property]],
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
                (* We found an Except rule, so we'll discard any rules we were hanging on to
                   that had insufficient support, and use this Except rule instead. *)
                rules = Append[
                    rulesWithSufficientSupport,
                    pattern -> conclusion
                ]
                ,
                method1ExceptRuleFailedQ = True
            ]
        ];
        
        (* Try to simplify rules if possible. *)
        rules =
            ReturnIfFailure@
            ARCGroupRulesByConclusion[rules];
        
        (*ARCEcho[ARCSimplifyRules[rules]];*)
        
        (* Method 2 for finding an except rule.
           e.g. d2abd087 *)
        rules2 =
            ReturnIfFailure@
            ARCFormExceptRules[rules, preRules[[All, 1]]];
        
        (*If [And[
                TrueQ[method1ExceptRuleFailedQ],
                rules === rules2
            ],
            (* We were unable to form a rule to handle the Except case, and we had unhandled
               pre-rules, so we don't have a complete rule set. *)
            Return[{}, Module]
        ];*)
        
        rules = rules2;
        
        (*ARCEcho[ARCSimplifyRules[rules]];*)
        
        (* If a rule is only supported by one example input/output pair, then we won't
           keep it, since that is very strong evidence that we haven't found a workable
           generalization. Note that we need to wait until this point, after we've merged
           rules with the same conclusion, otherwise we might prematurely discard rules
           that don't appear to have enough support. e.g. 746b3537 *)
        rules = Function[{rule},
            If [rule[[2, "ExampleCount"]] < $MinimumExamplesPerRule,
                (*ARCEcho2["InsufficientSupport" -> rule];*)
                (* Drop this rule. We don't actually want to abort, since for cases like
                   a61f2674, we want to allow Height.Rank and Height.InverseRank
                   rules to be combined in the caller. And the caller has code to
                   detect that this particular property's rule's don't cover all
                   property values. *)
                Nothing
                ,
                rule
            ]
        ] /@ rules;
        
        (* Perhaps we should return not just the rules here, but also `unhandled` so that:
           1) Downstream code can more easily check whether there were any unhandled cases. 
           2) Downstream code can more easily take the unhandled cases and do more processing
              to try to find rules. *)
        rules
    ]

(* `conclusionGroup` is a group of conclusion RHSs that might share the fact that the
   corresponding input objects had the same value for some property, etc. *)
ARCFindRules[conclusionGroupIn_List, referenceableInputObjects_Association, examples_List, unhandledIn_List, mutuallyExclusiveRules: True | False, opts:OptionsPattern[]] :=
    ARCMemoized[
        "MemoizationKey" -> {
            conclusionGroupIn,
            referenceableInputObjects,
            examples,
            unhandledIn,
            mutuallyExclusiveRules,
            opts
        }
    ]@
    ARCLogScope["ARCFindRules2"]@
    Module[
        {
            conclusionGroup = conclusionGroupIn,
            groupedByConclusion,
            conclusionTransformTypes,
            conclusionList,
            color,
            generatorRules,
            unhandled = unhandledIn,
            conclusion,
            theseExamples,
            exampleInstances,
            propertiesWithChangingValue
        },
        
        conclusion = Missing[];
        
        (* HERE0 *)
        
        (*ARCEcho2[conclusionGroup];*)
        
        (* Resolve "Transforms" lists to single "Transform" choices, trying to select transforms
           that are common to all conclusions. *)
        conclusionGroup =
            ReturnIfFailure@
            ARCChooseTransform[conclusionGroup];
        
        (*ARCEcho2[conclusionGroup];*)
        
        (*ARCEcho[Values[conclusionGroup][[All, "Shape"]]];*)
        (*ARCEcho[conclusionGroup];*)
        
        If [Quiet[
                Length[
                    conclusionTransformTypes =
                        DeleteDuplicates[conclusionGroup[[All, "Transform", "Type"]]]
                ]
             ] =!= 1,
             (* If some object mappings have a Transform specified, and some do not, then
                before giving up, we'll just remove the Transform metadata and below
                we'll try directly inferring the output object properties.
                This can be important in cases where Transform gets applied to one
                or more mappings but not to others, where we'd prefer it if none
                of the mappings had been interpreted as a Transform.
                e.g. d631b094 *)
            conclusionGroup =
                Function[{conclusion},
                    KeyDrop[conclusion, "Transform"]
                ] /@ conclusionGroup;
        ];
        
        Which[
            Or[
                Length[
                    groupedByConclusion = GroupBy[
                        conclusionGroup,
                        Function[KeyDrop[#, {"Example", "Input", "Output"}]]
                    ]
                ] > 1,
                (* Even if there's only one example, if we are adding components, we'll still
                   call ARCGeneralizeConclusions so that it will prune the rule down
                   wrt minimal property sets. *)
                !FreeQ[
                    KeyDrop[Flatten[Values[groupedByConclusion]], {"Input", "Output"}],
                    KeyValuePattern[{"Image" -> _, "Shape" -> _, "Shapes" -> _}]
                ]
            ],
                (* This pattern has multiple possible conclusions, but before we discard it,
                   we should see whether it's possible to generalize those conclusions. *)
                conclusionList = Flatten[Values[groupedByConclusion]];
                conclusion =
                    ReturnIfFailure@
                    ARCGeneralizeConclusions[
                        KeyDrop[conclusionList, "Output"],
                        referenceableInputObjects,
                        examples
                    ];
                If [And[
                        MissingQ[conclusion],
                        (* For the moment we'll only look for generated objects when we've been
                           given a set of input objects that all have the same, single color. *)
                        Replace[
                            DeleteDuplicates[conclusionList[[All, "Color"]]],
                            {
                                {singleColor_Integer} :> (color = singleColor; True),
                                _ :> False
                            }
                        ],
                        !TrueQ[$arcFindRulesForGeneratedObjects]
                    ],
                    generatorRules =
                        ReturnIfFailure@
                        ARCFindRulesForGeneratedObjects[
                            Function[{thisConclusion},
                                Join[
                                    thisConclusion["Output"],
                                    With[{thisExample = examples[[thisConclusion["Example"]]]},
                                        <|
                                            "Scene" -> Replace[
                                                thisExample["Output", "Scene"],
                                                thisExample["Output", "Background"] -> $nonImageColor,
                                                {3}
                                            ],
                                            "Input" -> thisConclusion["Input"]
                                        |>
                                    ]
                                ]
                            ] /@ conclusionList,
                            examples
                        ];
                    If [MatchQ[generatorRules, KeyValuePattern["Rules" -> _List]],
                        conclusion = <|
                            "Transform" -> <|
                                "Type" -> "GenerateObject",
                                (* For the moment we'll assume the generated object starts at the
                                   same location as the input object. *)
                                "StartPosition" -> <|"RelativePosition" -> <|"Y" -> 0, "X" -> 0|>|>,
                                "Color" -> color,
                                "Rules" -> generatorRules["Rules"]
                            |>
                        |>;
                        (*ARCEcho2[ARCSimplifyRules[conclusion]];*)
                    ]
                ],
            Length[groupedByConclusion] === 1,
                (* This pattern has only one RHS, so we can form a rule using it. *)
                conclusion = groupedByConclusion[[1, 1]];
                
                propertiesWithChangingValue =
                    ReturnIfFailure[
                        ARCPropertiesNeededForConclusions[{conclusion}]
                    ][[2]];
                (* Only keep the conclusion property values that differ from the input. *)
                conclusion = KeyTake[conclusion, propertiesWithChangingValue[[1]]];
                (* It's important that we prune away secondary inferrable property values from
                   the conclusion here since otherwise downstream code that tries to group
                   rules by conclusion might avoid grouping this rule. In addition to
                   producing dirtier rule sets, this might cause the rule to get seen
                   as something without enough support, causing the whole rule set
                   to get thrown away. e.g. d2abd087 *)
                conclusion = ARCPrunePattern[conclusion, "Conclusion" -> True];
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
            
            (*If [!TrueQ[$arcFindRulesForGeneratedObjects],
                ARCEcho[conclusion]
            ];*)
            
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
            (* A significant question is whether we should prune rules with insufficient
               support here, or whether we should wait until we can group rules with
               alternatives. e.g. "FilledArea" -> 1 | 2 | 3. At one point we tried the
               latter and it produced garbage rules, but for d2abd087 I don't really see
               any other way to allow the needed rules to survive, since for FilledArea
               of 7, there's only one example. (That case _does_ have a UseCount of 2,
               so in theory that's what we could consider here to allow it to survive)
               We will try again commenting this out and do the pruning downstream,
               with an attempt to put appropriate safeguards in place. *)
            (*If [conclusion["ExampleCount"] < $MinimumExamplesPerRule,
                ARCEcho2["InsufficientRuleSupport" -> conclusion];
                conclusion = Missing["NotFound", "InsufficientRuleSupport"]
            ]*)
            (*If [conclusion["ExampleCount"] < $MinimumExamplesPerRule,
                ARCEcho2["ConclusionWithMinimalSupport" -> conclusion];
            ]*)
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
ARCApplyRules[sceneIn_ARCScene, rulesIn_Association] :=
    Module[
        {
            rules = rulesIn,
            scene = sceneIn,
            parsedScene,
            objects,
            ruleList = rulesIn["Rules"],
            addObjects,
            outputScene,
            renderedScene,
            colors,
            rows,
            columns,
            subOutputs,
            inputGridExpectedQ = False,
            sceneForRowColumn,
            rulesForRowColumn,
            imputations,
            imputationLocations,
            yMin,
            yMax,
            xMin,
            xMax,
            width,
            height,
            outputImage,
            outputWidth,
            outputHeight,
            background,
            semiParsedScene
        },
        
        (* Compute any dynamic expressions in the top-level rules association. For example,
           the Width of the output scene might be a dynamic expression of some InputScene
           attribute. *)
        If [!FreeQ[KeyDrop[rules, "Rules"], ObjectValue["InputScene", ___]],
            
            background = ARCInferBackgroundColor[scene];
            
            semiParsedScene =
                ReturnIfFailure@
                ARCSceneObject[
                    scene,
                    background,
                    Missing[]
                ];
            
            (* TODO: If the rules subdivide the input scene into multiple sub-scenes, then
                     resolving InputScene values within the "Rules" key is probably not
                     appropriate here, so perhaps we should avoid that key-value here. *)
            rules =
                ReturnIfFailure@
                ResolveValues[
                    rules,
                    <||>,
                    semiParsedScene,
                    "ObjectsPattern" -> "InputScene",
                    "Activate" -> True
                ];
        ];
        
        (*ARCEcho2[rules];*)
        
        ruleList = rules["Rules"];
        
        If [!ListQ[ruleList] && !AssociationQ[ruleList],
            ReturnFailure[
                "ARCApplyRuleFailure",
                "No rules were found.",
                "Scene" -> scene,
                "ARCFindRulesResult" -> rules
            ]
        ];
        
        (*ARCEcho2[rules];*)
        
        If [SpecifiedQ[rules["Width"]],
            outputWidth = ToIntegerIfNoDecimal[rules["Width"]]
        ];
        
        If [SpecifiedQ[rules["Height"]],
            outputHeight = ToIntegerIfNoDecimal[rules["Height"]]
        ];
        
        (*Echo[{outputWidth, outputHeight}];*)
        
        Switch[
            ruleList,
            KeyValuePattern[{"Type" -> "PatternFill"}],
                Return[
                    ARCScene@
                    ARCApplyPatternFill[
                        ConstantArray[
                            0,
                            {outputHeight, outputWidth}
                        ],
                        Append[
                            ruleList,
                            "Pattern" -> Replace[
                                sceneIn,
                                ARCInferBackgroundColor[sceneIn] -> $nonImageColor,
                                {3}
                            ]
                        ]
                    ],
                    Module
                ],
            KeyValuePattern[{"Type" -> "Imputation", "Pattern" -> "Symmetry", "Output" -> "ImputedRectangle"}],
                Replace[
                    ARCFindSymmetry[sceneIn],
                    {
                        imputationResult_Association :> (
                            imputations = imputationResult["Imputations"];
                            imputationLocations = imputations[[All, 1]];
                            yMin = Min[imputationLocations[[All, 1]]];
                            yMax = Max[imputationLocations[[All, 1]]];
                            xMin = Min[imputationLocations[[All, 2]]];
                            xMax = Max[imputationLocations[[All, 2]]];
                            width = xMax - xMin + 1;
                            height = yMax - yMin + 1;
                            outputImage = ConstantArray[0, {height, width}];
                            Function[{imputation},
                                outputImage[[
                                    imputation[[1, 1]] - yMin + 1,
                                    imputation[[1, 2]] - xMin + 1
                                ]] = imputation[[2]]
                            ] /@ imputations;
                            Return[ARCScene[outputImage], Module]
                        ),
                        (* We were unable to find the imputations, so we'll bail out. *)
                        _ :> Return[sceneIn, Module]
                    }
                ],
            (* e.g. 29ec7d0e *)
            KeyValuePattern[{"Type" -> "Imputation", "Pattern" -> "GridFill", "Output" -> "RepairedScene"}],
                Replace[
                    ARCCheckForImputation[sceneIn],
                    {
                        res_ARCScene :> Return[res, Module],
                        (* We were unable to find the imputations, so we'll bail out. *)
                        _ :> Return[sceneIn, Module]
                    }
                ],
            (* e.g. 3631a71a *)
            KeyValuePattern[{"Type" -> "Imputation", "Pattern" -> "Symmetry", "Output" -> "RepairedScene"}],
                Replace[
                    ARCCheckForImputationUsingSymmetry[
                        sceneIn,
                        ARCFindSymmetry[sceneIn]
                    ],
                    {
                        res_ARCScene :> Return[res, Module],
                        (* We were unable to find the imputations, so we'll bail out. *)
                        _ :> Return[sceneIn, Module]
                    }
                ]
        ];
        
        If [TrueQ[rules["Denoise"]],
            scene = ReturnIfFailure[ARCDenoise[scene]]["Image"]
        ];
        
        parsedScene =
            ReturnIfFailure@
            ARCParseScene[
                scene,
                If [TrueQ[rules["SceneAsSingleObject"]],
                    "SingleObject" -> True
                    ,
                    Sequence @@ {}
                ],
                If [rules["FormMultiColorCompositeObjects"] === False,
                    "FormMultiColorCompositeObjects" -> False
                    ,
                    Sequence @@ {}
                ],
                If [!MissingQ[rules["FollowDiagonals"]],
                    "FollowDiagonals" -> rules["FollowDiagonals"]
                    ,
                    Sequence @@ {}
                ],
                If [ListQ[rules["SubdivideInput"]],
                    "SubdivideInput" -> rules["SubdivideInput"]
                    ,
                    Sequence @@ {}
                ],
                If [!MissingQ[rules["CheckForGridsAndDividers"]],
                    "CheckForGridsAndDividers" -> rules["CheckForGridsAndDividers"]
                    ,
                    Sequence @@ {}
                ],
                (* If none of the rules involved ZOrder/occluded objects, then don't consider
                   occlusions when parsing the scene for applying rules, since there are cases
                   where this can result in invalid scene interpretation.
                   e.g. 90c28cc7 *)
                "FindOcclusions" -> !FreeQ[ruleList, KeyValuePattern["ZOrder" -> _]],
                If [!MissingQ[rules["Background"]],
                    (* e.g. bda2d7a6 *)
                    "Background" -> rules["Background"]
                    ,
                    Sequence @@ {}
                ]
            ];
        
        objects = parsedScene["Objects"];
        
        If [Or[
                inputGridExpectedQ = MatchQ[rules["Subdivision"], "Grid" | KeyValuePattern["Input" -> "Grid"]],
                (* e.g. 94f9d214 *)
                MatchQ[rules["Subdivision"], KeyValuePattern["Input" -> KeyValuePattern["Type" -> "ColorGrid"]]],
                MatchQ[rules["Rules"], {Repeated[_List]}]
            ],
            
            (* There is a grid of rule sets to be applied to subdivisions of the image. *)
            
            If [MatchQ[rules["Subdivision"], KeyValuePattern["Input" -> KeyValuePattern["Type" -> "ColorGrid"]]],
                (* The scene is expected to be a "color grid" where there are no explicit
                   cell dividers, but rather there are subdivisions of the input that are
                   each composed of a different color. e.g. 94f9d214 *)
                parsedScene["Grid"] = <|
                    "RowCount" -> (rows = rules["Subdivision", "Input", "RowCount"]),
                    "ColumnCount" -> (columns = rules["Subdivision", "Input", "ColumnCount"]),
                    "Cells" -> (
                        cellWidth = parsedScene["Width"] / columns;
                        cellHeight = parsedScene["Height"] / rows;
                        Function[{row},
                            Function[{column},
                                <|
                                    "Y" -> (row - 1) * cellHeight + 1,
                                    "X" -> (column - 1) * cellWidth + 1,
                                    "Width" -> cellWidth,
                                    "Height" -> cellHeight
                                |>
                            ] /@ Range[columns]
                        ] /@ Range[rows]
                    )
                |>
            ];
            
            If [And[
                    TrueQ[inputGridExpectedQ],
                    !AssociationQ[parsedScene["Grid"]]
                ],
                ReturnFailure[
                    "ExpectedGridFailure",
                    "The rules indicate that the input should be a grid, but a grid wasn't found.",
                    "Scene" -> scene
                ]
            ];
            
            Which[
                MatchQ[rules["Rules"], KeyValuePattern["Type" -> "ValueMap"]],
                    (* We have a value map that can take a single pixel from each grid cell
                       and compute the value to use for the output image. e.g. 0520fde7 *)
                    Return[
                        Replace[
                            ReturnIfFailure@
                            ARCApplyValueMappingToGrid[
                                Function[{image},
                                    ARCBinarizeImage[
                                        image,
                                        parsedScene["Background"]
                                    ]
                                ] /@ Flatten[ARCSubdivideImageUsingGrid[parsedScene["Scene"], parsedScene["Grid"]]],
                                rules["Rules"]
                            ],
                            $nonImageColor -> parsedScene["Background"],
                            {3}
                        ],
                        Module
                    ],
                MatchQ[rules["Rules"], {Repeated[_List]}],
                    rows = Length[rules["Rules"]];
                    columns = Length[rules["Rules"][[1]]];
                    rulesForRowColumn = Function[{row, column},
                        rules["Rules"][[row, column]]
                    ],
                TrueQ[inputGridExpectedQ],
                    rows = parsedScene[["Grid", "RowCount"]];
                    columns = parsedScene[["Grid", "ColumnCount"]];
                    rulesForRowColumn = Function[{row, column},
                        (* We were given a single set of rules that should be applied to
                           every grid cell sub-scene. *)
                        rules["Rules"]
                    ],
                True,
                    ReturnFailure[
                        "SubdivisionFailure",
                        "When applying rules, it appeared that there was a subdivision, but neither the rules were a grid structure nor was the Grid attribute specified.",
                        "Rules" -> rules
                    ]
            ];
            
            sceneForRowColumn =
                Which[
                    MatchQ[rules["Subdivision"], "Grid" | KeyValuePattern["Input" -> "Grid"]],
                        If [!AssociationQ[parsedScene[["Grid"]]],
                            ReturnFailure[
                                "ExpectedGridFailure",
                                "The rules indicate that the input should be a grid, but a grid wasn't found.",
                                "Scene" -> scene
                            ]
                        ];
                        Function[{row, column},
                            gridCell = parsedScene[["Grid", "Cells", row, column]];
                            ARCScene[
                                scene[[
                                    1,
                                    gridCell["Y"] ;; gridCell["Y"] + gridCell["Height"] - 1,
                                    gridCell["X"] ;; gridCell["X"] + gridCell["Width"] - 1
                                ]]
                            ]
                        ],
                    True,
                        Function[scene]
                ];
            
            subOutputs = Function[{row},
                Function[{column},
                    ReturnIfFailure@
                    ARCApplyRules[
                        ReturnIfFailure@
                        sceneForRowColumn[row, column],
                        rulesForRowColumn[row, column]
                    ]
                ] /@ Range[columns]
            ] /@ Range[rows];
            
            Return[
                ARCScene@
                ARCCombineGridOfImages[
                    subOutputs,
                    If [rules["Subdivision"] === "Grid" && !rules["Subdivision", "Output"] === "Pixels",
                        "GridColor" -> parsedScene["Grid", "Color"]
                        ,
                        Sequence @@ {}
                    ]
                ],
                Module
            ]
        ];
        
        (*ARCEcho[SimplifyObjects["ExtraKeys" -> "ZOrder"][objects]];*)
        
        (* Is there a 'rule' for adding objects which don't occur in the input scene? *)
        addObjects = FirstCase[
            ruleList,
            KeyValuePattern["Transform" -> KeyValuePattern["Type" -> "AddObjects"]]
        ];
        If [!MissingQ[addObjects],
            ruleList = DeleteCases[ruleList, addObjects]
        ];
        
        If [MatchQ[rules["Groups"], {__}],
            objects =
                ReturnIfFailure@
                ARCFormGroupsWhenApplyingRules[
                    objects,
                    rules["Groups"],
                    ImageWidth[scene[[1]]],
                    ImageHeight[scene[[1]]]
                ]
        ];
        
        (*Global`rules = ruleList;
        Global`object = objects[[1]];*)
        
        (*ARCEcho2[ruleList];*)
        
        outputScene = Sett[
            parsedScene,
            {
                If [SpecifiedQ[outputWidth],
                    "Width" -> outputWidth
                    ,
                    Nothing
                ],
                If [SpecifiedQ[outputHeight],
                    "Height" -> outputHeight
                    ,
                    Nothing
                ]
            }
        ];
        
        objects =
            Function[{object},
                ReturnIfFailure@
                ARCApplyRules[object, ruleList, parsedScene, outputScene]
            ] /@ objects;
        
        (*ARCEcho2[objects];*)
        
        outputScene = Sett[
            outputScene,
            {
                "Objects" -> objects
            }
        ];
        
        (* Convert our sparse output objects to fuller objects that have their various
           properties set so that when applying "AddObjects" rules, if their object
           reference patterns need to make use of those properties, they'll be set. *)
        outputScene["Objects"] =
            Function[{object},
                colors = ARCImageColors[object["Image"]];
                ARCInferObjectProperties[
                    <|
                        "Image" -> ReturnFailureIfMissing[
                            object["Image"],
                            "MissingOutputImage",
                            "An output object is missing its image.",
                            "Object" -> object
                        ],
                        (*"PixelPositions" -> TODO,*)
                        ARCInferShapeAndShapes[object["Image"][[1]], colors],
                        "Colors" -> colors,
                        "Position" -> object["Position"],
                        If [!MissingQ[object["ZOrder"]],
                            "ZOrder" -> object["ZOrder"]
                            ,
                            Nothing
                        ]
                    |>,
                    outputScene["Width"],
                    outputScene["Height"]
                ]
            ] /@ outputScene["Objects"];
        
        If [!MissingQ[addObjects],
            (* Add objects which don't correspond with objects from the input. *)
            outputScene["Objects"] = Join[
                outputScene["Objects"],
                Function[{object},
                    ReturnIfFailure@
                    ARCConstructObject[
                        object,
                        "Scene" -> outputScene
                    ]
                ] /@
                    ReturnIfFailure@
                    ResolveValues[
                        addObjects["Transform", "Objects"],
                        <||>,
                        parsedScene,
                        "Activate" -> True
                    ]
            ]
        ];
        
        (*ARCEcho2[outputScene["Objects"]];*)
        
        If [IntegerQ[rules["OutputBackground"]],
            outputScene["Background"] = rules["OutputBackground"]
            ,
            If [IntegerQ[rules["Background"]],
                outputScene["Background"] = rules["Background"]
            ]
        ];
        
        renderedScene =
            ReturnIfFailure@
            ARCRenderScene[
                outputScene,
                "OutputWidthSpecified" -> SpecifiedQ[rules["Width"]],
                "OutputHeightSpecified" -> SpecifiedQ[rules["Height"]]
            ];
        
        If [TrueQ[rules["RemoveEmptySpace"]],
            renderedScene = ARCRemoveEmptySpace[renderedScene, outputScene["Background"]]
        ];
        
        renderedScene
    ]

ARCApplyRules[objectIn_Association, rules_List, inputScene_Association, outputScene_Association] :=
    Module[{object = objectIn, matchingRules},
        
        matchingRules = Select[
            rules,
            And[
                MatchQ[#, _Rule],
                MatchQ[
                    object,
                    ARCRuleToPattern[#[[1]]]
                ]
            ] &
        ];
        
        If [MatchQ[matchingRules, {_, __}],
            (* If there are multiple matching rules, we want to apply the most specific
               one. e.g. ARCApplyRules-20220906-3546LC (a61ba2ce) *)
            matchingRules =
                Reverse@
                SortBy[
                    matchingRules,
                    ARCExpressionComplexity
                ]
        ];
        
        If [MatchQ[matchingRules, {__}],
            object =
                (* For now, we will only allow one rule to be applied to an object. A case where
                   this is needed is d511f180, otherwise one rule changes an object's color,
                   and the next rule changes it back. ARCApplyRules-20220906-3546LC *)
                ReturnIfFailure@
                ARCApplyRules[object, matchingRules[[1]], inputScene, outputScene]
        ];
        
        object
    ]

ARCApplyRules::invid = "Invalid image detected.";
ARCApplyRules[objectIn_Association, rule_Rule, inputScene_Association, outputScene_Association] :=
    Module[{object = objectIn, pattern = rule[[1]], conclusion = rule[[2]]},
        
        If [And[
                (* Does this pattern match our object? *)
                MatchQ[
                    objectIn,
                    ARCRuleToPattern[pattern]
                ],
                !MatchQ[conclusion, KeyValuePattern["Same" -> True]]
            ],
            (* The rule matches, so apply its conclusion. *)
            object = ARCApplyConclusion[object, conclusion, inputScene, outputScene];
        ];
        
        (*If [Length[DeleteDuplicates[Length /@ object["Image"][[1]]]] > 1,
            Message[ARCApplyRules::invid]
        ];*)
        
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
ARCApplyConclusion[objectIn_Association, conclusion_Association, inputScene_Association, outputScene_Association] :=
    Module[{object = objectIn, key, value, objectOut = <||>},
        
        If [TrueQ[conclusion["RotationNormalization"]],
            object = ARCNormalizeObjectRotation[
                Sett[
                    object,
                    {
                        (* Should we be using the input or the output scene here? *)
                        "ParentWidth" -> outputScene["Width"],
                        "ParentHeight" -> outputScene["Height"]
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
                
                objectOut =
                    Replace[
                        ARCHandlerForListConclusions[
                            key,
                            value,
                            Function[{object2, key2, value2},
                                ReturnIfFailure@
                                ARCApplyConclusion[
                                    key2,
                                    ReturnIfFailure@
                                    ResolveValues[value2, object2, inputScene, "Activate" -> True],
                                    object2,
                                    objectOut,
                                    (* Do we only need to pass the output scene here, or is the input
                                       scene sometimes needed as well? *)
                                    outputScene
                                ]
                            ],
                            object
                        ],
                        Nothing :> Return[Nothing, Module]
                    ];
            ],
            ARCRemoveExtendedMetadataFromConclusion[conclusion]
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
                    ARCInferObjectProperties[objectOut, outputScene["Width"], outputScene["Height"]],
                    objectIn["Shape", "Transform", "Angle"],
                    Sequence @@
                    Switch[
                        objectIn["Shape", "Transform", "Angle"],
                        90 | 270,
                            {
                                outputScene["Height"],
                                outputScene["Width"],
                                outputScene["Height"],
                                outputScene["Width"]
                            },
                        _,
                            {
                                outputScene["Width"],
                                outputScene["Height"],
                                outputScene["Width"],
                                outputScene["Height"]
                            }
                    ]
                ]
        ];
        
        If [MissingQ[objectOut["Shape"]] && !MissingQ[objectIn["Shape"]],
            objectOut["Shape"] = objectIn["Shape"];
            (* If we are inheriting our shape from the input object, but the output
               object has a defined color, then we need to drop any color specifications
               that the shape might have, such as can be the case with rectangles.
               e.g. 0uduqqj6f *)
            If [And[
                    SpecifiedQ[objectOut["Color"]]
                ],
                If [MatchQ[objectOut["Shape"], KeyValuePattern["Interior" -> _]],
                    objectOut["Shape"] = KeyDrop[objectOut["Shape"], "Interior"];
                    objectOut["Shape"] = KeyDrop[objectOut["Shape"], "Border"]
                ]
            ]
        ];
        
        (*ARCEcho2[object["Shape"]];*)
        
        (* e.g. Infer the Image if necessary. *)
        objectOut = Replace[
            (*ARCEcho[SimplifyObjects["ExtraKeys" -> "Shape"][objectOut]];*)
            ARCConstructObject[objectOut, "Scene" -> outputScene],
            _Failure :> (
                If [And[
                        MissingQ[objectOut["Image"]],
                        MatchQ[objectOut["Shape"], objectIn["Shape"] | _Missing],
                        Or[MissingQ[objectOut["Shapes"]], SubsetQ[objectIn["Shapes"], objectOut["Shapes"]]],
                        MatchQ[objectOut["Colors"], objectIn["Colors"] | _Missing],
                        MatchQ[objectOut["Width"], objectIn["Width"] | _Missing],
                        MatchQ[objectOut["Height"], objectIn["Height"] | _Missing]
                    ],
                    (* Try inheriting the image from the input. It seems that in most cases,
                       a rule's conclusion has enough essential information to be able to
                       render the object after being applied, but in some cases, such as if
                       the conclusion is really a move, setting "X" and "Y", the objectOut
                       won't have properties like Shape set. Another possible approach here
                       would be to just inherit property values from the input in a more
                       robust/appropriate fashion. (And for 08ed6ac7, it looks like Shape
                       indeed was missing here, so we do now inherit that just above if it's
                       not set on the output object but is set on the input object.
                       I'm confused why we're seemingly needing to do that now (Sept 5 2022)
                       but weren't needing to do that previously.)
                       e.g. a87f7484 *)
                    Sett[
                        objectOut,
                        "Image" -> objectIn["Image"]
                    ]
                    ,
                    objectOut
                ]
            )
        ];
        
        objectOut
    ]

ARCApplyConclusion[key:"Transform", value:KeyValuePattern["Type" -> "Delete"], objectIn_Association, objectOut_Association, scene_Association] :=
    Nothing

ARCApplyConclusion[key:"Transform", value:KeyValuePattern["Type" -> "RemoveEmptySpace"], objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        {
            "Image" -> ARCRemoveEmptySpace[objectIn["Image"], $nonImageColor],
            "Position" -> {1, 1}
        }
    ]

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

ARCApplyConclusion[key:"Y2", y2_Integer, objectIn_Association, objectOut_Association, scene_Association] :=
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
            "Height" -> (y2 - y + 1)
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

ARCApplyConclusion[key:"X2", x2_Integer, objectIn_Association, objectOut_Association, scene_Association] :=
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
            "Width" -> (x2 - x + 1)
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

ARCApplyConclusion[key:"YInverse", yInverse_Integer, objectIn_Association, objectOut_Association, scene_Association] :=
    Module[{y},
        Sett[
            objectOut,
            {
                "Y" -> (y = scene["Height"] - yInverse + 1),
                If [ListQ[objectOut["Position"]],
                    "Position" -> ReplacePart[objectOut["Position"], 1 -> y]
                    ,
                    Nothing
                ]
            }
        ]
    ]

ARCApplyConclusion[key:"XInverse", xInverse_Integer, objectIn_Association, objectOut_Association, scene_Association] :=
    Module[{x},
        Sett[
            objectOut,
            {
                "X" -> (x = scene["Width"] - xInverse + 1),
                If [ListQ[objectOut["Position"]],
                    "Position" -> ReplacePart[objectOut["Position"], 2 -> x]
                    ,
                    Nothing
                ]
            }
        ]
    ]

ARCApplyConclusion[key:"Shape", value: KeyValuePattern["Image" -> _], objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        "Image" -> ARCColorize[value, objectIn[["Colors", 1]]]
    ]

ARCApplyConclusion[key:"Colors", {value_}, object_Association, objectOut_Association, scene_Association] :=
    ARCApplyConclusion["Color", value, object, objectOut, scene]

ARCApplyConclusion[key:"Color", value_, objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        {
            "Color" -> value,
            "Colors" -> {value}
            (* We won't generate the image just yet, because there might be other
               conclusion property values that are needed first. Instead, we construct
               objects and their images back in the higher level ARCApplyConclusion
               down value. *)
            (*If [And[
                    value =!= objectIn["Color"],
                    (* e.g. 5582e5ca *)
                    !SpecifiedQ[objectOut["Shape"]]
                ],
                "Image" -> Replace[
                    FirstCase[
                        {objectIn["Image"], objectIn["Shape"]}, _ARCScene],
                    {
                        _Missing :> (
                            Missing["ToGenerate"]
                        ),
                        image_ARCScene :> (
                            ARCColorize[image, value]
                        )
                    }
                ]
                ,
                Nothing
            ]*)
        }
    ]

ARCApplyConclusion[key:"Transform", value:KeyValuePattern["Type" -> "Rotation"], objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        "Image" -> ReturnIfFailure[Transform[objectIn["Image"], value]]
    ]

ARCApplyConclusion[key:"Transform", value:KeyValuePattern["Type" -> "Scaled"], objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        "Image" -> ReturnIfFailure[Transform[objectIn["Image"], value]]
    ]

ARCApplyConclusion[key:"Transform", value:KeyValuePattern["Type" -> "Flip"], objectIn_Association, objectOut_Association, scene_Association] :=
    Sett[
        objectOut,
        "Image" -> ReturnIfFailure[Transform[objectIn["Image"], value]]
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
                        KeyValuePattern[{"Y" -> y_, "X" -> x_}] :> {y, x}
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

ARCApplyConclusion[key:"Transform", transform:KeyValuePattern[{"Type" -> "GenerateObject"}], objectIn_Association, objectOut_Association, scene_Association] :=
    Module[{},
        ARCGenerateObject[
            Replace[
                scene["Scene"],
                scene["Background"] -> $nonImageColor,
                {3}
            ],
            objectIn,
            transform
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
        {
            key -> value,
            (* e.g. surface-pixel-count *)
            If [And[
                    MatchQ[key, "Width" | "Height" | "Shapes" | "Color"],
                    objectIn[key] =!= value
                ],
                "Image" -> Missing["ToGenerate"]
                ,
                Nothing
            ]
        }
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
Options[ARCRenderScene] =
{
    "OutputWidthSpecified" -> False,    (*< Does the rule set specify what the width of the output scene should be? *)
    "OutputHeightSpecified" -> False    (*< Does the rule set specify what the width of the output scene should be? *)
};
ARCRenderScene[scene_Association, OptionsPattern[]] :=
    Module[{sceneWidth, sceneHeight, output, objects, image, posX, posY},
        
        objects =
            Reverse@
            SortBy[
                scene["Objects"],
                Replace[#["ZOrder"], _Missing -> 0] &
            ];
        
        sceneWidth = scene["Width"];
        sceneHeight = scene["Height"];
        
        (* Detect whether we need to make the output image wider or taller. e.g. d631b094 *)
        If [Or[
                !TrueQ[OptionValue["OutputWidthSpecified"]],
                !TrueQ[OptionValue["OutputHeightSpecified"]]
            ],
            Function[{object},
                
                If [ListQ[object["Position"]],
                    posY = object["Position"][[1]];
                    posX = object["Position"][[2]];
                    ,
                    posY = object["Y"];
                    posX = object["X"];
                ];
                
                If [MissingQ[object["Image"]],
                    ReturnFailure[
                        "ARCRenderSceneFailure",
                        "An object is missing its Image.",
                        "Object" -> object
                    ]
                ];
                
                image = object["Image"][[1]];
                
                If [And[
                        posY + ImageHeight[image] - 1 > sceneHeight,
                        !TrueQ[OptionValue["OutputHeightSpecified"]]
                    ],
                    (* This object requires that the output scene be taller, so we'll make it
                       taller. *)
                    sceneHeight = posY + ImageHeight[image] - 1;
                    (*Echo["sceneHeight expansion" -> sceneHeight];*)
                ];
                
                If [And[
                        posX + ImageWidth[image] - 1 > sceneWidth,
                        !TrueQ[OptionValue["OutputWidthSpecified"]]
                    ],
                    (* This object requires that the output scene be wider, so we'll make it
                       wider. e.g. d631b094 *)
                    sceneWidth = posX + ImageWidth[image] - 1;
                    (*Echo["sceneWidth expansion" -> sceneWidth];*)
                ];
                
            ] /@ objects
        ];
        
        (* Empty output image using background color. *)
        output =
            With[{backgroundColor = ARCColorToInteger[scene["Background"]]},
                ConstantArray[
                    backgroundColor,
                    {
                        sceneHeight,
                        sceneWidth
                    }
                ]
            ];
        
        Function[{object},
            
            output = ReturnIfFailure[ARCDrawSubImage[output, object]]
            
        ] /@ objects;
        
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
        Block[{$file = file},
            $generatorCalls = {};
            ARCTest[
                ReturnIfFailure@
                ARCParseFile[file],
                opts
            ]
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
Options[ARCImageRotations] =
{
    "IncludeNoopTransforms" -> False        (*< Should we include image transforms that result in the image not changing? e.g. A horizontal flip for an image that has vertical line symmetry. *)
};
ARCImageRotations[imageIn_List, OptionsPattern[]] :=
    Module[{image = imageIn},
        Function[{angle},
            (* Rotate by 90 degrees. *)
            image = RotateImage[image, 90];
            If [Or[
                    TrueQ[OptionValue["IncludeNoopTransforms"]],
                    image =!= imageIn
                ],
                <|"Image" -> ARCScene[image], "Transform" -> <|"Type" -> "Rotation", "Angle" -> angle|>|>
                ,
                Nothing
            ]
        ] /@ {270, 180, 90}
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
    Block[{$file = file},
        $generatorCalls = {};
        Module[{},
            MatchQ[
                ARCTest[file, opts],
                KeyValuePattern["PassPercentage" -> 1. | 1]
            ]
        ]
    ]

ARCWorkingQ[examples_List, rules_Association] :=
    ARCMemoized@
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
                    "Input" -> ReturnIfFailure[ARCParseScene[example["Input"]]],
                    "Output" -> ReturnIfFailure[ARCParseScene[example["Output"]]]
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

(* Disabled for now as of Sept 18 2022 since this causes the number of referenceable things
   to explode, such as going from 4 to 85 for examples like 746b3537, which causes a massive
   slowdown. *)
$EnableReferenceableClasses = False;

ARCMakeObjectsReferenceable["ObjectLists" -> objectsForAllExamples_List, opts:OptionsPattern[]] :=
    ARCMemoized[
        "MemoizationKey" -> {
            objectsForAllExamples,
            opts
        }
    ]@
    ARCLogScope["ARCMakeObjectsReferenceable"]@
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
                            (*If [property === "Color",
                                Echo[property -> value -> countsForValue]
                            ];*)
                            Which[
                                MatchQ[countsForValue, {Repeated[1]}],
                                    (* There is always 1 object with this value, so we can introduce
                                       it as a referenceable thing. *)
                                    value -> 1,
                                And[
                                    TrueQ[$EnableReferenceableClasses],
                                    AllTrue[countsForValue, And[IntegerQ[#] && # >= 1] &]
                                ],
                                    (* There is always one or more objects with this value, so we
                                       treat this as a referenceable class. *)
                                    value -> "*",
                                True,
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
                            (*If [property === "Color",
                                Echo[property -> Except[value] -> countsForNotValue]
                            ];*)
                            Which[
                                And[
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
                                    Except[value] -> 1,
                                And[
                                    TrueQ[$EnableReferenceableClasses],
                                    AllTrue[countsForNotValue, And[IntegerQ[#], # >= 1] &]
                                ],
                                    (* There is always one or more objects _not_ with this value,
                                       so we treat this as a referenceable class. *)
                                    Except[value] -> "*",
                                True,
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
        
        (*EchoIndented[usablePropertiesAndValues];*)
        
        usablePropertiesAndValues = DeleteCases[usablePropertiesAndValues, {}];
        
        objectReferences =
            Flatten@
            KeyValueMap[
                Function[{property, values},
                    Function[{item},
                        With[{value = item[[1]], count = item[[2]]},
                            If [count === 1,
                                Object
                                ,
                                Class
                            ][
                                <|
                                    property -> value
                                |>
                            ]
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
        
        If [MatchQ[Length /@ objectsForAllExamples, {Repeated[1]}],
            res = Append[
                res,
                Object["Object"] -> <||>
            ]
        ];
        
        res
    ]

(*!
    \function GetObject
    
    \calltable
        GetObject[object, parsedScene] '' Gets a referenceable object from a parsed scene. Can also be used to retrieve objects of a class.
    
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
Options[GetObject] =
{
    "NamedObjects" -> <||>,         (*< Objects that can be referred to by name like Object["MyObject"]. *)
    "Class" -> False                (*< Can be set to True if we're looking up a class rather than a single object, such that a list of 1 or more objects should be returned. *)
};
GetObject[object: _Object | _Class, parsedSceneOrObjectsList_, opts:OptionsPattern[]] :=
    GetObject[
        object[[1]],
        parsedSceneOrObjectsList,
        If [MatchQ[object, _Class],
            "Class" -> True
            ,
            Sequence @@ {}
        ],
        opts
    ]

GetObject[object: _Association | _String, parsedScene_Association, opts:OptionsPattern[]] :=
    Which[
        object === "InputScene",
            parsedScene,
        object === "Object",
            (* Single object in scene. *)
            parsedScene[["Objects", 1]],
        (* Note that `object` can be a string, so we explicitly check first that it's an
           association prior to checking its Context value. *)
        AssociationQ[object] && object["Context"] === "Component",
            GetObject[
                object,
                Replace[
                    OptionValue["NamedObjects"]["InputObject", "Components"],
                    Except[_List] :> {}
                ],
                opts
            ],
        AssociationQ[object] && object["Context"] === "Output",
            (* Requires that the caller correctly passes in the _output_ scene. *)
            GetObject[object, parsedScene["Objects"], opts],
        StringQ[object["Context"]],
            ReturnFailure[
                "UnsupportedContext",
                "GetObject doesn't currently support the context '" <> ToString[object["Context"]] <> "'.",
                "Object" -> object
            ],
        True,
            GetObject[object, parsedScene["Objects"], opts]
    ]

GetObject[object_Association, objects_List, OptionsPattern[]] :=
    Module[{condition, matchingObject2},
        Replace[
            Cases[
                objects,
                KeyValuePattern@
                Normal@
                (
                    (* We drop the "Context" key since that should be handled by higher-level
                       code to ensure that `objects` is for that context. *)
                    condition = KeyDrop[object, "Context"]
                )
            ],
            {
                {matchingObject_} :>
                    If [TrueQ[OptionValue["Class"]],
                        {matchingObject}
                        ,
                        matchingObject
                    ],
                {} :> (
                    If [And[
                            MatchQ[condition, Association["Position" -> _]],
                            !MissingQ[
                                With[{position = condition["Position"]},
                                    (* If we couldn't find the object, but we're looking for an
                                       object at a particular position, and we _were_ able to find
                                       an object that occupies that position even though it's
                                       top-left corner isn't at that position, then for now we'll
                                       return this object. e.g. f76d97a5 test example *)
                                    matchingObject2 = SelectFirst[
                                        objects,
                                        MemberQ[#["PixelPositions"], position] &
                                    ]
                                ]
                            ]
                        ],
                        matchingObject2
                        ,
                        If [TrueQ[OptionValue["Class"]],
                            ReturnFailure[
                                "NoObjectsOfClassFound",
                                "No objects of the given class were found in the scene.",
                                "Class" -> object,
                                "Objects" -> objects
                            ]
                            ,
                            ReturnFailure[
                                "ObjectNotFound",
                                "The object wasn't found in the scene.",
                                "Object" -> object,
                                "Objects" -> objects
                            ]
                        ]
                    ]
                ),
                multipleObjects:{_, __} :>
                    If [TrueQ[OptionValue["Class"]],
                        multipleObjects
                        ,
                        ReturnFailure[
                            "AmbiguousObject",
                            "Multiple matching objects were found, but only 1 match was expected.",
                            "ObjectPattern" -> object,
                            "MatchingObjects" -> SimplifyObjects[objects]
                        ]
                    ]
            }
        ]
    ]

GetObject[objectName_String, objects_List, opts:OptionsPattern[]] :=
    Module[{},
        ReturnFailureIfMissing[
            OptionValue["NamedObjects"][objectName],
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
            objectsOfType =
                (* We use flatten incase the object reference is for a class rather than a
                   single object. *)
                Flatten[
                    Function[{objectList},
                        object =
                            ReturnIfFailure@
                            GetObject[objectReference, objectList]
                    ] /@ objectLists
                ];
            
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
    \function ARCObjectMinimalPropertySetsAndSubProperties
    
    \calltable
        ARCObjectMinimalPropertySetsAndSubProperties[] '' Minimal property sets for specifing an object.
    
    \maintainer danielb
*)
Clear[ARCObjectMinimalPropertySetsAndSubProperties];
Options[ARCObjectMinimalPropertySetsAndSubProperties] =
{
    "Component" -> False,   (*< Should be set to True in the context of AddComponents. *)
    "AddObjects" -> False   (*< Should be set to True in the context of AddObjects. *)
};
ARCObjectMinimalPropertySetsAndSubProperties[OptionsPattern[]] :=
    Module[{},
        <|
            "MinimalPropertySets" -> {
                (* TODO: Introduce the concept of alternatives where one of the alternatives can be a
                        list of multiple properties. That would allow us to more tightly factor
                        these, such as "Position" | {"X", "Y"}, although perhaps we don't need to
                        support Position and can/should replace any instances of those with X and Y
                        here? (We should at least try that first) *)
                If [!And[
                        (* If we are in SingleObject mode and allowing a single example per rule,
                           then don't allow an object to be defined by its Image directly,
                           otherwise it will find rules that just map to the entire output
                           scene. *)
                        $MinimumExamplesPerRule === 1,
                        TrueQ[$singleObject]
                    ],
                    {
                        "Image",
                        Sequence @@
                        If [TrueQ[OptionValue["AddObjects"]],
                            {
                                "Y",
                                "X"
                            },
                            {
                                "Position"
                            }
                        ],
                        If [And[
                                !TrueQ[OptionValue["Component"]],
                                (* I don't think we want this condition here, but adding it for the
                                moment during refactoring to minimize changes. Although, I tried
                                removing this and 31aa019c broke. *)
                                !TrueQ[OptionValue["AddObjects"]]
                            ],
                            "ZOrder"
                            ,
                            Nothing
                        ]
                    }
                    ,
                    Nothing
                ],
                {
                    "Shape" | "MonochromeImage" | "Shapes",
                    Alternatives[
                        "Color",
                        Missing["Color"] /;
                            (* We can't allow the color to be Missing in all cases, or it breaks
                            321b1fc6 due to it thinking it's sufficient to know the Shape without
                            knowing the color. So we only allow it to be missing if the Shape
                            specifies the colors (e.g. bb43febb). *)
                            MatchQ[
                                #["Shape"],
                                KeyValuePattern[
                                    {
                                        "Border" -> KeyValuePattern["Color" -> _],
                                        "Interior" -> KeyValuePattern["Color" -> _]
                                    }
                                ]
                            ]
                    ],
                    Sequence @@
                    If [TrueQ[OptionValue["Component"]],
                        {
                            "Position",
                            "Width",
                            "Height"
                        },
                        {
                            "X" | "XInverse",
                            "Y" | "YInverse",
                            "Width" | "X2" | "X2Inverse",
                            "Height" | "Y2" | "Y2Inverse",
                            "ZOrder"
                        }
                    ]
                },
                If [TrueQ[OptionValue["Component"]],
                    (* e.g. 25d487eb *)
                    {
                        "Outward",
                        "Shape",
                        "Direction",
                        "Color",
                        Alternatives[
                            "Y" /;
                                MatchQ[
                                    #["Direction"],
                                    {0, -1} | {0, 1}
                                ],
                            (* e.g. 25d487eb *)
                            "X" /;
                                MatchQ[
                                    #["Direction"],
                                    {-1, 0} | {1, 0}
                                ]
                        ]
                    }
                    ,
                    Nothing
                ]
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
                        |>,
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
                |>,
                "Shape" -> <|
                    "ObjectGet" -> Function[#["Shape"]],
                    "MinimalPropertySets" -> {
                        (* For 45 degree and 135 degree lines. e.g. 1f876c06 *)
                        {"Name", "Angle"}
                        (* e.g. b548a754
                        Since the above input isn't yet working, and this is breaking 50cb2852 for
                        some reason, we won't enable this yet. *)
                        (*{"Name", "Filled", "Interior", "Border"}*)
                    }
                |>,
                "Color" -> <|
                    "ObjectGet" -> Function[#["Color"]]
                |>,
                "Width" -> <|
                    "ObjectGet" -> Function[#["Width"]]
                |>,
                "Height" -> <|
                    "ObjectGet" -> Function[#["Height"]]
                |>,
                "Y" -> <|
                    "ObjectGet" -> Function[#["Y"]]
                |>,
                "X" -> <|
                    "ObjectGet" -> Function[#["X"]]
                |>
            }
        |>
    ]

getTransformTypes[] := <|
    Automatic -> <|
        ARCObjectMinimalPropertySetsAndSubProperties[]
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
    "Rotation" -> <|
        "MinimalPropertySets" -> {
            {"Angle"}
        }
    |>,
    "Flip" -> <|
        "MinimalPropertySets" -> {
            {"Direction"}
        }
    |>,
    "Scaled" -> <|
        "MinimalPropertySets" -> {
            {"Factor"}
        }
    |>,
    "AddComponents" -> <|
        "MinimalPropertySets" -> {
            {"Components"}
        },
        "SubProperties" -> {
            "Components" -> <|
                ARCObjectMinimalPropertySetsAndSubProperties["Component" -> True]
            |>
        }
    |>,
    "AddObjects" -> <|
        "MinimalPropertySets" -> {
            {"Objects"}
        },
        "SubProperties" -> {
            "Objects" -> <|
                ARCObjectMinimalPropertySetsAndSubProperties["AddObjects" -> True]
            |>
        }
    |>
|>;

$transformTypes := getTransformTypes[];

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
Clear[ARCGeneralizeConclusions];
ARCGeneralizeConclusions[conclusionsIn_List, referenceableInputObjects_Association, examples_List] :=
    ARCMemoized[
        "MemoizationKey" -> {
            conclusionsIn,
            referenceableInputObjects,
            examples
        }
    ]@
    ARCLogScope["ARCGeneralizeConclusions"]@
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
        
        (*ARCEcho["ARCGeneralizeConclusions" -> SimplifyObjects["ExtraKeys" -> {"Shape", "Input"}][conclusions]];*)
        
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
            (* Always "Same" -> True"? *)
            AllTrue[
                conclusions,
                MatchQ[#, KeyValuePattern["Same" -> True]] &
            ],
                Return[<|"Same" -> True|>, Module],
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
                        KeyTake[conclusion, {"Example", "Input", "Output"}],
                        "Value" -> KeyDrop[conclusion, {"Example", "Input", "Output"}]
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
    (* HERE2 *)
    (*EchoTag["ARCGeneralizeConclusionValue result" -> propertyPath]@*)
    ARCMemoized[
        "MemoizationKey" -> {
            propertyPath,
            propertyAttributes,
            conclusions,
            referenceableObjects,
            examples
        }
    ]@
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
        
        ARCEcho3["propertyPath" -> propertyPath];
        
        values = conclusions[[All, "Value"]];
        
        (*If [property === "Shape",
            ARCEcho["Conclusion values" -> values];
            ARCEcho["Input values" -> conclusions[[All, "Input", property]]];
        ];*)
        
        (* Properties who's values are association "entities" with their own sub-property
           values might involve ways to take a list of values and find the most general
           "intersection" of them. For example, shapes fall into a graph with IsA
           relationships, such as "square IsA rectangle". e.g. 694f12f3 *)
        If [property === "Shape",
            Replace[
                ReturnIfFailure@
                ARCPruneAlternatives[
                    values,
                    property,
                    (* I'm a bit confused on whether this should be "General" or
                       "Specific" or something more nuanced. For 694f12f3, if we set this
                       to "Specific", then it concludes that output objects are
                       squares, which is incorrect, since in general they are
                       rectangles. *)
                    "Most" -> "General"
                ],
                {generalizedValue_} :> Return[
                    property -> generalizedValue,
                    Module
                ]
            ]
        ];
        
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
        If [And[
                property =!= None,
                (* If we're trying to infer a nested property, then it presumably
                   won't correspond to a top-level input object property, and even if it
                   did, ARCApplyConclusion wouldn't know to take the input property
                   value and stuff it down into this nested location. *)
                Length[propertyPath] === 1,
                conclusions[[All, "Input", property]] === values
            ],
            Return[Nothing, Module]
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
                If [And[
                        (* If we're trying to infer a nested property, then it presumably
                           won't correspond to a top-level input object property, and even if it
                           did, ARCApplyConclusion wouldn't know to take the input property
                           value and stuff it down into this nested location. *)
                        Length[propertyPath] === 1,
                        ARCGeneralizeConclusionValueNonRecursive[
                            propertyPath,
                            propertyAttributes,
                            conclusions,
                            referenceableObjects,
                            examples,
                            (* This is all we're wanting to do in this context. It's important
                               we set this, because trying to generalize values using
                               referenceable objects can be expensive, so we want to avoid
                               doing that unless it's helpful in a context. *)
                            "OnlyCheckIfValuesMatchInputObjects" -> True
                        ] === Nothing
                    ],
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
                    (* If the unique "value" is actually an object, then don't just return it,
                       because it will be overly verbose. Instead we'll continue below so that
                       minimal property sets can be used to minimize its size.
                       e.g. 00dbd492 *)
                    If [FreeQ[
                            uniqueValue[[1]],
                            KeyValuePattern[{"Image" -> _, "Shape" -> _, "Shapes" -> _}]
                        ],
                        Return[property -> uniqueValue[[1]], Module]
                    ]
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
                        Or[
                            ListQ[propertyAttributes["SubProperties"]],
                            ListQ[propertyAttributes["MinimalPropertySets"]]
                        ]
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
                                                        KeyTake[conclusion, {"Example", "Input", "Output"}],
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
                        (*Echo["possibleRules" -> propertyPath -> possibleRules];*)
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
Options[ARCGeneralizeConclusionValueNonRecursive] =
{
    "OnlyCheckIfValuesMatchInputObjects" -> False   (*< If True, we will only check if the values match the corresponding values in the input objects. *)
};
ARCGeneralizeConclusionValueNonRecursive[propertyPath_List, propertyAttributes: _Association | Automatic, conclusions_List, referenceableObjects_Association, examples_List, OptionsPattern[]] :=
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
            If [MatchQ[propertyPath, {_}],
                (* We only grab a key of the same name from the input if this is a top-level
                   property. If we're trying to infer a nested property, then it presumably
                   won't correspond to a top-level input object property, and even if it
                   did, ARCApplyConclusion wouldn't know to take the input property
                   value and stuff it down into this nested location. *)
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
                       from our rule conclusion. *)
                    values === inputObjectValues,
                        Return[Nothing, Module],
                    TrueQ[OptionValue["OnlyCheckIfValuesMatchInputObjects"]],
                        (* Now that we've had a chance (above) to check if these values are the
                           same as the input values, if that's all we were asked to do, then we
                           should return to indicate that the values didn't match the input
                           values. *)
                        Return[Missing["NotFound"], Module],
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
                            If [First[differences] === 0.,
                                (* Integer vs Real, but the values are the same, so we can just
                                   inherit the input's property values. *)
                                Return[Nothing, Module]
                            ];
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
                If [!MissingQ[conclusions[[1, "Input"]]],
                    Prepend[
                        referenceableObjects,
                        Object["InputObject"] -> Automatic
                    ]
                    ,
                    referenceableObjects
                ],
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

ARCGeneralizeConclusionValueNonRecursive[property_String, values_List, examples_List] :=
    Replace[
        ARCGeneralizeConclusionValueNonRecursive[
            {property},
            Automatic,
            MapIndexed[
                Function[{propertyValue, index},
                    <|
                        "Value" -> propertyValue,
                        "Example" -> First[index]
                    |>
                ],
                values
            ],
            (* Referenceable objects. *)
            <|
                Object["InputScene"] -> <||>
            |>,
            examples
        ],
        {
            HoldPattern[Rule][_, value_] :> value,
            _ :> Missing["NotInferrable", property]
        }
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
            subPropertyResults,
            conditionNotMetQ,
            conclusionsSoFar = <||>
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
                        {
                            propertyName: _String | Missing[_String] :> propertyName -> <||>,
                            HoldPattern[Condition][
                                propertyName: _String | Missing[_String],
                                condition_
                             ] :> propertyName -> <|"Condition" -> Hold[condition]|>
                        },
                        {1}
                    ];
                
                subPropertyResults =
                    ReturnIfFailure@
                    Module[{},
                        KeyValueMap[
                            Function[{subPropertyName, subPropertyAttributes},
                                
                                conditionNotMetQ = False;
                                
                                If [!MissingQ[subPropertyAttributes["Condition"]],
                                    If [!TrueQ[
                                            ReleaseHold@
                                            Replace[
                                                subPropertyAttributes["Condition"],
                                                # -> conclusionsSoFar, {0, Infinity},
                                                Heads -> True
                                            ]
                                        ],
                                        (* This property has a condition specified that must be
                                           true for it to apply, and that condition evaluated to
                                           false, so we'll have to abort the use of this property. *)
                                        conditionNotMetQ = True
                                    ]
                                ];
                                
                                Which[
                                    TrueQ[conditionNotMetQ],
                                        Missing[subPropertyName, "ConditionNotMet"],
                                    MatchQ[subPropertyName, Missing[_String]],
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
                                        ],
                                    True,
                                        (* Try to generalize the values for this property. *)
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
                                            (* If one of the minimal property sets is so good that it
                                            doesn't even need to be specified in the conclusion,
                                            then use it without considering other property sets. *)
                                            Nothing :> Return[{Nothing}, Module]
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
                    With[{thisTransform = ARCChooseBestTransform[DeleteMissing[subPropertyResults]]},
                        (*Echo["Choose best alternative" -> DeleteMissing[subPropertyResults] -> thisTransform];*)
                        conclusionsSoFar = Append[conclusionsSoFar, thisTransform]
                    ];
                    conclusionsSoFar
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
ARCGeneralizeConclusionValueUsingReferenceableObjects[propertyPath_List, values_List, referenceableObjectsIn_Association, examples_List, opts:OptionsPattern[]] :=
    ARCMemoized[
        "MemoizationKey" -> {
            propertyPath,
            values,
            referenceableObjectsIn,
            examples,
            opts
        }
    ]@
    ARCLogScope[
        "ARCGeneralizeConclusionValueUsingReferenceableObjects",
        <|
            "PropertyPath" -> propertyPath,
            "ReferenceableObjects" -> Length[referenceableObjectsIn]
        |>
    ]@
    Module[
        {
            referenceableObjects = Keys[referenceableObjectsIn],
            theseExamples,
            theseComponents,
            (* Note that this can also contain nested lists of objects if a reference is for a
               class. *)
            objects,
            valuesToInfer,
            property
        },
        
        $debugProperty = "TurnDegrees";
        
        theseExamples =
            If [examples =!= {},
                examples[[values[[All, "Example"]]]]
                ,
                (* When using ARCFindRules for generated objects, we don't currently pass a list of
                   examples. *)
                {}
            ];
        
        theseComponents = values[[All, "Input", "Components"]];
        
        (* If we find that the values we're wanting to infer aren't consistent/constant within
           each example scene, then we can remove all referenceable objects except for
           Object["InputObject"], since that's the only referenceable object that could
           fulfill varying values within 1 example. *)
        FirstCase[
            Length /@ (DeleteDuplicates /@ GroupBy[values, Function[#["Example"]] -> Function[#["Value"]]]),
            Except[1] :> (
                referenceableObjects = Cases[referenceableObjects, Object["InputObject"]];
                If [referenceableObjects === {},
                    Return[Missing["NotInferrable"], Module]
                ]
            )
        ];
        
        valuesToInfer = values[[All, "Value"]];
        
        (*If [Last[propertyPath] === $debugProperty,
            ARCEcho["valuesToInfer" -> valuesToInfer];
            (*ARCEcho2[referenceableObjectsIn];*)
        ];*)
        
        ARCLogScope["GetReferenceableValues"(*, <|"Values" -> valuesToInfer|>*)][
        referenceableValues =
            Function[{reference},
                (*ARCLogScope["GetReferenceableValues2", <|"Reference" -> reference|>][*)
                Which[
                    reference === Object["InputScene"],
                        objects = theseExamples[[All, "Input"]],
                    reference === Object["InputObject"],
                        objects = values[[All, "Input"]],
                    And[
                        AssociationQ[reference[[1]]],
                        MatchQ[reference[[1, "Context"]], "Component"]
                    ],
                        objects =
                            Function[{components},
                                ReturnIfFailure@
                                GetObject[reference, components]
                            ] /@ theseComponents,
                    And[
                        AssociationQ[reference[[1]]],
                        MatchQ[reference[[1, "Context"]], "Output"]
                    ],
                        objects =
                            Function[{example},
                                ReturnIfFailure@
                                GetObject[reference, example["Output"]]
                            ] /@ theseExamples,
                    True,
                        If [Or[
                                StringQ[reference[[1]]],
                                MissingQ[reference[[1, "Context"]]]
                            ],
                            objects =
                                Function[{example},
                                    ReturnIfFailure@
                                    GetObject[reference, example["Input"]]
                                ] /@ theseExamples
                            ,
                            ReturnFailure[
                                "UnsupportedReferenceContext",
                                "The reference context '" <> reference[[1, "Context"]] <> "' isn't supported by ARCGeneralizeConclusionValueUsingReferenceableObjects."
                            ]
                        ]
                ];
                
                (*If [reference === Object["InputScene"],
                    Echo["valuesToInfer" -> valuesToInfer];
                    ARCEcho[
                        KeyTake[objects, {"ObjectCount"}]
                    ]
                ];*)
                
                property =
                    ARCFindPropertyToInferValues[
                        propertyPath,
                        objects,
                        valuesToInfer,
                        "Reference" -> reference,
                        opts
                    ];
                
                (*If [And[
                        Last[propertyPath] === $debugProperty,
                        MatchQ[
                            reference,
                            Alternatives[
                                Verbatim @ Class[<|"Colors" -> Except[{5}]|>],
                                Verbatim @ Class[<|"XMiddle.Rank" -> 1|>]
                            ]
                        ]
                    ],
                    ARCEcho[
                        {
                            "Reference" -> reference,
                            "UsableProperty" -> property,
                            "Objects" -> SimplifyObjects["ExtraKeys" -> {}][objects],
                            "ValuesToInfer" -> valuesToInfer
                        }
                    ]
                ];*)
                
                If [!MissingQ[property],
                    If [FreeQ[property, TODO],
                        If [MatchQ[reference, _Class],
                            ClassValue
                            ,
                            ObjectValue
                        ][reference[[1]], property]
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
                (*]*)
            ] /@ referenceableObjects
        ];
        
        (*If [Last[propertyPath] === $debugProperty,
            Echo[referenceableObjects -> referenceableValues]
        ];*)
        
        If [MatchQ[referenceableValues, {__}],
            (*If [Last[propertyPath] === "Color",
                ARCEcho["referenceableValues"];
                ARCDebug@
                ARCEcho2@
                ARCChooseBestTransform[
                    EchoIndented2[
                        Association[Last[propertyPath] -> #] & /@ referenceableValues
                    ]
                ];
                Throw["HERE"]
            ];*)
            
            best = Normal[
                ARCChooseBestTransform[
                    Association[Last[propertyPath] -> #] & /@ referenceableValues
                ]
            ][[1, 2]];
            
            (*first = First[referenceableValues];
            If [best =!= first,
                ARCEcho["referenceableValues" -> Last[propertyPath] -> referenceableValues];
                ARCEcho["first" -> first];
                ARCEcho["best" -> best];
            ];*)
            
            best
            ,
            Missing["NotFound"]
        ]
    ]

(*!
    \function ARCFindPropertyToInferValues
    
    \calltable
        ARCFindPropertyToInferValues[propertyPath, objects, values] '' Given a list of objects and a corresponding list of values that need to be inferred, returns the property that can be used to perform the inference, or Missing if none found.
    
    objects:
        Note that this can also contain nested lists of objects if a reference is for a class.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFindPropertyToInferValues]
    
    \maintainer danielb
*)
Clear[ARCFindPropertyToInferValues];
Options[ARCFindPropertyToInferValues] =
{
    "RelativePosition" -> False,    (*< Can be set to True if we are trying to infer a relative position, in which case we only want to consider particular properties. For example, we shouldn't use an absolute Y property value to infer a relative position property. *)
    "Reference" -> Null             (*< The reference being considered. *)
};
ARCFindPropertyToInferValues[propertyPath_List, objectsIn_List, values_List, opts:OptionsPattern[]] :=
    Module[
        {
            transposedObjects,
            matchingProperties,
            values2,
            objects = objectsIn,
            matchingPropertiesUsingAddition,
            matchingPropertiesUsingMultiplication
        },
        
        (* If any of the items aren't actually associations but lists/groups of associations,
           then turn them into associations keeping their common values. We do this for example
           when using referenceable classes, where we may have multiple objects in a scene that
           match that class, but we can only make use of properties that are consistent. *)
        objects = Replace[
            objects,
            objectList_List :> ARCObjectCommonalities[objectList],
            {1}
        ];
        
        transposedObjects = AssociationTranspose[
            Replace[
                objects,
                assoc_Association :> KeyDrop[assoc, {"UUID"}],
                {1, 2}
            ]
        ];
        
        matchingProperties = Select[
            transposedObjects,
            # === values &
        ];
        
        (*If [And[
                Last[propertyPath] === "Color",
                OptionValue["Reference"] === Object[<|"Width.Rank" -> 1|>]
            ],
            ARCEcho2["transposedObjects" -> transposedObjects["Color"]];
            ARCEcho2["matchingProperties" -> matchingProperties];
        ];*)
        
        (* What properties of these objects appear to be usable to infer these values? *)
        Which[
            matchingProperties =!= <||>,
                (* We've round a match, so no need to consider special value type matching. *)
                Null,
            MatchQ[values, {Repeated[True | False]}] && Length[DeleteDuplicates[values]] > 1,
                (* Special handling for boolean values. *)
                Return[
                    ARCFindPropertyToInferBooleanValues[propertyPath, transposedObjects, values],
                    Module
                ],
            MatchQ[values, {Repeated[_ARCScene]}],
                (* Special handling for image values. *)
                Return[
                    ARCFindPropertyToInferImageValues[propertyPath, objects, values],
                    Module
                ]
        ];
        
        (* What properties of these objects, if we use addition, appear to be usable
           to infer these values? *)
        matchingPropertiesUsingAddition = Select[
            transposedObjects,
            And[
                AllTrue[values, NumberQ],
                AllTrue[#, NumberQ],
                (* TODO: Why do we need this condition? Shouldn't the lengths of these things
                         always be the same. e.g. relative-components *)
                Length[values] === Length[#],
                And[
                    SingleUniqueValueQ[differences = values - #],
                    !MatchQ[differences[[1]], 0 | 0.]
                ]
            ] &
        ];
        
        (* What properties of these objects, if we use multiplication, appear to be usable
           to infer these values? *)
        (* Disallow color to be treated as an integer here since that doesn't make semantic
           sense. We should probably also disallow addition above, but will avoid changing
           that as of Oct 5 2022 since it could in theory break things making use of it.
           (But long term we should probably disallow that too) Ideally we'd use $properties
           to check if "Type" is "Integer", but that might break things so will hold off
           for the moment.
           e.g. aabf363d gets "Color" -> Inactive[Times][ObjectValue["InputObject", "Color"], 2] *)
        matchingPropertiesUsingMultiplication =
            If [Last[propertyPath] =!= "Color",
                Select[
                    transposedObjects,
                    And[
                        AllTrue[values, NumberQ],
                        AllTrue[#, NumberQ],
                        Length[values] === Length[#],
                        FreeQ[#, 0 | 0., {1}],
                        And[
                            SingleUniqueValueQ[factors = values / #],
                            !MatchQ[factors[[1]], 1 | 1.]
                        ]
                    ] &
                ]
                ,
                <||>
            ];
        
        matchingProperties =
            ARCPruneMatchingPropertiesForRelativePositions[
                matchingProperties,
                OptionValue["RelativePosition"]
            ];
        
        matchingPropertiesUsingAddition =
            ARCPruneMatchingPropertiesForRelativePositions[
                matchingPropertiesUsingAddition,
                OptionValue["RelativePosition"]
            ];
        
        matchingPropertiesUsingMultiplication =
            ARCPruneMatchingPropertiesForRelativePositions[
                matchingPropertiesUsingMultiplication,
                OptionValue["RelativePosition"]
            ];
        
        Which[
            Length[matchingProperties] > 0,
                (* TODO: What to do if there are multiple properties that could
                         be used? *)
                First[Keys[matchingProperties]],
            Length[matchingPropertiesUsingAddition] > 0,
                (* NOTE: As of Aug 18 2022, this function is called with one referenceable object
                         after another, and the first one that has a suitable property results in
                         that property being used. Related to that is that when we form the list
                         of referenceable objects, we put the "Context" -> "Component" ones first,
                         since we feel it's more likely that a property of a component will yield
                         the best property to use. (it feels "closer" to the thing we're trying
                         to infer) This has interplay though with `matchingProperties` vs
                         `matchingPropertiesUsingAddition` in that even if there is a referenceable
                         object with a property that doesn't need math, we might choose a
                         property that _does_ need math given how to iterate over objects
                         and choose the first usable property of the first visited object.
                         It could easily be the case that that isn't desirable. *)
                (* TODO: What to do if there are multiple properties that could
                         be used? *)
                With[{property = First[Keys[matchingPropertiesUsingAddition]]},
                    Inactive[Plus][
                        ObjectValue[
                            (* The caller is responsible for filling in the object reference
                               pattern here. e.g. referenceable-components *)
                            TODO,
                            property
                        ],
                        With[{difference = values[[1]] - transposedObjects[[property, 1]]},
                            If [difference === 0.,
                                (* If we have one set of values being integers, and the other
                                   being Reals, then this can happen. e.g. ac0a08a4 *)
                                Return[
                                    property,
                                    Module
                                ]
                            ];
                            difference
                        ]
                    ]
                ],
            Length[matchingPropertiesUsingMultiplication] > 0,
                (* TODO: What to do if there are multiple properties that could
                         be used? *)
                With[{property = First[Keys[matchingPropertiesUsingMultiplication]]},
                    Inactive[Times][
                        ObjectValue[
                            (* The caller is responsible for filling in the object reference
                               pattern here. e.g. referenceable-components *)
                            TODO,
                            property
                        ],
                        With[{factor = values[[1]] / transposedObjects[[property, 1]]},
                            If [factor === 1.,
                                (* If we have one set of values being integers, and the other
                                   being Reals, then this can happen. *)
                                Return[
                                    property,
                                    Module
                                ]
                            ];
                            factor
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
    \function ARCFindPropertyToInferImageValues
    
    \calltable
        ARCFindPropertyToInferImageValues[propertyPath, objects, values] '' Tries to find a property of a referenceable object to infer a list of image, possibly involving transforms.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFindPropertyToInferImageValues]
    
    \maintainer danielb
*)
Clear[ARCFindPropertyToInferImageValues];
ARCFindPropertyToInferImageValues[propertyPath_List, objects_List, values_List] :=
    Module[{transformations},
        
        (* Before we do an expensive comparison of the images with various potential transforms
           of those images, first check to ensure the colors of the images are at least
           compatible. One case where we don't need to do this is where there's just a single
           color and we're trying to infer the Shape property value. *)
        If [And[
                !And[
                    Last[propertyPath] === "Shape",
                    MatchQ[objects[[All, "Colors"]], {Repeated[{_}]}]
                ],
                (ARCImageColors /@ values) =!= objects[[All, "Colors"]]
            ],
            Return[Missing["NotFound"], Module]
        ];
        
        (* For each image value, compare it to the shapes of the object from the corresponding
           scene to see if one or more transformations are a match. *)
        transformations = MapIndexed[
            Function[{object, pos},
                Append[
                    object,
                    "Transforms" -> ARCImageTransforms[object, values[[First[pos]]]]
                ]
            ],
            objects
        ];
        
        (*ARCEcho2["objects" -> objects];
        ARCEcho2["values" -> values];*)
        
        Replace[
            ARCChooseTransform[transformations, "FallbackToPruning" -> False],
            {
                {Repeated[KeyValuePattern["Transform" -> transform_]]} :> (
                    (*Echo["TRANFORM" -> transform];
                    ARCEcho2["transformations" -> transformations];
                    ARCEcho2["objects" -> objects];
                    ARCEcho2["values" -> values];
                    Throw["HERE"];*)
                    Inactive[Transform][
                        ObjectValue[TODO, Last[propertyPath]],
                        transform
                    ]
                ),
                _ :> (
                    Missing["NotFound"]
                )
            }
        ]
    ]

(*!
    \function ARCFindPropertyToInferBooleanValues
    
    \calltable
        ARCFindPropertyToInferBooleanValues[properthPath, transposedObjects, values] '' Tries to find a property of a referenceable object to infer a list of boolean values.
    
    Examples:
    
    ARCFindPropertyToInferBooleanValues[properthPath, transposedObjects, values] === TODO
    
    \maintainer danielb
*)
Clear[ARCFindPropertyToInferBooleanValues];
ARCFindPropertyToInferBooleanValues[properthPath_List, transposedObjects_Association, values_List] :=
    Module[{positionOfTrueValue, matchingProperties, valueThatImpliesTrue},
        
        (* NOTE: The below code was written for 6773b310 so that when processing the
                 AddComponents rule, which applies to some grid cells (if two pink pixels)
                 but not others, it would be able to use InptuScene.ObjectCount to
                 generalize a condition of when to add a blue pixel vs. when not.
                 However, because some grid cells involve pink pixels that are
                 touching on a diagonal, they form a single object, which means
                 that we can't use InputScene.ObjectCount, nor can we currently
                 use any scene property, so it is unable to generalize the
                 condition. Thus, as of Sept 11 2022, the below code isn't
                 being used by an examples that we're aware of, and if it were,
                 we have yet to implement the ARCApplyRules code necessary
                 to abide by that new "Condition" attribute of the AddObjects
                 transform. *)
        
        (* For now, since we don't typically have actual True/False values for property values,
           we'll just immediately look for non-True/False values, such as integers, that can
           be used to imply our True/False values. In the future if we do have object property
           values that are True/False, then we should consider them as well, although perhaps
           they'll implicitly get considered here, so maybe we should show some preference
           to them if they are an option. Also, for the moment we don't show any preference
           to properties where the values that correspond to False are all the same, and
           perhaps we should. *)
        
        If [Min[Counts[values]] < $MinimumExamplesPerRule,
            (* There aren't enough examples of True and/or False. For example, it's typically
               too risky to form a conclusion based on only a single example. *)
            Return[
                Missing["NotFound", "InsufficientValueExamples"],
                Module
            ]
        ];
        
        (* What is the position of the first True value in the list? *)
        positionOfTrueValue =
            First[FirstPosition[values, True, {1}, Heads -> False]];
        
        matchingProperties = KeyValueMap[
            Function[{propertyName, valuesOfProperty},
                (* What value of this property seems to be associated with the value True that we're
                    trying to infer? *)
                valueThatImpliesTrue = Part[
                    valuesOfProperty,
                    positionOfTrueValue
                ];
                If [MatchQ[
                        valuesOfProperty,
                        Replace[
                            values,
                            {
                                True -> valueThatImpliesTrue,
                                False -> Except[valueThatImpliesTrue]
                            },
                            {1}
                        ]
                    ],
                    propertyName -> valueThatImpliesTrue
                    ,
                    Nothing
                ]
            ],
            transposedObjects
        ];
        
        If [matchingProperties === {},
            (* We couldn't find any referenceable property values to imply when our values
               are True vs False. *)
            Missing["NotFound"]
            ,
            (* Here we are returning an association of the form
                <|propertyName -> valueThatImpliesTrue|> whereas this function
                usually just returns a property name. *)
            <|ARCChooseBestTransform[matchingProperties]|>
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
AssociationTranspose[assocsIn_] :=
    Module[{assocs = assocsIn},
        With[{keys = DeleteDuplicates[Flatten[Keys[assocs]]]},
            GroupBy[
                Flatten[Normal[assocs[[All, keys]]]],
                First -> Last
            ]
        ]
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
    "ObjectsPattern" -> _,      (*< Can be specified to be something like "InputScene" to restrict which ObjectValues we'll resolve. *)
    "Activate" -> False         (*< If there are an Inactive parts of the resultant expression, should we activate them? *)
};
ResolveValues[expr_, inputObject_Association, scene_Association, OptionsPattern[]] :=
    Module[{resolvedObject, propertyValue, head},
        res = Replace[
            expr,
            {
                (* Resolve an object's value. *)
                (objectOrClassValueHead:(ObjectValue | ClassValue))[pattern: OptionValue["ObjectsPattern"], property_] :> (
                    
                    head = None;
                    
                    resolvedObject =
                        ReturnIfFailure@
                        GetObject[
                            pattern,
                            scene,
                            "NamedObjects" -> <|"InputObject" -> inputObject|>,
                            "Class" -> (objectOrClassValueHead === ClassValue)
                        ];
                    
                    If [objectOrClassValueHead === ClassValue,
                        propertyValue = DeleteDuplicates[resolvedObject[[All, property]]];
                        If [MatchQ[propertyValue, {_}],
                            propertyValue = First[propertyValue]
                            ,
                            ReturnFailure[
                                "InconsistentClassValue",
                                "A ClassValue resolved to differing values.",
                                "Reference" -> expr,
                                "Values" -> resolvedObject[[All, property]]
                            ]
                        ]
                        ,
                        propertyValue = resolvedObject[property]
                    ];
                    
                    propertyValue = ReturnFailureIfMissing[
                        Replace[
                            property,
                            {
                                Inactive[h_][propertyName_String] :> (
                                    (* A function should be applied to the property value. *)
                                    head = h;
                                    propertyValue
                                ),
                                propertyName_String :> propertyValue
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
                        GetObject[pattern, scene, "NamedObjects" -> <|"InputObject" -> inputObject|>],
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
    ARCMemoized[
        "MemoizationKey" -> {
            objects,
            sceneWidth,
            sceneHeight
        }
    ]@
    Module[{res, colorCount},
        
        colorCount =
            Length@
            DeleteCases[DeleteDuplicates[Flatten[objects[[All, "Image", 1]]]], $nonImageColor];
        
        res = Function[{image},
            image[[1]] -> Select[
                objects,
                (#["Image"] === image) &
            ]
        ] /@
            Select[
                DeleteDuplicates[objects[[All, "Image"]]],
                And[
                    Or[
                        And[
                            colorCount > 1,
                            ImageWidth[#] >= 2,
                            ImageHeight[#] >= 2
                        ],
                        (* If the entire image has only 1 non-background color, then we want to
                           be extra careful not to get false positives. e.g. 42a50994 *)
                        And[
                            colorCount === 1,
                            ImageWidth[#] >= 3,
                            ImageHeight[#] >= 3
                        ]
                    ],
                    Not[
                        And[
                            ImageWidth[#] === sceneWidth,
                            ImageHeight[#] === sceneHeight
                        ]
                    ]
                ] &
            ];
        
        (*ARCEcho2[res];*)
        
        ARCSortNotableSubImages[
            Function[{group},
                <|
                    "Image" -> group[[1]],
                    "Count" -> Length[group[[2]]],
                    "ExampleObjects" -> group[[2]]
                |>
            ] /@ res
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
ARCMakeObjectsForSubImages[object_Association, subImages_List, scene_ARCScene, backgroundColor_, opts:OptionsPattern[]] :=
    Module[
        {
            objectWidth,
            objectHeight,
            leftoverImage,
            processedPartsOfImage,
            subImagesFound,
            strongSubImageQ,
            addComponentsDetectedQ,
            fromSameSceneQ
        },
        
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
        
        subImagesFound = Function[{subImageAssoc},
            
            addComponentsDetectedQ = False;
            fromSameSceneQ = False;
            
            subImagePositions = Missing[];
            
            subImage = subImageAssoc["Image"];
            
            (*If [OptionValue["InputOrOutput"] === "Output" && OptionValue["ExampleIndex"] === 1,
                ARCEcho[ARCScene[subImageAssoc["Image"]]];
            ];*)
            
            (* Check when this notable sub-image exists in the input scene, and is within
               the bounds of an output object that is being considered to be split up.
               If so, don't split the object up, since our convention so far has been
               to treat things as "AddComponents" transforms. e.g. 25d487eb *)
            If [And[
                    OptionValue["InputOrOutput"] === "Output",
                    (* That said, if the output object is a single color, then we do want to split
                       it up since it wouldn't get parsed as multiple things otherwise. *)
                    MissingQ[object["Color"]]
                ],
                subImagePositions =
                    ReturnIfFailure[
                        (*ResourceFunction["FindSubmatrix"][*)
                        FindSubmatrix[
                            leftoverImage,
                            subImage,
                            "Positions"
                        ]
                    ];
                (* Also, even if the output object isn't a single color, if there is a single-color
                   contiguous connection between the sub-image and the larger image, then we again
                   do want to split it up since it wouldn't get parsed as multiple things
                   otherwise. e.g. f25ffba3 *)
                (* Q: Should this be AllTrue or AnyTrue, or something more nuanced? The basic case
                      is where there's just one subImagePosition, such as f25ffba3. *)
                If [!AllTrue[
                        subImagePositions,
                        Function[{subImagePosition},
                            TrueQ[ARCContiguousSubImageQ[object["Image"][[1]], subImage, subImagePosition]]
                        ]
                    ],
                    (*If [OptionValue["InputOrOutput"] === "Output" && OptionValue["ExampleIndex"] === 1,
                        ARCEcho[ARCScene[subImageAssoc["Image"]]];
                    ];*)
                    Function[{exampleObject},
                        If [And[
                                exampleObject["InputOrOutput"] === "Input",
                                ObjectWithinQ[exampleObject, object]
                            ],
                            addComponentsDetectedQ = True
                        ];
                        If [exampleObject["InputOrOutput"] === "Output",
                            (* This notable sub-image is actually from the same scene
                            as the object we're considering. *)
                            fromSameSceneQ = True
                        ]
                    ] /@ subImageAssoc["ExampleObjects"]
                ]
            ];
            
            (* If [ImageWidth[subImage] === 3 && ImageHeight[subImage] === 3,
                XEcho[SimplifyObjects[subImage]];
                $arcDebug = True
                ,
                $arcDebug = False
            ]; *)
            
            Which[
                Not[
                    Or[
                        ImageWidth[subImage] < objectWidth,
                        ImageHeight[subImage] < objectHeight
                    ]
                ],
                    If [subImageAssoc["Count"] > 1,
                        (* This object's _entire_ image is a notable image that occurs multiple
                           times. We want to exit the function to avoid other smaller sub-images
                           from breaking it up. e.g. 95990924 *)
                        Return[object, Module]
                        ,
                        Nothing
                    ],
                And[
                    TrueQ[addComponentsDetectedQ],
                    (* Added this to try to help 6c434453, but then realized it isn't helpful
                       there, so unsure if I should keep or remove this heuristic. *)
                    !TrueQ[fromSameSceneQ]
                ],
                    (* Skip this. See above. *)
                    Nothing,
                True,
                    (* If we haven't already computed this above. (avoid doing duplicate work) *)
                    If [MissingQ[subImagePositions],
                        subImagePositions =
                            ReturnIfFailure[
                                (*ResourceFunction["FindSubmatrix"][*)
                                FindSubmatrix[
                                    leftoverImage,
                                    subImage,
                                    "Positions"
                                ]
                            ]
                    ];
                    
                    (* If [$arcDebug,
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
                                ImageWidth[subImage] >= 3,
                                ImageHeight[subImage] >= 3
                            ],
                            (* There must be at least two colors. e.g. n1hczotml *)
                            Length[DeleteDuplicates[Flatten[subImage]]] >= 2
                        ];
                    
                    (*If [TrueQ[strongSubImageQ],
                        ARCEcho[ARCScene[subImage]]
                    ];*)
                    
                    Function[{subImagePosition},
                        If [And[
                                (* Being careful to avoid processing overlapping sub-images. *)
                                DeleteDuplicates[
                                    Flatten[
                                        processedPartsOfImage[[
                                            subImagePosition[[1]] ;; subImagePosition[[1]] + ImageHeight[subImage] - 1,
                                            subImagePosition[[2]] ;; subImagePosition[[2]] + ImageWidth[subImage] - 1
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
                                                ImageHeight[subImage],
                                                ImageWidth[subImage]
                                            },
                                            $nonImageColor
                                        ],
                                        MemberQ[#, $nonImageColor] &
                                    ]
                                ],
                                (* If the larger image is a single color, and the sub-image within
                                   it has a contiguous connection to the larger image via that
                                   color, then we don't break of the image.
                                   For example:
                                   - The green "L" in ifmyulnv8-dynamic-shape.
                                     Example of where we _do_ want to break things up:
                                   - The first example input of 6c434453, where there's only
                                     a diagonal connection between the "+" and "O". *)
                                !And[
                                    IntegerQ[object["Color"]],
                                    TrueQ[ARCContiguousSubImageQ[object["Image"][[1]], subImage, subImagePosition]],
                                    (* But if our sub-image is at least 3x3 in size, and it occurs
                                       multiple times in this sub-image, then we will split it up.
                                       e.g. 28bf18c6 *)
                                    !And[
                                        ImageWidth[subImage] >= 3,
                                        ImageHeight[subImage] >= 3,
                                        Length[subImagePositions] >= 2
                                    ]
                                ]
                            ],
                            (* Paint this region of `leftoverImage` $nonImageColor so that at the end
                               we can tell if our sub-images have accounted for all non-black pixels
                               in the image. *)
                            leftoverImage[[
                                subImagePosition[[1]] ;; subImagePosition[[1]] + ImageHeight[subImage] - 1,
                                subImagePosition[[2]] ;; subImagePosition[[2]] + ImageWidth[subImage] - 1
                            ]] = $nonImageColor;
                            
                            (* Keep track of what parts of the image we've processed so that we can avoid
                               processing overlapping sub-images. *)
                            processedPartsOfImage[[
                                subImagePosition[[1]] ;; subImagePosition[[1]] + ImageHeight[subImage] - 1,
                                subImagePosition[[2]] ;; subImagePosition[[2]] + ImageWidth[subImage] - 1
                            ]] = 1;
                            
                            <|
                                "Object" -> subImageAssoc["ExampleObjects"][[1]],
                                "Position" -> subImagePosition
                            |>
                            ,
                            Nothing
                        ]
                    ] /@ subImagePositions
            ]
        ] /@ subImages;
        
        subImagesFound = Flatten[subImagesFound];
        
        (*If [subImagesFound =!= {},
            ARCEcho[SimplifyObjects[object] -> SimplifyObjects[subImagesFound]]
        ];*)
        
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
    Module[
        {
            width,
            height,
            y,
            x,
            y2,
            x2,
            area,
            filledArea,
            verticalLineSymmetry,
            horizontalLineSymmetry,
            pixelColorCounts
        },
        
        If [!MatchQ[object["Image"], _ARCScene],
            ReturnFailure[
                "ObjectWithoutImage",
                "ARCInferObjectProperties was called with an object that doesn't have an Image specified.",
                "Object" -> object
            ]
        ];
        
        width = ImageWidth[object["Image"]];
        height = ImageHeight[object["Image"]];
        
        pixelColorCounts =
            Normal@
            Reverse@
            KeySort@
            GroupBy[
                Normal@
                Counts[
                    DeleteCases[
                        Flatten[object["Image"][[1]]],
                        $nonImageColor
                    ]
                ],
                Last -> First
            ];
        
        Join[
            object,
            <|
                "MonochromeImage" -> ARCToMonochrome[object["Image"], $nonImageColor],
                InferColor["Color" -> <|"Colors" -> object["Colors"]|>],
                "ColorCount" -> Length[object["Colors"]],
                If [Length[pixelColorCounts] === 0,
                    Nothing
                    ,
                    With[{mostUsedColors = pixelColorCounts[[1, 2]]},
                        Replace[
                            mostUsedColors,
                            {
                                {c_} :> "MostUsedColor" -> c,
                                _ :> Nothing
                            }
                        ]
                    ]
                ],
                If [Length[pixelColorCounts] < 2,
                    Nothing
                    ,
                    With[{secondMostUsedColors = pixelColorCounts[[2, 2]]},
                        Replace[
                            secondMostUsedColors,
                            {
                                {c_} :> "SecondMostUsedColor" -> c,
                                _ :> Nothing
                            }
                        ]
                    ]
                ],
                "Y" -> (y = object["Position"][[1]]),
                "X" -> (x = object["Position"][[2]]),
                "YInverse" -> (sceneHeight - y + 1),
                "XInverse" -> (sceneWidth - x + 1),
                "Y2" -> (y2 = y + height - 1),
                "X2" -> (x2 = x + width - 1),
                "Y2Inverse" -> (sceneHeight - y2 + 1),
                "X2Inverse" -> (sceneWidth - x2 + 1),
                (* Default the ZOrder to 0 if not specifies. *)
                If [MissingQ[object["ZOrder"]],
                    "ZOrder" -> 0
                    ,
                    Nothing
                ],
                If [Mod[height, 2] === 1,
                    "YMiddle" -> y + (height - 1) / 2
                    ,
                    Nothing
                ],
                If [Mod[width, 2] === 1,
                    "XMiddle" -> x + (width - 1) / 2
                    ,
                    Nothing
                ],
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
                "FilledProportion" -> N[filledArea / area],
                "SurfacePixelCount" -> ARCSurfacePixelCount[object["Image"][[1]]],
                If [SameQ[
                        object["Image"][[1, All, 1 ;; Floor[width / 2]]],
                        ARCApplyImageTransforms[
                            object["Image"][[1, All, -Floor[width / 2] ;; -1]],
                            <|"Type" -> "Flip", "Direction" -> "Horizontal"|>
                        ]
                    ],
                    "VerticalLineSymmetry" -> (verticalLineSymmetry = True)
                    ,
                    "VerticalLineSymmetry" -> False
                ],
                If [SameQ[
                        object["Image"][[1, 1 ;; Floor[height / 2]]],
                        ARCApplyImageTransforms[
                            object["Image"][[1, -Floor[height / 2] ;; -1]],
                            <|"Type" -> "Flip", "Direction" -> "Vertical"|>
                        ]
                    ],
                    "HorizontalLineSymmetry" -> (horizontalLineSymmetry = True)
                    ,
                    "HorizontalLineSymmetry" -> False
                ],
                If [And[
                        TrueQ[verticalLineSymmetry],
                        TrueQ[horizontalLineSymmetry]
                    ],
                    "VerticalAndHorizontalLineSymmetry" -> True
                    ,
                    "VerticalAndHorizontalLineSymmetry" -> False
                ],
                "HollowCount" -> ARCHollowCount[object["Image"][[1]]]
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

ARCToMonochrome[image_List, backgroundColor_] :=
    Replace[image, Except[backgroundColor, _Integer] :> 10, {2}]

ARCToMonochrome[ARCScene[image_], backgroundColor_] :=
    ARCScene[ARCToMonochrome[image, backgroundColor]]

ARCToMonochrome[object:KeyValuePattern["Image" -> image_], backgroundColor_] :=
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
                objectMapping:KeyValuePattern[inputObject_ -> outputObject:KeyValuePattern["Transforms" -> {___, KeyValuePattern["Type" -> "Move"], ___}]] :> (
                    If [!MatchQ[outputObject, KeyValuePattern["Transform" -> KeyValuePattern[{"Offset" -> <||>, "RemoveEmptySpace" -> True}]]],
                        Sett[
                            objectMapping,
                            inputObject -> Sett[
                                outputObject,
                                "Transforms" ->
                                    Function[{transform},
                                        If [And[
                                                MatchQ[transform, KeyValuePattern["Type" -> "Move"]],
                                                !MatchQ[transform, KeyValuePattern[{"Offset" -> <||>, "RemoveEmptySpace" -> True}]]
                                            ],
                                            ARCAddMoveAttributes[
                                                transform,
                                                inputObject,
                                                outputObject,
                                                example["Output", "Objects"],
                                                example["Output", "Scene"],
                                                ARCColorToInteger[example["Output", "Background"]],
                                                referenceableOutputObjects
                                            ]
                                            ,
                                            transform
                                        ]
                                    ] /@ outputObject["Transforms"]
                            ]
                        ]
                        ,
                        objectMapping
                    ]
                ),
                {1}
            ]
        ] /@ examples;
        
        examples
    ]

ARCAddMoveAttributes[transform_Association, inputObject_Association, outputObject_Association, outputObjects_List, scene_ARCScene, backgroundColor_, referenceableOutputObjects_Association] :=
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
                                transform,
                                "BlockedBy" -> reference
                            ],
                            Module
                        ]
                    ]
                ] /@ Keys[referenceableOutputObjects];
            ]
        ];
        
        (* Fallthrough. No metdata added. *)
        transform
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

ARCBlockingPixels[{}, direction_List, ARCScene[scene_List], backgroundColor_] := {}

ARCBlockingPixels[pixelPositions_List, direction_List, ARCScene[scene_List], backgroundColor_] :=
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

ARCBlockingPixels[object_Association, direction_List, scene_ARCScene, backgroundColor_] :=
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
    Or[
        position[[1]] > ImageHeight[image],
        position[[1]] < 1,
        position[[2]] > ImageWidth[image],
        position[[2]] < 1
    ]

ARCOutOfBounds[{y_, x_}, width_Integer, height_Integer] :=
    Or[
        y > height,
        y < 1,
        x > width,
        x < 1
    ]

(*!
    \function ARCSimplifyRules
    
    \calltable
        ARCSimplifyRules[rules] '' Given some rules, removes keys like "Examples" which aren't essential.
    
    \maintainer danielb
*)
Clear[ARCSimplifyRules];
Options[ARCSimplifyRules] =
{
    "ExtraKeys" -> {}       (* Additional keys to keep. *)
};
ARCSimplifyRules[rules_List, OptionsPattern[]] :=
    Replace[
        rules,
        assoc: KeyValuePattern["Examples" | "InputObjects" -> _] :>
            KeyDrop[
                assoc,
                Complement[
                    {"Examples", "ExampleCount", "UseCount", "InputObjects"},
                    Replace[
                        OptionValue["ExtraKeys"],
                        key_String :> {key}
                    ]
                ]
            ],
        {0, Infinity}
    ]

ARCSimplifyRules[rules_Association, OptionsPattern[]] :=
    Module[{},
        If [Keys[rules] === {"Rules"},
            (* If it's only the "Rules" key that is specified, then we'll only return the
               list of rules for ease of reading. *)
            ARCSimplifyRules[rules["Rules"]]
            ,
            ARCSimplifyRules /@ rules
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
    Module[{objects = objectsIn, grids, rankProperties, property, sortedValues},
        
        rankProperties = Select[$properties, TrueQ[#["Rank"]] &];
        
        (* Don't include grids/dividers in the list of objects when computing
           rank properties, so that properties like X.Rank, Y.Rank aren't thrown
           off by the grid itself. *)
        grids = Select[objects, AssociationQ[#["GridOrDivider"]] &];
        objects = Select[objects, !AssociationQ[#["GridOrDivider"]] &];
        
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
        
        Join[grids, objects]
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
    Module[{transform = transformIn, objectValueCondition, objectValueProperty, score = 0},
        
        If [AssociationQ[transform],
            transform = ARCRemoveExtendedMetadataFromConclusion[transform]
        ];
        
        Replace[
            transform,
            assoc: KeyValuePattern[
                _ -> Alternatives[
                    _ObjectValue,
                    _ClassValue,
                    (* Instead of Plus | Times, should we just say _? *)
                    Inactive[Plus | Times][_ObjectValue, _]
                ]
            ] :> (
                If [MatchQ[assoc, KeyValuePattern[_ -> Inactive[Times][___]]],
                    (* As of Oct 5 2022, we've only ever found one parse that makes use
                       of Times, and already we have one unwanted parse making use of
                       it (6e02f1e3), so we'll downscore it. *)
                    score -= 0.5
                ];
                KeyValueMap[
                    Function[{key, rhs},
                        Replace[
                            rhs,
                            (ObjectValue | ClassValue)[condition_, property_, ___] :> (
                                If [AssociationQ[condition],
                                    score +=
                                        ReturnIfFailure@
                                        ARCConditionsScore[KeyDrop[condition, "Context"]]
                                ];
                                objectValueCondition = condition;
                                objectValueProperty = property
                            ),
                            {0, Infinity},
                            Heads -> True
                        ];
                        
                        If [MatchQ[objectValueProperty, Association[Rule[_, _]]],
                            (* If we're dealing with the special case where
                               ARCFindPropertyToInferValues has returned not just a property name
                               but a property name and value to specify a condition, then we
                               need one more step to get the actual property name. *)
                            objectValueProperty = Keys[objectValueProperty][[1]]
                        ];
                        
                        score += Which[
                            key === objectValueProperty,
                                0,
                            $properties[key, "Type2"] === $properties[objectValueProperty, "Type2"],
                                -0.5,
                            And[
                                (* Since we could have something like Inactive[First]["Colors"]. *)
                                StringQ[objectValueProperty],
                                StringEndsQ[objectValueProperty, "Count"]
                            ],
                                (* If the property is a count property, then although it doesn't
                                   match the type of property we're trying to infer, a count is a
                                   pretty generic thing, so it feels a bit more plausible that
                                   we might want to use it to infer some random thing.
                                   e.g. d0f5fe59 *)
                                -0.75,
                            True,
                                (* We are inferring a property using the value of another property
                                   where the types don't match. This in general is not good/likely. *)
                                -1.1
                        ];
                        If [And[
                                AssociationQ[objectValueCondition],
                                objectValueCondition["Context"] === "Component"
                            ],
                            (* If we can use a component to infer something, that seems
                               better in general because it's more contextual.
                               ARCChooseBestTransform-20220827-APSTJD
                               e.g. referenceable-components
                               Example of an unwanted parse: 6e02f1e3 *)
                            score += 0.5
                        ];
                    ],
                    Select[assoc, !FreeQ[#, _ObjectValue | _ClassValue] &]
                ];
                assoc
            ),
            {0, Infinity}
        ];
        
        (* Conclusion property value adjustments. *)
        Replace[
            transform,
            {
                (* We want to favor specifying the right side of an object using things like
                   X2Inverse -> 1 rather than something like X2 -> 6, as the former will typically
                   generalize better. e.g. 272f95fa *)
                HoldPattern[Rule][
                    "X2Inverse" | "Y2Inverse",
                    1
                ] :> (
                    score += 0.05
                )
            }
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
        
        (* Next, consider the complexity of the expressions. We want to be consistent
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
    
    Working section template:
    
    08ed6ac7
    
    \maintainer danielb
*)
Clear[ARCNotebook];
ARCNotebook[fileIn_String] :=
    Module[{file = ToLowerCase[fileIn], file2, nb, exampleDetails, workingSectionCells},
        
        exampleDetails = ReturnIfFailure[ARCResolveExample[file]];
        
        (* To avoid a Lui glitch whereby some notebook names cause it to lock up. *)
        notebookFile = Cases[
            ToLowerCase /@ FileNameTake[#, -1] & /@ FileNames["*", FileNameJoin[{Global`$DropboxDir, "Notebooks"}]],
            file :> (
                file2 = FileNameJoin[{Global`$DropboxDir, "Notebooks", file, file <> ".nb"}];
                If [FileExistsQ[file2],
                    Return[
                        NotebookOpen[file2],
                        Module
                    ]
                ]
            )
        ];
        
        nb = CreateNamedNotebook2[
            FileBaseName[file],
            "NotesSection" -> False,
            "Contents" -> {
                Replace[
                    exampleDetails["ExampleType"],
                    {
                        "EvaluationExample" -> Text["Evaluation example"],
                        "PersonalTrainingExample" -> Text["Personal example"],
                        _ :> Nothing
                    }
                ],
                With[{luiString = "arc riddle '" <> file <> "'"},
                    InputCell[HoldComplete[Lui`UI`Lui[luiString]]]
                ],
                Section["Example"],
                InputCell[HoldComplete[ARCParseFile[DevTools`NotebookTools`NotebookTitle[]]]],
                (*Section["Analysis"],*)
                (*Subsection["Process"],*)
                (*Item[""],*)
                Section["Log"],
                InputCell[HoldComplete[Now]],
                (*Item["Design: X min"],
                Subitem["Start: "],
                Subitem["Stop: "],*)
                Item["Implementation: X hours"],
                Item["Start: "],
                Item["Stop: "]
                (*Section["Working"]*)
            },
            "ReturnNotebook" -> True
        ];
        
        (* Create the "Working" section. *)
        If [MissingQ[SectionCellObject[nb, "Working"]],
            
            (* Taken from ARCNotebook["08ed6ac7"]. *)
            workingSectionCells =
                ReturnIfFailure@
                Get[
                    FileNameJoin[
                        {
                            DirectoryName[FindFile["Daniel`ARC`"]],
                            "WorkingSectionCells.wl"
                        }
                    ]
                ];
            
            SelectionMove[nb, After, Notebook];
            NotebookWrite[nb, workingSectionCells];
            SelectionMove[SectionCellObject[nb, "Working"], All, CellGroup];
            FrontEndTokenExecute[nb, "OpenCloseGroup"];
            FrontEndTokenExecute[nb, "SelectionCloseAllGroups"];
        ];
        
        MoveNotebook[nb, "Right"];
        MoveNotebook[nb, "Right"];
        MoveNotebook[nb, "Right"];
        
        SelectionMove[SectionCellObject[nb, "Example"], All, CellGroup];
        SelectionEvaluate[nb];
        
        nb
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
ARCGroupByOutputObject[mapping_Association, outputObjects_List, backgroundColor_, sceneWidth_Integer, sceneHeight_Integer] :=
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
                        outputObject = outputObjectsByUUID2[outputObjectUUID];
                        If [!MatchQ[outputObject["Components"], {__}],
                            (* The output object doesn't have components, so we are replacing
                               multiple input objects with a single non-composite output object. *)
                            outputObject
                            ,
                            (* The output object has components, so for now we'll treat this as
                               AddComponents. *)
                            ARCAddComponentsTransform[
                                group,
                                outputObject;
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
                                <|
                                    "Width" -> sceneWidth,
                                    "Height" -> sceneHeight
                                |>
                            ]
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
    Module[{position, y1, x1, y2, x2, group},
        
        position = {
            y1 = Min[components[[All, "Y"]]],
            x1 = Min[components[[All, "X"]]]
        };
        y2 = Max[(#["Y"] + #["Height"] - 1) & /@ components];
        x2 = Max[(#["X"] + #["Width"] - 1) & /@ components];
        
        group = ARCInferObjectProperties[
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
        ];
        
        If [And[
                MatchQ[components[[All, "Shape"]], {Repeated[KeyValuePattern["Name" -> "Pixel"], {2}]}],
                Or[
                    group["Width"] === group["Height"],
                    group["Width"] === 1,
                    group["Height"] === 1,
                    Not[group["Width"] === 1 && group["Height"] === 1]
                ]
            ],
            (* If we have a group with two components, which are both pixels, then we'll
               add a property "Angle". e.g. 1f876c06 *)
            group = Sett[
                group,
                "Angle" -> ARCAngleForTwoPoints[
                    {components[[1, "Y"]], components[[1, "X"]]},
                    {components[[2, "Y"]], components[[2, "X"]]}
                ]
            ]
        ];
        
        group
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
            (* How long it is currently taking to run all of the training tasks. *)
            "Runtime" -> Quantity[1.5, "Minutes"],
            (* The number of lines of code I've now written. *)
            "CodeLength" -> Missing["NotRecorded"],
            (* Which task/example I just implemented. *)
            "ExampleImplemented" -> "0ca9ddb6"
        |>,
        <|
            "Runtime" -> Quantity[1.5, "Minutes"],
            "ExampleImplemented" -> "3c9b0459"
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 24}],
            "Runtime" -> Quantity[2.8, "Minutes"],
            "RuntimeComment" -> "Slowed down from 1.5 minutes to 2.8 minutes July 24 2022 when we implemented \"Forming Composite Objects Can't Assume\" for 1caeab9d.",
            "CodeLength" -> 3034,
            "ExampleImplemented" -> "1caeab9d"
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "Runtime" -> Quantity[3, "Minutes"],
            "CodeLength" -> 3491,
            "ExampleImplemented" -> "b60334d2"
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "Runtime" -> Quantity[3.8, "Minutes"],
            "RuntimeComment" -> "I'm surprised this went up for this input. Did I just not notice it going up for the previous input, or did I really make a change here that slowed things down?",
            "CodeLength" -> 3549,
            "ExampleImplemented" -> "25ff71a9",
            "ImplementationTime" -> Quantity[1, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "Runtime" -> Quantity[3, "Minutes"],
            "RuntimeComment" -> "I'm now explicitly skipping inputs where the input and output grids are different sizes.",
            "CodeLength" -> 3618,
            "ExampleImplemented" -> "3ac3eb23",
            "ImplementationTime" -> Quantity[0.5, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "Runtime" -> Quantity[3, "Minutes"],
            "CodeLength" -> 3697,
            "ExampleImplemented" -> "e76a88a6",
            "ImplementationTime" -> Quantity[1.8, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "Runtime" -> Quantity[3, "Minutes"],
            "CodeLength" -> 3698,
            "Comment" -> "I also took the opportunity to expand the list of properties we consider for rule formation to include: Width, Height, Position, Y, X, AspectRatio, Area, FilledArea. Still notably absent: Shapes",
            "ExampleImplemented" -> "c0f76784",
            "ImplementationTime" -> Quantity[3, "Minutes"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 7, 25}],
            "Runtime" -> Quantity[4.1, "Minutes"],
            "RuntimeComment" -> "ARCFindRules was enhanced to also consider Except[_] rules, which presumably adds runtime.",
            "CodeLength" -> 3869,
            "ExampleImplemented" -> "321b1fc6",
            "ImplementationTime" -> Quantity[1.8, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 4}],
            "Runtime" -> Quantity[3.7, "Minutes"],
            "CodeLength" -> 4505,
            "ExampleImplemented" -> "05f2a901",
            "ImplementationTime" -> Quantity[5, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 5}],
            "Runtime" -> Quantity[3.7, "Minutes"],
            "CodeLength" -> 4799,
            "ExampleImplemented" -> "08ed6ac7",
            "ImplementationTime" -> Quantity[1.75, "Hours"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 6}],
            "ExampleImplemented" -> "jnohuorzh-easier",
            "ImplementationTime" -> Quantity[0.25, "Hours"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 6}],
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 5226,
            "ExampleImplemented" -> "ihiz27k2n",
            "ImplementationTime" -> Quantity[2.75, "Hours"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 6}],
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 5291,
            "ExampleImplemented" -> "jnohuorzh",
            "ImplementationTime" -> Quantity[0.5, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 6}],
            "Runtime" -> Quantity[3.6, "Minutes"],
            "CodeLength" -> 5386,
            "ExampleImplemented" -> "a61f2674",
            "ImplementationTime" -> Quantity[2, "Hours"],
            "NewGeneralizedSuccesses" -> {"ea32f347"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 6}],
            "Runtime" -> Quantity[3.6, "Minutes"],
            "CodeLength" -> 5386,
            "ExampleImplemented" -> "ea32f347",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 6}],
            "Runtime" -> Quantity[3, "Minutes"],
            "CodeLength" -> 5551,
            "ExampleImplemented" -> "0uduqqj6f",
            "ImplementationTime" -> Quantity[1.5, "Hours"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 7}],
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 5703,
            "ExampleImplemented" -> "2wfys5w64",
            "ImplementationTime" -> Quantity[2, "Hours"],
            "NewEvaluationSuccesses" -> {"84f2aca1"}
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 7}],
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 5875,
            "ExampleImplemented" -> "2wfys5w64-relative-right-side",
            "ImplementationTime" -> Quantity[2.7, "Hours"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 7}],
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 5875,
            "ExampleImplemented" -> "n1hczotml",
            "ImplementationTime" -> Quantity[5, "Minutes"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 8}],
            "Runtime" -> Quantity[3.1, "Minutes"],
            (* Note that this increase in code size wasn't for this example, but rather was due
               to code for publishing task notes, etc. *)
            "CodeLength" -> 6544,
            "ExampleImplemented" -> "ifmyulnv8",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 10}],
            "Runtime" -> Quantity[3.1, "Minutes"],
            "CodeLength" -> 7258,
            "ExampleImplemented" -> "ifmyulnv8-shape",
            "ImplementationTime" -> Quantity[7.75, "Hours"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 12}],
            "Runtime" -> Quantity[3.8, "Minutes"],
            "CodeLength" -> 7541,
            "ExampleImplemented" -> "ifmyulnv8-dynamic-shape",
            "ImplementationTime" -> Quantity[5, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 12}],
            "Runtime" -> Quantity[3.7, "Minutes"],
            "CodeLength" -> 7838,
            "ExampleImplemented" -> "253bf280",
            "ImplementationTime" -> Quantity[7.5, "Hours"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 8874,
            "CodeLengthComment" -> "Also includes in-progress work for 25d487eb.",
            "ExampleImplemented" -> "referenceable-components",
            "ImplementationTime" -> Quantity[6, "Hours"],
            "NewGeneralizedSuccesses" -> {"5521c0d9", "6c434453", "6e82a1ae", "aabf363d"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 8874,
            "ExampleImplemented" -> "5521c0d9",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 8874,
            "ExampleImplemented" -> "6c434453",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 8874,
            "ExampleImplemented" -> "6e82a1ae",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 8874,
            "ExampleImplemented" -> "aabf363d",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "Runtime" -> Quantity[6.1, "Minutes"],
            "CodeLength" -> 9489,
            "ExampleImplemented" -> "25d8a9c8",
            "ImplementationTime" -> Quantity[5, "Hours"],
            "NewGeneralizedSuccesses" -> {"b1948b0a"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "Runtime" -> Quantity[6.1, "Minutes"],
            "CodeLength" -> 9489,
            "ExampleImplemented" -> "b1948b0a",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "Runtime" -> Quantity[6.4, "Minutes"],
            "CodeLength" -> 9598,
            "ExampleImplemented" -> "c8f0f002",
            "ImplementationTime" -> Quantity[0.3, "Hours"],
            "NewGeneralizedSuccesses" -> {"d511f180"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 19}],
            "Runtime" -> Quantity[6.4, "Minutes"],
            "CodeLength" -> 9598,
            "ExampleImplemented" -> "d511f180",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 20}],
            "Runtime" -> Quantity[4.8, "Minutes"],
            "CodeLength" -> 9972,
            "ExampleImplemented" -> "31aa019c",
            "ImplementationTime" -> Quantity[4, "Hours"],
            "NewEvaluationSuccesses" -> {"66e6c45b"}
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 21}],
            "Runtime" -> Quantity[5.6, "Minutes"],
            "CodeLength" -> 10281,
            "ExampleImplemented" -> "363442ee",
            "ImplementationTime" -> Quantity[4, "Hours"],
            "NewGeneralizedSuccesses" -> {"88a10436"},
            "NewEvaluationSuccesses" -> {"f45f5ca7"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 21}],
            "Runtime" -> Quantity[5.6, "Minutes"],
            "CodeLength" -> 10281,
            "ExampleImplemented" -> "88a10436",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 22}],
            "Runtime" -> Quantity[4.3, "Minutes"],
            "CodeLength" -> 10850,
            "ExampleImplemented" -> "25d487eb",
            "ImplementationTime" -> Quantity[6.5, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 22}],
            "Runtime" -> Quantity[4.3, "Minutes"],
            "CodeLength" -> 10929,
            "ExampleImplemented" -> "0962bcdd",
            "ImplementationTime" -> Quantity[20, "Minutes"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 22}],
            "Runtime" -> Quantity[5.2, "Minutes"],
            "CodeLength" -> 11003,
            "ExampleImplemented" -> "0d3d703e",
            "ImplementationTime" -> Quantity[1, "Hours"],
            "NewGeneralizedSuccesses" -> {"d037b0a7"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 22}],
            "Runtime" -> Quantity[5.2, "Minutes"],
            "CodeLength" -> 11003,
            "ExampleImplemented" -> "d037b0a7",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 23}],
            "Runtime" -> Quantity[5.4, "Minutes"],
            "CodeLength" -> 11069,
            "ExampleImplemented" -> "1bfc4729",
            "ImplementationTime" -> Quantity[40, "Minutes"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 8, 26}],
            "Runtime" -> Quantity[6.7, "Minutes"],
            "RuntimeComment" -> "We no longer take the first minimal property set that we find but rather compute all of them and choose the best, and we now have a list of minimal property sets for the case that a named transform isn't found.",
            "CodeLength" -> 11845,
            "ExampleImplemented" -> "178fcbfb-easier",
            "ImplementationTime" -> Quantity[12, "Hours"],
            "NewGeneralizedSuccesses" -> {"4347f46a"},
            "NewEvaluationSuccesses" -> {"fc754716"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 26}],
            "Runtime" -> Quantity[6.7, "Minutes"],
            "CodeLength" -> 11845,
            "ExampleImplemented" -> "4347f46a",
            "ImplementationTime" -> Quantity[12, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 27}],
            "Runtime" -> Quantity[7.4, "Minutes"],
            "CodeLength" -> 12346,
            "ExampleImplemented" -> "178fcbfb",
            "ImplementationTime" -> Quantity[5, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 27}],
            "Runtime" -> Quantity[9.3, "Minutes"],
            "RuntimeComment" -> "I'm surprised to see the runtime slow down from 7.4 minutes to 9.3 minutes here -- that probably deserves debugging to understand why. I even fixed an issue whereby it was trying all alternatives of a minimal property set item after finding one that didn't need to add anything to the output rule due to being able to use input values directly.",
            "CodeLength" -> 12898,
            "ExampleImplemented" -> "1f876c06",
            "ImplementationTime" -> Quantity[6.5, "Hours"],
            "NewGeneralizedSuccesses" -> {"56ff96f3"},
            "NewEvaluationSuccesses" -> {"e21a174a"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 27}],
            "Runtime" -> Quantity[9.3, "Minutes"],
            "CodeLength" -> 12898,
            "ExampleImplemented" -> "56ff96f3",
            "ImplementationTime" -> Quantity[6.5, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 27}],
            "Runtime" -> Quantity[11, "Minutes"],
            "RuntimeComment" -> "Yikes! What is leading to these consistent and significant increases in runtime?"
            "CodeLength" -> 13040,
            "ExampleImplemented" -> "22eb0ac0",
            "ImplementationTime" -> Quantity[0.5, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 28}],
            "Runtime" -> Quantity[17, "Minutes"],
            "RuntimeComment" -> "We've removed the fail-fast that was skipping any example where the input and output images weren't the same size, so we are legitimately doing a lot more work now."
            "CodeLength" -> 13294,
            "ExampleImplemented" -> "746b3537",
            "ImplementationTime" -> Quantity[2.5, "Hours"],
            "NewGeneralizedSuccesses" -> {"4be741c5", "90c28cc7", "a87f7484", "e9afcf9a", "f8ff0b80"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 28}],
            "Runtime" -> Quantity[17, "Minutes"],
            "CodeLength" -> 13294,
            "ExampleImplemented" -> "4be741c5",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 28}],
            "Runtime" -> Quantity[17, "Minutes"],
            "CodeLength" -> 13294,
            "ExampleImplemented" -> "90c28cc7",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 28}],
            "Runtime" -> Quantity[17, "Minutes"],
            "CodeLength" -> 13294,
            "ExampleImplemented" -> "a87f7484",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 28}],
            "Runtime" -> Quantity[17, "Minutes"],
            "CodeLength" -> 13294,
            "ExampleImplemented" -> "e9afcf9a",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 28}],
            "Runtime" -> Quantity[17, "Minutes"],
            "CodeLength" -> 13294,
            "ExampleImplemented" -> "f8ff0b80",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 28}],
            "CodeLength" -> 13429,
            "ExampleImplemented" -> "6F8CD79B",
            "ImplementationTime" -> Quantity[0.75, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 28}],
            "CodeLength" -> 13492,
            "ExampleImplemented" -> "72CA375D",
            "ImplementationTime" -> Quantity[0.5, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 28}],
            "Runtime" -> Quantity[16, "Minutes"],
            "CodeLength" -> 13532,
            "ExampleImplemented" -> "A79310A0",
            "ImplementationTime" -> Quantity[0.5, "Hours"],
            (* Note that I didn't re-run all of the training examples for the above two examples, so it's not known which of the 3 caused these. *)
            "NewGeneralizedSuccesses" -> {"1cf80156", "23b5c85d"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 28}],
            "Runtime" -> Quantity[16, "Minutes"],
            "CodeLength" -> 13532,
            "ExampleImplemented" -> "1cf80156",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 28}],
            "Runtime" -> Quantity[16, "Minutes"],
            "CodeLength" -> 13532,
            "ExampleImplemented" -> "23b5c85d",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 29}],
            "Runtime" -> Quantity[16, "Minutes"],
            "CodeLength" -> 13581,
            "ExampleImplemented" -> "40853293",
            "ImplementationTime" -> Quantity[0.5, "Hours"],
            "NewEvaluationSuccesses" -> {"070dd51e"}
        |>,
        <|
            (* Implemented by accident *)
            "EvaluationTask" -> True,
            "Timestamp" -> DateObject[{2022, 8, 29}],
            "Runtime" -> Quantity[15, "Minutes"],
            "CodeLength" -> 13805,
            "ExampleImplemented" -> "1A2E2828",
            "ImplementationTime" -> Quantity[3.5, "Hours"],
            "NewGeneralizedSuccesses" -> {"445eab21"},
            "NewEvaluationSuccesses" -> {"1A2E2828"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 29}],
            "Runtime" -> Quantity[15, "Minutes"],
            "CodeLength" -> 13805,
            "ExampleImplemented" -> "445eab21",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 8, 30}],
            "CodeLength" -> 13805,
            "ExampleImplemented" -> "95990924",
            "ImplementationTime" -> Quantity[4.5, "Hours"],
            "NewGeneralizedSuccesses" -> {"4258a5f9", "913fb3ed", "a61ba2ce"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 30}],
            "CodeLength" -> 13805,
            "ExampleImplemented" -> "4258a5f9",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 30}],
            "CodeLength" -> 13805,
            "ExampleImplemented" -> "913fb3ed",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 8, 30}],
            "CodeLength" -> 13805,
            "ExampleImplemented" -> "a61ba2ce",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 2}],
            "CodeLength" -> 14359,
            "ExampleImplemented" -> "BE94B721",
            "ImplementationTime" -> Quantity[1, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 2}],
            "CodeLength" -> 14359,
            "ExampleImplemented" -> "810b9b61",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 2}],
            "CodeLength" -> 14571,
            "ExampleImplemented" -> "ed36ccf7",
            "ImplementationTime" -> Quantity[1, "Hours"],
            "NewEvaluationSuccesses" -> {"64a7c07e", "ae58858e"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 2}],
            "CodeLength" -> 14571,
            "ExampleImplemented" -> "27a28665",
            "ImplementationTime" -> Quantity[1, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 3}],
            "Runtime" -> Quantity[20, "Minutes"],
            "CodeLength" -> 14763,
            "ExampleImplemented" -> "a740d043",
            "ImplementationTime" -> Quantity[2.5, "Hours"],
            (* I think? *)
            "NewGeneralizedSuccesses" -> {"6e02f1e3"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 3}],
            "Runtime" -> Quantity[20, "Minutes"],
            "CodeLength" -> 14763,
            "ExampleImplemented" -> "6e02f1e3",
            "ImplementationTime" -> Quantity[2.5, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 3}],
            "Runtime" -> Quantity[1.3, "Hours"],
            "RuntimeComment" -> "What?! Well that's not good. Why such a dramatic slowdown?",
            "CodeLength" -> 14897,
            "ExampleImplemented" -> "b9b7f026",
            "ImplementationTime" -> Quantity[0.5, "Hours"],
            "NewGeneralizedSuccesses" -> {"b2862040", "de1cd16c"},
            "NewEvaluationSuccesses" -> {"37d3e8b2", "4364c1c4"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 3}],
            "Runtime" -> Quantity[1.3, "Hours"],
            "CodeLength" -> 14897,
            "ExampleImplemented" -> "b2862040",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 3}],
            "Runtime" -> Quantity[1.3, "Hours"],
            "CodeLength" -> 14897,
            "ExampleImplemented" -> "de1cd16c",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 3}],
            "Runtime" -> Quantity[1.2, "Hours"],
            "CodeLength" -> 15160,
            "ExampleImplemented" -> "c59eb873",
            "ImplementationTime" -> Quantity[1, "Hours"],
            "NewGeneralizedSuccesses" -> {"9172f3a0", "d4469b4b"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 3}],
            "Runtime" -> Quantity[1.2, "Hours"],
            "CodeLength" -> 15160,
            "ExampleImplemented" -> "9172f3a0",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 3}],
            "Runtime" -> Quantity[1.2, "Hours"],
            "CodeLength" -> 15160,
            "ExampleImplemented" -> "d4469b4b",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 3}],
            "Runtime" -> Quantity[1.3, "Hours"],
            "CodeLength" -> 15434,
            "ExampleImplemented" -> "d631b094",
            "ImplementationTime" -> Quantity[1.5, "Hours"],
            "NewGeneralizedSuccesses" -> {"9af7a82c", "d9fac9be"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 3}],
            "Runtime" -> Quantity[1.3, "Hours"],
            "CodeLength" -> 15434,
            "ExampleImplemented" -> "9af7a82c",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        (* Was only working by accident, and stopped working Sept 6 2022. *)
        (*<|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 3}],
            "Runtime" -> Quantity[1.3, "Hours"],
            "CodeLength" -> 15434,
            "ExampleImplemented" -> "d9fac9be",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,*)
        <|
            "Timestamp" -> DateObject[{2022, 9, 4}],
            "Runtime" -> Quantity[1.5, "Hours"],
            "CodeLength" -> 15434,
            "ExampleImplemented" -> "5614dbcf",
            "ImplementationTime" -> Quantity[2, "Hours"],
            "NewGeneralizedSuccesses" -> {"42a50994", "6150a2bd"},
            "NewEvaluationSuccesses" -> {"60c09cac"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 4}],
            "Runtime" -> Quantity[1.5, "Hours"],
            "CodeLength" -> 15434,
            "ExampleImplemented" -> "42a50994",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 4}],
            "Runtime" -> Quantity[1.5, "Hours"],
            "CodeLength" -> 15434,
            "ExampleImplemented" -> "6150a2bd",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 4}],
            "Runtime" -> Quantity[1.5, "Hours"],
            "CodeLength" -> 16242,
            "ExampleImplemented" -> "694f12f3",
            "ImplementationTime" -> Quantity[4, "Hours"],
            "NewGeneralizedSuccesses" -> {"50cb2852", "b230c067", "bb43febb", "bdad9b1f"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 4}],
            "Runtime" -> Quantity[1.5, "Hours"],
            "CodeLength" -> 16242,
            "ExampleImplemented" -> "50cb2852",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 4}],
            "Runtime" -> Quantity[1.5, "Hours"],
            "CodeLength" -> 16242,
            "ExampleImplemented" -> "b230c067",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 4}],
            "Runtime" -> Quantity[1.5, "Hours"],
            "CodeLength" -> 16242,
            "ExampleImplemented" -> "bb43febb",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 4}],
            "Runtime" -> Quantity[1.5, "Hours"],
            "CodeLength" -> 16242,
            "ExampleImplemented" -> "bdad9b1f",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 9, 4}],
            "CodeLength" -> 16325,
            "ExampleImplemented" -> "middle",
            "ImplementationTime" -> Quantity[10, "Minutes"]
        |>,
        <|
            "PersonalExample" -> True,
            "Timestamp" -> DateObject[{2022, 9, 5}],
            "RuntimeParallel" -> Quantity[12, "Minutes"],
            "CodeLength" -> 16803,
            "ExampleImplemented" -> "surface-pixel-count",
            "ImplementationTime" -> Quantity[6, "Hours"],
            "NewGeneralizedSuccesses" -> {"794b24be", "85c4e7cd", "ba97ae07", "ff28f65a"},
            "NewEvaluationSuccesses" -> {"85b81ff1", "e41c6fd3"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 5}],
            "RuntimeParallel" -> Quantity[12, "Minutes"],
            "CodeLength" -> 16803,
            "ExampleImplemented" -> "794b24be",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 5}],
            "RuntimeParallel" -> Quantity[12, "Minutes"],
            "CodeLength" -> 16803,
            "ExampleImplemented" -> "85c4e7cd",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 5}],
            "RuntimeParallel" -> Quantity[12, "Minutes"],
            "CodeLength" -> 16803,
            "ExampleImplemented" -> "ba97ae07",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 5}],
            "RuntimeParallel" -> Quantity[12, "Minutes"],
            "CodeLength" -> 16803,
            "ExampleImplemented" -> "ff28f65a",
            "ImplementationTime" -> Quantity[0, "Hours"]
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 7}],
            "CodeLength" -> 16914,
            "ExampleImplemented" -> "8be77c9e",
            "ImplementationTime" -> Quantity[2.5, "Hours"],
            "NewGeneralizedSuccesses" -> {"67a3c6ac", "68b16354", "a8c38be5", "62c24649", "67e8384a", "6d0aefbc"},
            "NewEvaluationSuccesses" -> {"3194b014", "7953d61e", "833dafe3", "b1fc8b8e", "bc4146bd"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 7}],
            "CodeLength" -> 16914,
            "ExampleImplemented" -> "67a3c6ac"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 7}],
            "CodeLength" -> 16914,
            "ExampleImplemented" -> "68b16354"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 7}],
            "CodeLength" -> 16914,
            "ExampleImplemented" -> "a8c38be5"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 7}],
            "CodeLength" -> 16914,
            "ExampleImplemented" -> "62c24649"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 7}],
            "CodeLength" -> 16914,
            "ExampleImplemented" -> "67e8384a"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 7}],
            "CodeLength" -> 16914,
            "ExampleImplemented" -> "6d0aefbc"
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 8}],
            "RuntimeParallel" -> Quantity[11, "Minutes"],
            "ImplementationTime" -> Quantity[2, "Hours"],
            "CodeLength" -> 17245,
            "ExampleImplemented" -> "46442a0e",
            "NewGeneralizedSuccesses" -> {"6fa7a44f", "7fe24cdd", "c9e6f938"},
            "NewEvaluationSuccesses" -> {"00576224", "59341089", "c48954c1"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 8}],
            "CodeLength" -> 17245,
            "ExampleImplemented" -> "6fa7a44f"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 8}],
            "CodeLength" -> 17245,
            "ExampleImplemented" -> "7fe24cdd"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 8}],
            "CodeLength" -> 17245,
            "ExampleImplemented" -> "c9e6f938"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 9}],
            "CodeLength" -> 17564,
            "ExampleImplemented" -> "88a62173"
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 9}],
            "CodeLength" -> 17723,
            "ExampleImplemented" -> "2dee498d",
            "NewGeneralizedSuccesses" -> {"54d9e175", "5bd6f4ac"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 9}],
            "CodeLength" -> 17723,
            "ExampleImplemented" -> "54d9e175"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 9}],
            "CodeLength" -> 17723,
            "ExampleImplemented" -> "5bd6f4ac"
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 9}],
            "CodeLength" -> 17723,
            "ExampleImplemented" -> "3af2c5a8",
            "NewGeneralizedSuccesses" -> {"4c4377d9", "8d5021e8", "a416b8f3"},
            "NewEvaluationSuccesses" -> {"0c786b71", "ed98d772"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 9}],
            "CodeLength" -> 17723,
            "ExampleImplemented" -> "4c4377d9"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 9}],
            "CodeLength" -> 17723,
            "ExampleImplemented" -> "8d5021e8"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 9}],
            "CodeLength" -> 17723,
            "ExampleImplemented" -> "a416b8f3"
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 9}],
            "CodeLength" -> 17816,
            "ExampleImplemented" -> "d0f5fe59"
        |>,
        (* Broke Sept 10 2022, but that's OK because it wasn't really working properly. *)
        (*<|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 9}],
            "CodeLength" -> 17816,
            "ExampleImplemented" -> "fcc82909"
        |>,*)
        <|
            "Timestamp" -> DateObject[{2022, 9, 10}],
            "ImplementationTime" -> Quantity[10, "Minutes"],
            "CodeLength" -> 17859,
            "ExampleImplemented" -> "beb8660c"
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 10}],
            "ImplementationTime" -> Quantity[3, "Hours"],
            "CodeLength" -> 18288,
            "ExampleImplemented" -> "272f95fa",
            (*"NewGeneralizedSuccesses" -> {"963e52fc"},*)
            "NewEvaluationSuccesses" -> {"3979b1a8"}
        |>,
        (* Rule set is proper, but is now passing. *)
        (* Broke Sept 12. *)
        (*<|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 10}],
            "RuntimeParallel" -> Quantity[8.8, "Minutes"],
            "Runtimecomment" -> "Added some uses of Memoized, which sped things up a bit.",
            "CodeLength" -> 18288,
            "ExampleImplemented" -> "963e52fc"
        |>,*)
        <|
            "Timestamp" -> DateObject[{2022, 9, 11}],
            "ImplementationTime" -> Quantity[3, "Hours"],
            "CodeLength" -> 18960,
            "ExampleImplemented" -> "6773b310",
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 12}],
            "ImplementationTime" -> Quantity[5, "Hours"],
            "CodeLength" -> 19239,
            "ExampleImplemented" -> "8e5a5113",
            "NewGeneralizedSuccesses" -> {"f25fbde4"},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 12}],
            "CodeLength" -> 19239,
            "ExampleImplemented" -> "f25fbde4"
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 12}],
            "ImplementationTime" -> Quantity[0.5, "Hours"],
            "CodeLength" -> 19266,
            "ExampleImplemented" -> "b91ae062",
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 13}],
            "ImplementationTime" -> Quantity[0.9, "Hours"],
            "CodeLength" -> 19383,
            "ExampleImplemented" -> "74dd1130",
            "NewGeneralizedSuccesses" -> {"9dfd6313"},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 13}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 19383,
            "ExampleImplemented" -> "9dfd6313"
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 13}],
            "ImplementationTime" -> Quantity[0.3, "Hours"],
            "CodeLength" -> 19454,
            "ExampleImplemented" -> "7468f01a",
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {"be03b35f", "d4b1c2b1"}
        |>,
        <|
            "Timestamp" -> DateObject[{2022, 9, 13}],
            "ImplementationTime" -> Quantity[0.5, "Hours"],
            "CodeLength" -> 19521,
            "ExampleImplemented" -> "5117e062",
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "67385a82",
            "Timestamp" -> DateObject[{2022, 9, 13}],
            "ImplementationTime" -> Quantity[0.6, "Hours"],
            "CodeLength" -> 19573,
            "NewGeneralizedSuccesses" -> {"8efcae92", "aedd82e4"},
            "NewEvaluationSuccesses" -> {}
        |>,
        (* Luck. Incorrect rules. *)
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 13}],
            "CodeLength" -> 19573,
            "ExampleImplemented" -> "8efcae92"
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "Timestamp" -> DateObject[{2022, 9, 13}],
            "CodeLength" -> 19573,
            "ExampleImplemented" -> "aedd82e4"
        |>,
        <|
            "ExampleImplemented" -> "ac0a08a4",
            "Timestamp" -> DateObject[{2022, 9, 17}],
            "ImplementationTime" -> Quantity[0.3, "Hours"],
            "CodeLength" -> 20797,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "28bf18c6",
            "Timestamp" -> DateObject[{2022, 9, 17}],
            "ImplementationTime" -> Quantity[0.3, "Hours"],
            "CodeLength" -> 20814,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "496994bd",
            "Timestamp" -> DateObject[{2022, 9, 17}],
            "ImplementationTime" -> Quantity[0.25, "Hours"],
            "CodeLength" -> 20863,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        (* Implemented via "referenceable classes", but we've disabled that for now since it
           was causing an explosion in runtime. $EnableReferenceableClasses *)
        (*<|
            "ExampleImplemented" -> "f76d97a5",
            "Timestamp" -> DateObject[{2022, 9, 17}],
            "ImplementationTime" -> Quantity[3, "Hours"],
            "RuntimeParallel" -> Quantity[12, "Minutes"],
            "RuntimeComment" -> "Added TimeConstrained, made some optimizations, and wasn't running ARCWorkingQ in parallel.",
            "CodeLength" -> 21059,
            "NewGeneralizedSuccesses" -> {"1190e5a7"},
            "NewEvaluationSuccesses" -> {}
        |>,*)
        (* Implemented via "referenceable classes", but we've disabled that for now since it
           was causing an explosion in runtime. $EnableReferenceableClasses *)
        (*<|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "1190e5a7",
            "Timestamp" -> DateObject[{2022, 9, 17}],
            "CodeLength" -> 21059
        |>*)
        <|
            "ExampleImplemented" -> "d2abd087",
            "Timestamp" -> DateObject[{2022, 9, 18}],
            "CodeLength" -> 21574
        |>,
        <|
            "EvaluationTask" -> True,
            "ExampleImplemented" -> "e5790162",
            "Timestamp" -> DateObject[{2022, 9, 22}],
            "ImplementationTime" -> Quantity[5, "Hours"],
            "CodeLength" -> 22003,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "5582e5ca",
            "Timestamp" -> DateObject[{2022, 9, 24}],
            "ImplementationTime" -> Quantity[0.3, "Hours"],
            "CodeLength" -> 22039,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "0bb8dee",
            "Timestamp" -> DateObject[{2022, 9, 24}],
            "ImplementationTime" -> Quantity[1, "Hours"],
            "CodeLength" -> 22189,
            "NewGeneralizedSuccesses" -> {},
            (* I'm not actually sure when these started passing since I haven't been running
               the evaluation test set each time. *)
            "NewEvaluationSuccesses" -> {"0bb8deee", "9110e3c5", "9a4bb226", "ca8de6ea", "cd3c21df"}
        |>,
        <|
            "EvaluationTask" -> True,
            "ExampleImplemented" -> "27a77e38",
            "Timestamp" -> DateObject[{2022, 9, 24}],
            "ImplementationTime" -> Quantity[1.5, "Hours"],
            "CodeLength" -> 22303,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "d9f24cd1",
            "Timestamp" -> DateObject[{2022, 9, 25}],
            "ImplementationTime" -> Quantity[2, "Hours"],
            "CodeLength" -> 22465,
            (* Approx *)
            "NewGeneralizedSuccesses" -> {"44d8ac46"},
            (* Due to misc edits though, I believe. *)
            "NewEvaluationSuccesses" -> {"00dbd492"}
        |>,
        <|
            "ExampleImplemented" -> "0520fde7",
            "Timestamp" -> DateObject[{2022, 9, 25}],
            "ImplementationTime" -> Quantity[2.5, "Hours"],
            "CodeLength" -> 23007,
            "NewGeneralizedSuccesses" -> {"1b2d62fb", "99b1bc43", "3428a4f5", "6430c8c4", "ce4f8723", "f2829549"},
            "NewEvaluationSuccesses" -> {"34b99a2b"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "1b2d62fb",
            "Timestamp" -> DateObject[{2022, 9, 26}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23015,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "99b1bc43",
            "Timestamp" -> DateObject[{2022, 9, 26}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23025,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "3428a4f5",
            "Timestamp" -> DateObject[{2022, 9, 26}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23184,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        (* Not a proper rule set. *)
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "44d8ac46",
            "Timestamp" -> DateObject[{2022, 9, 26}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23193,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "6430c8c4",
            "Timestamp" -> DateObject[{2022, 9, 26}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23203,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "ce4f8723",
            "Timestamp" -> DateObject[{2022, 9, 26}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23213,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "f2829549",
            "Timestamp" -> DateObject[{2022, 9, 26}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23222,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "94f9d214",
            "Timestamp" -> DateObject[{2022, 9, 26}],
            "ImplementationTime" -> Quantity[1.5, "Hours"],
            "RuntimeParallel" -> Quantity[11, "Minutes"],
            "CodeLength" -> 23291,
            "NewGeneralizedSuccesses" -> {"dae9d2b5", "fafffa47"},
            (* Some of these are from the previously implemented example. *)
            "NewEvaluationSuccesses" -> {"0c9aba6e", "195ba7dc", "31d5ba1a", "506d28a5", "5d2a5c43", "66f2d22f", "d19f7514", "e133d23d", "e345f17b"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "dae9d2b5",
            "Timestamp" -> DateObject[{2022, 9, 26}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23282,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "fafffa47",
            "Timestamp" -> DateObject[{2022, 9, 26}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23292,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "f25ffba3",
            "Timestamp" -> DateObject[{2022, 9, 28}],
            "ImplementationTime" -> Quantity[0.5, "Hours"],
            "CodeLength" -> 23336,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "9ecd008a",
            "Timestamp" -> DateObject[{2022, 9, 28}],
            "ImplementationTime" -> Quantity[2, "Hours"],
            "CodeLength" -> 23594,
            "NewGeneralizedSuccesses" -> {"FF805C23", "DC0A314F", "67B4A34D"},
            "NewEvaluationSuccesses" -> {"67b4a34d", "e66aafb8", "f4081712"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "ff805c23",
            "Timestamp" -> DateObject[{2022, 9, 28}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23602,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "dc0a314f",
            "Timestamp" -> DateObject[{2022, 9, 28}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23602,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "29ec7d0e",
            "Timestamp" -> DateObject[{2022, 9, 30}],
            "ImplementationTime" -> Quantity[4.5, "Hours"],
            "CodeLength" -> 23976,
            "NewGeneralizedSuccesses" -> {"0dfd9992", "484b58aa", "c3f564a4"(*, "d10ecb37"*)},
            "NewEvaluationSuccesses" -> {"1d0a4b61", "5207a7b5", "c663677b", "e95e3d8e"}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "0dfd9992",
            "Timestamp" -> DateObject[{2022, 9, 30}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23984,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "484b58aa",
            "Timestamp" -> DateObject[{2022, 9, 30}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23993,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "c3f564a4",
            "Timestamp" -> DateObject[{2022, 9, 30}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23993,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        (* Crazy rules. *)
        (* Stopped working Oct 2 2022. *)
        (*<|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "662c240a",
            "Timestamp" -> DateObject[{2022, 9, 30}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23993,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,*)
        (* Crazy rules. *)
        (* Stopped working Oct 2 2022. *)
        (*<|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "d10ecb37",
            "Timestamp" -> DateObject[{2022, 9, 30}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 23993,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,*)
        <|
            "ExampleImplemented" -> "bda2d7a6",
            "Timestamp" -> DateObject[{2022, 10, 1}],
            "ImplementationTime" -> Quantity[0.3, "Hours"],
            "CodeLength" -> 24077,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "d5d6de2d",
            "Timestamp" -> DateObject[{2022, 10, 1}],
            "ImplementationTime" -> Quantity[0.25, "Hours"],
            "CodeLength" -> 24098,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        (* Just started working, not sure why. *)
        <|
            "GeneralizedSuccess" -> True,
            "ExampleImplemented" -> "2dc579da",
            "Timestamp" -> DateObject[{2022, 10, 1}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 24106,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        (* Fixed symmetry property bug wrt non-even widths and heights. *)
        <|
            "ExampleImplemented" -> "44f52bb0",
            "Timestamp" -> DateObject[{2022, 10, 1}],
            "ImplementationTime" -> Quantity[0.25, "Hours"],
            "CodeLength" -> 24197,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {"73ccf9c2", "d56f2372"}
        |>,
        <|
            "ExampleImplemented" -> "3bd67248",
            "Timestamp" -> DateObject[{2022, 10, 1}],
            "ImplementationTime" -> Quantity[0.5, "Hours"],
            "CodeLength" -> 24248,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "3631a71a",
            "Timestamp" -> DateObject[{2022, 10, 2}],
            "ImplementationTime" -> Quantity[5, "Hours"],
            "CodeLength" -> 24749,
            "NewGeneralizedSuccesses" -> {"b8825c91"},
            "NewEvaluationSuccesses" -> {"903d1b4a", "981571dc"}
        |>,
        <|
            "ExampleImplemented" -> "b8825c91",
            "Timestamp" -> DateObject[{2022, 10, 2}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 24825,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "PersonalExample" -> True,
            "ExampleImplemented" -> "4938f0c2-easy",
            "Timestamp" -> DateObject[{2022, 10, 2}],
            "ImplementationTime" -> Quantity[1.5, "Hours"],
            "CodeLength" -> 24851,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "d13f3404",
            "Timestamp" -> DateObject[{2022, 10, 3}],
            "ImplementationTime" -> Quantity[2, "Hours"],
            "CodeLength" -> 25228,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "feca6190",
            "Timestamp" -> DateObject[{2022, 10, 4}],
            "ImplementationTime" -> Quantity[2.5, "Hours"],
            "CodeLength" -> 25526,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "4938f0c2",
            "Timestamp" -> DateObject[{2022, 10, 4}],
            "ImplementationTime" -> Quantity[0, "Hours"],
            "CodeLength" -> 25527,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
        |>,
        <|
            "ExampleImplemented" -> "8eb1be9a",
            "Timestamp" -> DateObject[{2022, 10, 7}],
            "ImplementationTime" -> Quantity[1, "Hours"],
            "CodeLength" -> 25682,
            "NewGeneralizedSuccesses" -> {},
            "NewEvaluationSuccesses" -> {}
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
ARCTaskMarkdown[nameIn_String] :=
    Module[
        {
            name = ToLowerCase[nameIn],
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
ARCCleanRules[rulesIn_List, objects_List] :=
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
                        "Offset" -> <||>,
                        "RemoveEmptySpace" -> True
                    }
                ] :>
                    <|"Type" -> "RemoveEmptySpace"|>,
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
                    KeyDrop[assoc, "Position"],
                (* Simplify missing expressions to not have any arguments. *)
                _Missing :> Missing[]
            },
            {0, Infinity},
            Heads -> True
        ];
        
        rules =
            Function[{rule},
                If [MatchQ[rule, _Rule],
                    
                    condition = rule[[1]];
                    conclusion = rule[[2]];
                    
                    Rule[
                        ARCPrunePattern[condition],
                        (* Although not a "pattern", most of the same principles apply. *)
                        ARCPrunePattern[conclusion, "Conclusion" -> True]
                    ]
                    ,
                    rule
                ]
            ] /@ rules;
        
        (* We now also call this deeper in ARCFindRules, so not sure if we also need to call
           it here. *)
        rules = ARCFormExceptRules[rules, objects];
        
        ARCSortRules[rules]
    ]

ARCCleanRules[rules_Association, objects_List] :=
    If [ListQ[rules["Rules"]],
        Sett[
            rules,
            "Rules" -> ARCCleanRules[rules["Rules"], objects]
        ]
        ,
        rules
    ]

ARCCleanRules[other_, _] := other

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
    Module[{nb, sectionCellObject, cells},
        
        nb = ARCNotebook[exampleName];
        Replace[
            nb,
            {
                _NotebookObject :> (
                    (*DevTools`NotebookTools`WithNotebook[
                        file,
                        Function[{nb},*)
                            sectionCellObject =
                                ReturnIfMissing@
                                DevTools`NotebookTools`SectionCellObject[nb, "Public Notes"];
                            cells =
                                NotebookRead /@
                                    DevTools`NotebookTools`CellObjects[sectionCellObject]
                        (*],
                        (* Ideally we'd prefer not to make the notebook visible, but without
                           this it seems to misbehave at times. *)
                        "Visible" -> True
                    ]*)
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
            taskLog,
            implementedARCTrainingTasks,
            implementedPersonallyCreatedTrainingTasks,
            arcTrainingTasksPassingDueToGeneralization,
            arcEvaluationTasksPassingDueToGeneralization,
            value,
            trainingTasksImplementedCount,
            trainingPercentage,
            evaluationPercentage
        },
        
        taskLog = ARCTaskLog[];
        
        implementedARCTrainingTasks = Select[
            taskLog,
            Function[
                !TrueQ[#["PersonalExample"]] && !TrueQ[#["GeneralizedSuccess"]] && !TrueQ[#["EvaluationTask"]]
            ]
        ][[All, "ExampleImplemented"]];
        
        implementedPersonallyCreatedTrainingTasks = Select[
            taskLog,
            Function[
                TrueQ[#["PersonalExample"]]
            ]
        ][[All, "ExampleImplemented"]];
        
        arcTrainingTasksPassingDueToGeneralization = Select[
            taskLog,
            Function[
                !TrueQ[#["PersonalExample"]] && TrueQ[#["GeneralizedSuccess"]]
            ]
        ][[All, "ExampleImplemented"]];
        
        arcEvaluationTasksPassingDueToGeneralization =
            DeleteDuplicates@
            Flatten@
            Join[
                Cases[taskLog[[All, "NewEvaluationSuccesses"]], List[Repeated[_String]]],
                Select[taskLog, TrueQ[#["EvaluationTask"]] &][[All, "ExampleImplemented"]]
            ];
        
        Echo[
            Rule[
                Row[{
                    trainingTasksImplementedCount = Length[implementedARCTrainingTasks] + Length[arcTrainingTasksPassingDueToGeneralization],
                    " (",
                    Quantity[
                        trainingPercentage = ToIntegerIfNoDecimal[Round[trainingTasksImplementedCount / 400 * 100, 0.1]],
                        "Percent"
                    ],
                    ")"
                }]
                ,
                Length[implementedARCTrainingTasks] -> Length[arcTrainingTasksPassingDueToGeneralization]
            ]
        ];
        
        Echo[
            Row[{
                value = Length[arcEvaluationTasksPassingDueToGeneralization],
                " (",
                Quantity[
                    evaluationPercentage = ToIntegerIfNoDecimal[Round[value / 400 * 100, 0.1]],
                    "Percent"
                ],
                ")"
            }]
        ];
        
        StringRiffle[
            Flatten@
            {
                "## Percentage of Tasks Passing",
                "",
                "* Training tasks: " <> ToString[trainingTasksImplementedCount] <> " / 400 (" <> ToString[trainingPercentage] <> "%)",
                "  * Implemented: " <> ToString[Length[implementedARCTrainingTasks]],
                "  * Passing via generalization: " <> ToString[Length[arcTrainingTasksPassingDueToGeneralization]],
                "* Evaluation tasks: " <> ToString[Length[arcEvaluationTasksPassingDueToGeneralization]] <> " / 400 (" <> ToString[evaluationPercentage] <> "%)",
                "",
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
                "The following ARC evaluation tasks are passing. My intention is to not analyzed or implemented evaluation examples specifically, but I have implemented a few accidentally.",
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
                "[" <> ToLowerCase[task] <> "](" <> ARCTaskNotesFile[task] <> ")"
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
Options[ARCInferObjectImage] =
{
    "InferObjectPropertiesForRendering" -> True     (*< Should we try to infer any missing but required properties needed for rendering? *)
};
ARCInferObjectImage[objectIn_Association, scene_Association, OptionsPattern[]] :=
    FailureDetails[
        "ARCInferObjectImageFailure",
        "A failure occurred infering an object's image."
    ]@
    Module[{object = objectIn, color},
        
        ReturnIfNotMissing[object["Image"]];
        
        If [TrueQ[OptionValue["InferObjectPropertiesForRendering"]],
            object =
                ReturnIfFailure@
                ARCInferObjectPropertiesForRendering[object, scene]
        ];
        
        Which[
            !MissingQ[object["Color"]],
                color = object["Color"],
            !FreeQ[object["Shape"], KeyValuePattern["Color" -> _]],
                color = Automatic,
            !MissingQ[object["Colors"]],
                If [!MatchQ[object["Colors"], {_}],
                    ReturnFailure[
                        "ARCInferObjectImageFailure",
                        "If the Colors property is specified for use with inferring an object's image, there must be a single color.",
                        "Colors" -> object["Colors"],
                        "Object" -> object
                    ]
                    ,
                    color = object["Colors"][[1]]
                ],
            True,
                ReturnFailure[
                    "ARCInferObjectImageFailure",
                    "Either the Color or Colors properties must be specified.",
                    "Object" -> object
                ]
        ];
        
        If [MissingQ[object["Shapes"]] && MissingQ[object["Shape"]],
            ReturnFailure[
                "ARCInferObjectImageFailure",
                "Either the Shapes or Shape properties must be specified.",
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
            color,
            object["Width"],
            object["Height"]
        ]
    ]

ARCInferObjectImage[
        shape: KeyValuePattern["Name" -> "Square" | "Rectangle"],
        color_,
        width_,
        height_
    ] :=
    Module[{borderColor = Missing[], interiorColor = Missing[]},
        
        If [IntegerQ[shape["Border", "Color"]],
            borderColor = shape["Border", "Color"]
        ];
        
        If [IntegerQ[shape["Interior", "Color"]],
            interiorColor = shape["Interior", "Color"]
        ];
        
        If [IntegerQ[color],
            If [!SpecifiedQ[borderColor],
                borderColor = color
            ];
            If [TrueQ[shape["Filled"]] && !SpecifiedQ[interiorColor],
                interiorColor = color
            ]
        ];
        
        ReturnFailureIfMissing[
            borderColor,
            "ARCInferObjectImageBorderColorFailure",
            "Unable to infer the border color of a rectangle.",
            "Shape" -> shape,
            "Color" -> color
        ];
        
        If [TrueQ[shape["Filled"]],
            ReturnFailureIfMissing[
                interiorColor,
                "ARCInferObjectImageInteriorColorFailure",
                "Unable to infer the interior color of a rectangle.",
                "Shape" -> shape,
                "Color" -> color
            ]
        ];
        
        ARCScene@
        (* I don't think this is required, at least not at this time, but will add it here
           incase it's ever needed in the future. *)
        Function[ARCApplyImageTransforms[#, shape["Transform"]]]@
        {
            (* Horizontal line. *)
            Table[borderColor, {width}],
            If [height >= 3,
                Sequence @@
                Table[
                    {
                        borderColor,
                        Sequence @@
                        Table[
                            If [TrueQ[shape["Filled"]] || IntegerQ[shape["Interior", "Color"]],
                                interiorColor
                                ,
                                $nonImageColor
                            ],
                            {width - 2}
                        ],
                        If [width > 1,
                            borderColor
                            ,
                            Nothing
                        ]
                    },
                    {height - 2}
                ]
                ,
                Nothing
            ],
            If [height >= 2,
                (* Horizontal line. *)
                Table[borderColor, {width}]
                ,
                Nothing
            ]
        }
    ]

ARCInferObjectImage[
        shape: KeyValuePattern["Name" -> "Line"],
        color_Integer,
        widthIn_,
        heightIn_
    ] :=
    Module[{width = widthIn, height = heightIn},
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
            shape["Angle"] === 45,
                Function[{y},
                    Flatten[
                        {
                            Table[$nonImageColor, {width - y}],
                            color,
                            Table[$nonImageColor, {y - 1}]
                        },
                        1
                    ]
                ] /@ Range[height],
            shape["Angle"] === 135,
                Function[{y},
                    Flatten[
                        {
                            Table[$nonImageColor, {y - 1}],
                            color,
                            Table[$nonImageColor, {width - y}]
                        },
                        1
                    ]
                ] /@ Range[height],
            True,
                ReturnFailure[
                    "UnsupportedLine",
                    "Only vertical, horizontal, 45 degree, and 135 degree lines are currently supported.",
                    "Shape" -> shape,
                    "Width" -> width,
                    "Height" -> height
                ]
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
        widthIn_,
        heightIn_
    ] :=
    Module[{width = widthIn, height = heightIn},
        If [And[
                MatchQ[shape["Transform"], KeyValuePattern["Angle" -> _]],
                MatchQ[Abs[shape["Transform", "Angle"]], 90 | 270]
            ],
            width = heightIn;
            height = widthIn;
        ];
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
    ]

(* NOTE: Doesn't do error checking to ensure width and height are compatible. *)
ARCInferObjectImage[
        shape: KeyValuePattern["Name" -> "Triangle"],
        color_,
        widthIn_,
        heightIn_
    ] :=
    Module[{width = widthIn, height = heightIn},
        If [And[
                MatchQ[shape["Transform"], KeyValuePattern["Angle" -> _]],
                MatchQ[Abs[shape["Transform", "Angle"]], 90 | 270]
            ],
            width = heightIn;
            height = widthIn;
        ];
        ARCScene@
        ReturnIfFailure@
        Function[ARCApplyImageTransforms[#, shape["Transform"]]][
            Function[{y},
                With[{transparentWidth = (width - 1) / 2 - y + 1},
                    {
                        If [transparentWidth > 0,
                            Sequence @@ Table[$nonImageColor, {transparentWidth}]
                            ,
                            Nothing
                        ],
                        Sequence @@ Table[color, {width - 2 * transparentWidth}],
                        If [transparentWidth > 0,
                            Sequence @@ Table[$nonImageColor, {transparentWidth}]
                            ,
                            Nothing
                        ]
                    }
                ]
            ] /@ Range[height]
        ]
    ]

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
            KeyTake[shapes, {"Name", "Renderable"}],
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
        ARCReplaceRulePatternsWithGroupPatternsIfAppropriate[rules, inputObjects] '' Given a list of rules, checks whether any of the rule LHS correspond with object groups, and if so, includes the 'group patterns' in the result for forming groups when applying rules.
    
    TODO: Rename this function appropriately.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCReplaceRulePatternsWithGroupPatternsIfAppropriate]
    
    \maintainer danielb
*)
Clear[ARCReplaceRulePatternsWithGroupPatternsIfAppropriate];
ARCReplaceRulePatternsWithGroupPatternsIfAppropriate[rules_List, inputObjects_List] :=
    Module[{matchingObjects, gropuPattern},
        (* Check if any of the input objects are groups. *)
        If [!FreeQ[inputObjects, KeyValuePattern["Type" -> "Group"]],
            
            (* There are groups. *)
            DeleteDuplicates[
                Function[{rule},
                    
                    matchingObjects = Select[
                        inputObjects,
                        MatchQ[#, ARCRuleToPattern[rule]] &
                    ];
                    
                    group =
                    If [AnyTrue[matchingObjects, #["Type"] === "Group" &],
                        (* All of these objects are groups, so we want to replace this rule pattern
                           with a group specification. *)
                        Replace[
                            ReturnIfFailure@
                            ARCPrunePattern[
                                Replace[
                                    ARCObjectCommonalities[
                                        KeyDrop[
                                            Select[matchingObjects, #["Type"] === "Group" &],
                                            "Type"
                                        ]
                                    ],
                                    HoldPattern[Repeated][pattern_, rest___] :> Repeated[
                                        ARCPrunePattern[pattern, "GroupPattern" -> True],
                                        rest
                                    ],
                                    {0, Infinity}
                                ],
                                "GroupPattern" -> True
                            ],
                            {
                                <||> :> (
                                    If [Length[rules] =!= 1,
                                        (* If we couldn't find any commonalities between the group
                                           object, then we can't form a pattern to detect groups,
                                           and if there is more than one rule, that tells us that
                                           groups shouldn't apply to just any pair of things, so
                                           we need to give up on this list of rules. *)
                                        Return[
                                            Missing["GroupPatternNotFound"],
                                            Module
                                        ]
                                    ]
                                ),
                                (* If we have formed a rule with only a single xample, it might
                                   result in a group that only has a single example, and that can
                                   result in super-verbose group patterns, since
                                   ARCObjectCommonalities will get run on a single object.
                                   One way to cope with this is to see that the "Image" property
                                   is populated. If so, that should be a maximally descriptive
                                   thing, so we could just drop the other properties. This can also
                                   happen in cases where there are more than one example, but there
                                   too it seems better to prune things. e.g. 00dbd492 *)
                                assoc:KeyValuePattern["Image" -> _ARCScene] :> (
                                    KeyTake[assoc, "Image"]
                                )
                            }
                        ]
                        ,
                        Nothing
                    ];
                    
                    (*ARCEcho2[rule -> group -> matchingObjects];*)
                    
                    group
                    
                ] /@ rules
            ]
            ,
            (* There aren't any groups. *)
            {}
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

ARCRuleToPattern[<||>] := _

ARCRuleToPattern[pattern_] :=
    Module[{pattern2},
        Replace[
            pattern2 = Replace[
                Normal[pattern],
                {
                    HoldPattern[Rule]["Shapes", shape_] :> (
                        (* We want the object to have this shape as one of its shapes. *)
                        "Shapes" -> {___, ARCRuleToPattern[shape], ___}
                    )
                },
                {1}
            ];
            propertiesWithMissingValues = Cases[pattern2, HoldPattern[Rule][_, _Missing]][[All, 1]];
            If [propertiesWithMissingValues =!= {},
                pattern2 = Normal[KeyDrop[pattern2, propertiesWithMissingValues]];
                Clear[assoc];
                missingCondition =
                    And @@ (
                        Function[{property},
                            TemporaryHold[MissingQ][assoc[property]]
                        ] /@ propertiesWithMissingValues
                    );
                With[{missingCondition = missingCondition},
                    pattern2 = assoc: KeyValuePattern[pattern2];
                    pattern2 =
                        Utility`ReleaseTemporaryHolds@
                        Condition[pattern2, missingCondition];
                ];
                pattern2
                ,
                KeyValuePattern[pattern2]
            ],
            {
                assoc_Association :> ARCRuleToPattern[assoc],
                "Same" :> With[{symbol = Unique[patternSymbol]},
                    Pattern[symbol, Blank[]]
                ]
            },
            {2, Infinity}
        ]
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
Options[ARCObjectCommonalities] =
{
    "Recursive" -> False,       (*< Whether to recurse inside of nested associations. *)
    "IgnoreMissing" -> False    (*< If an object doesn't specify a value for a property, can we keep the common value used by other objects for that property? *)
};
ARCObjectCommonalities[objects_List, opts:OptionsPattern[]] :=
    Module[
        {
            propertyValues,
            commonShapes,
            lengths,
            commonalitiesAcrossAllListItems
        },
        Association[
            Function[{property},
                propertyValues = DeleteDuplicates[objects[[All, property]]];
                If [TrueQ[OptionValue["IgnoreMissing"]],
                    propertyValues = DeleteMissing[propertyValues]
                ];
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
                    Which[
                        And[
                            (* All values are lists. *)
                            MatchQ[propertyValues, {Repeated[{Repeated[_Association]}]}],
                            (* All lists have the same size. *)
                            Length[lengths = DeleteDuplicates[Length /@ propertyValues]] === 1
                        ],
                            (* Are there any property values that are the same across all
                            list items, regardless of which list they occur in? *)
                            commonalitiesAcrossAllListItems = ARCObjectCommonalities[
                                Flatten[propertyValues]
                            ];
                            (* Are there any property values which don't universally have the same
                            value, but within a particular list have a consistent value? *)
                            propertiesWithSameValueWithinAList = Intersection @@ (
                                Keys /@
                                    ARCObjectCommonalities /@
                                    (* Remove keys that all associations have the same value for. *)
                                    With[{propertiesWithPredictableValue = Keys[commonalitiesAcrossAllListItems]},
                                        KeyDrop[#, propertiesWithPredictableValue] & /@ propertyValues
                                    ]
                            );
                            If [propertiesWithSameValueWithinAList =!= {},
                                commonalitiesAcrossAllListItems = Join[
                                    commonalitiesAcrossAllListItems,
                                    AssociationThread[
                                        propertiesWithSameValueWithinAList,
                                        Table["Same", {Length[propertiesWithSameValueWithinAList]}]
                                    ]
                                ]
                            ];
                            
                            commonalitiesAcrossAllListItems =
                                ARCPrunePattern[commonalitiesAcrossAllListItems];
                            
                            If [commonalitiesAcrossAllListItems =!= <||>,
                                property -> {
                                    Repeated[
                                        commonalitiesAcrossAllListItems,
                                        {lengths[[1]]}
                                    ]
                                }
                                ,
                                Nothing
                            ],
                        (* All values are associations, and we've been asked to recurse into
                           nested associations. *)
                        MatchQ[propertyValues, {Repeated[_Association]}],
                            Replace[
                                ReturnIfFailure[ARCObjectCommonalities[propertyValues, opts]],
                                {
                                    <||> :> Nothing,
                                    nestedComonalities_ :> (property -> nestedComonalities)
                                }
                            ],
                        True,
                            Nothing
                    ]
                ]
            ] /@ DeleteDuplicates[Flatten[Keys /@ objects]]
        ]
    ]

(*!
    \function ARCFormGroupsWhenApplyingRules
    
    \calltable
        ARCFormGroupsWhenApplyingRules[objects, groups, sceneWidth, sceneHeight] '' Given the objects in a scene, and the group definitions, tries to form matching groups.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFormGroupsWhenApplyingRules]
    
    \maintainer danielb
*)
Clear[ARCFormGroupsWhenApplyingRules];
ARCFormGroupsWhenApplyingRules[objectsIn_List, groups_List, sceneWidth_Integer, sceneHeight_Integer] :=
    Module[
        {
            objects = objectsIn,
            possibleGroups,
            objectGroups,
            inputObjectUUIDsThatFormedGroups
        },
        
        (* Do any rules involve groups? *)
        If [groups =!= {},
            
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
            (*ARCEcho[possibleGroups[[23]]];*)
            objectGroups = Flatten[
                Function[{group},
                    With[{pattern = ARCRuleToPattern[group]},
                        Select[
                            possibleGroups,
                            MatchQ[#, pattern] &
                        ]
                    ]
                ] /@ groups
            ];
            
            inputObjectUUIDsThatFormedGroups =
                Flatten[objectGroups[[All, "Components", All, "UUID"]]];
            
            Join[
                objectGroups,
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
        If [EntityMatchQ[newComponent["Shape"], <|"Name" -> "Line", "Angle" -> 0 | 90|>],
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
                RotateImage[image, angle][[1]],
                ARCImageColors[image]
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
Options[ARCInferShapeAndShapes] =
{
    "IncludeNoopTransforms" -> False        (*< Should we include image transforms that result in the image not changing? e.g. A horizontal flip for an image that has vertical line symmetry. *)
};
ARCInferShapeAndShapes[image_List, colors_List, OptionsPattern[]] :=
    Module[
        {
            monochrome = ARCToMonochrome[image, $nonImageColor],
            shapes = ARCClassifyShape[image]
        },
        <|
            "Shape" -> Replace[
                (* Only consider _renderable_ shapes for the Shape property so that we are
                   guaranteed that if we know an object's Shape + Color, we can render it.
                   e.g. 37d3e8b2 *)
                DeleteCases[
                    shapes,
                    KeyValuePattern["Renderable" -> False]
                ],
                {
                    {} :>
                        ARCScene@
                        If [Length[colors] === 1,
                            monochrome
                            ,
                            image
                        ],
                    list_List :> First[ARCPruneAlternatives[list, "Shapes", "Most" -> "Specific"]]
                }
            ],
            "Shapes" ->
                Join[
                    ARCImageShapes[image, "Monochrome" -> monochrome, "Colors" -> colors],
                    Replace[
                        shapes,
                        shape:KeyValuePattern["Renderable" -> False] :> KeyDrop[shape, "Renderable"],
                        {1}
                    ]
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
                                    Alternatives @@ Sort[groupOfRules[[All, 1, 1]]]
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
        ARCRuleForAddedObjects[addedObjects, referenceableInputObjects, examles] '' Given the "AddedObjects" value for each example, determines whether we support modeling those added objects, and if so returns the rule for them.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRuleForAddedObjects]
    
    \maintainer danielb
*)
Clear[ARCRuleForAddedObjects];
ARCRuleForAddedObjects[addedObjects_List, referenceableInputObjects_Association, examplesIn_List] :=
    ARCLogScope["ARCRuleForAddedObjects"]@
    Module[{examples = examplesIn, counter = 0, generalizedCondition},
        
        (* If there are objects in the output that don't seem to correspond to objects in the
           input, then we'll start by trying to model them. *)
        Which[
            MatchQ[addedObjects, {Repeated[_Missing]}],
                (* There are no objects added. Nothing to do. *)
                Nothing,
            
            MatchQ[addedObjects, {Repeated[KeyValuePattern["Transform" -> KeyValuePattern["Objects" -> {_}]]]}],
                
                (* There is always exactly one object added, so we'll see if we can model that. *)
                
                (*addedObjectUUIDs = Flatten[addedObjects[[All, "Transform", "Objects", All, "UUID"]]];*)
                (* Remove these 'added objects' from the output scenes so that the referenceable objects
                   we form below don't try to use the very objects we're trying to add. *)
                (* Commented out as the below code to form referenceable output objects isn't
                   currently in use. *)
                (*examples[[All, "Output"]] = Replace[
                    examples[[All, "Output"]],
                    KeyValuePattern["UUID" -> Alternatives @@ addedObjectUUIDs] :> Nothing,
                    {0, Infinity}
                ];*)
                ReturnIfFailure@
                ARCGeneralizeConclusions[
                    Function[{item},
                        Append[item, "Example" -> ++counter]
                    ] /@ addedObjects,
                    Join[
                        referenceableInputObjects
                        (* I don't think this is required. We were previously using it for
                           31aa019c, but it can use a referenceable input object, and other
                           examples like 1A2E2828 are needing referenceable input objects
                           here. *)
                        (*ReturnIfFailure@
                        ARCMakeObjectsReferenceable[
                            examples[[All, "Output"]],
                            "AdditionalConditions" -> <|"Context" -> "Output"|>
                        ]*)
                    ],
                    examples
                ],
            MatchQ[addedObjects, {Repeated[KeyValuePattern["Transform" -> KeyValuePattern["Objects" -> {_}]] | _Missing]}],
                
                (* Sometimes we add a single object, sometimes we don't add an object. *)
                
                (* Get the positions within `addedObjects` of both cases where no object was
                   added and where 1 object was added. *)
                examplesWithNoObjectAdded = Extract[
                    examples,
                    Position[addedObjects, _Missing, {1}, Heads -> False]
                ];
                examplesWithObjectAdded = Extract[
                    examples,
                    addedObjectPositions =
                        Position[addedObjects, Except[_Missing], {1}, Heads -> False]
                ];
                
                (* Try produce a condition to be used to determine when an object should be
                   added. *)
                generalizedCondition = ARCGeneralizeConclusionValueNonRecursive[
                    {"AddObjectQ"},
                    <||>,
                    counter = 0;
                    Function[{item},
                        ++counter;
                        Append[
                            If [MissingQ[item],
                                <|"Value" -> False|>
                                ,
                                <|"Value" -> True|>
                            ],
                            "Example" -> counter
                        ]
                    ] /@ addedObjects,
                    referenceableInputObjects,
                    examples
                ];
                
                If [MatchQ[generalizedCondition, Rule["AddObjectQ", ObjectValue[_, Association[Rule[_, _]]]]],
                    conditionProperty = Keys[generalizedCondition[[2, 2]]][[1]];
                    conditionValue = Values[generalizedCondition[[2, 2]]][[1]];
                    generalizedCondition =
                        <|ReplacePart[generalizedCondition[[2]], 2 -> conditionProperty] -> conditionValue|>
                    ,
                    ReturnFailure[
                        "AddedObjectContitionFailure",
                        "Unable to find a condition to decide when to add an object or not.",
                        "ARCGeneralizeConclusionValueNonRecursiveResult" -> generalizedCondition
                    ]
                ];
                
                (* Generalize the added object. *)
                Replace[
                    ReturnIfFailure@
                    ARCGeneralizeConclusions[
                        counter = 0;
                        Function[{item},
                            Append[item, "Example" -> ++counter]
                        ] /@ Extract[addedObjects, addedObjectPositions],
                        referenceableInputObjects,
                        examplesWithObjectAdded
                    ],
                    conclusion: KeyValuePattern[
                        "Transform" -> _Association
                    ] :> (
                        Sett[
                            conclusion,
                            {"Transform", "Condition"} -> generalizedCondition
                        ]
                    )
                ],
            
            And[
                (* Objects are always added.*)
                MatchQ[
                    addedObjects,
                    {Repeated[KeyValuePattern["Transform" -> KeyValuePattern["Objects" -> {__}]]]}
                ],
                (* The number of objects added is always the same. *)
                Length[DeleteDuplicates[Length /@ addedObjects[[All, "Transform", "Objects"]]]] === 1
            ],
                
                (* Multiple objects are added, but the number is consistent. e.g. 8e5a5113 *)
                
                ReturnIfFailure@
                ARCGeneralizeConclusions[
                    Function[{item},
                        Append[item, "Example" -> ++counter]
                    ] /@ addedObjects,
                    referenceableInputObjects,
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
    
    TODO: If there are other non-grid / divider objects in the scene that are of the same color
          as a suspected grid, then it probably implies that that color isn't used for a grid.
          e.g. d9f24cd1
    
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
                (* Check for grid. *)
                If [Length[colors] =!= 2 || colors[[1]] =!= -1,
                    Return[False, Module]
                ];
                (* The first color will be the background color (-1) and the second color
                   will be the grid color. Todo: Multi-color grids. *)
                color = colors[[2]];
                firstRow = image[[1]];
                dividerRow = Table[color, {Length[firstRow]}];
                Replace[
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
                                RepeatedNull[
                                    PatternSequence[
                                        PatternSequence[
                                            Repeated[firstRow],
                                            dividerRow
                                        ],
                                        Repeated[firstRow]
                                    ]
                                ]
                            }
                        ]
                    ],
                    True -> <|"Type" -> "Grid"|>
                ],
            spansWidth && !spansHeight,
                (* Check for horizontal divider. *)
                If [Length[colors] =!= 1,
                    Return[False, Module]
                ];
                color = colors[[1]];
                Replace[
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
                    True -> <|"Type" -> "Divider", "Orientation" -> "Horizontal"|>
                ],
            spansHeight && !spansWidth,
                (* Check for vertical divider. *)
                If [Length[colors] =!= 1,
                    Return[False, Module]
                ];
                color = colors[[1]];
                Replace[
                    And[
                        x =!= 1,
                        x =!= sceneWidth,
                        MatchQ[
                            image,
                            {
                                Repeated[{color}]
                            }
                        ]
                    ],
                    True -> <|"Type" -> "Divider", "Orientation" -> "Vertical"|>
                ]
        ]
    ]

ARCGridOrDividerQ["Objects" -> objects_List, sceneWidth_, sceneHeight_] :=
    Module[{gridOrDivider},
        Function[{object},
            If [AssociationQ[
                    gridOrDivider = ARCGridOrDividerQ[
                        object["Image"][[1]],
                        object["Y"],
                        object["X"],
                        sceneWidth,
                        sceneHeight
                    ]
                ],
                Join[
                    object,
                    <|
                        "GridOrDivider" -> Join[
                            gridOrDivider,
                            If [gridOrDivider["Type"] === "Grid",
                                ARCParseGrid[object["Image"][[1]]]
                                ,
                                (* Divider *)
                                ARCParseGrid@
                                ARCDrawSubImage[
                                    ConstantArray[
                                        $nonImageColor,
                                        {
                                            sceneHeight,
                                            sceneWidth
                                        }
                                    ],
                                    object
                                ]
                            ]
                        ]
                    |>
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
    Block[{$arcDebug = True},
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
    If [TrueQ[$arcDebug],
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
        If [TrueQ[$arcDebug],
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
        
        ARCConstructObject[
            object,
            "Scene" ->
                ReturnFailureIfMissing@
                OptionValue["Scene"]
        ]
    ]

ARCConstructObject[objectIn_, OptionsPattern[]] :=
    Module[{object = objectIn},
        
        object =
            ReturnIfFailure@
            ARCInferObjectPropertiesForRendering[object, OptionValue["Scene"]];
        
        If [MissingQ[object["Image"]],
            Prepend[
                object,
                "Image" ->
                    ReturnIfFailure@
                    ARCInferObjectImage[
                        object,
                        ReturnFailureIfMissing@
                        OptionValue["Scene"],
                        (* Avoid re-doing what we do above. *)
                        "InferObjectPropertiesForRendering" -> False
                    ]
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
Options[ARCMappingToObjectWithOverlappingFilledInPixels] =
{
    "OverlapRequired" -> "Subset",      (*< "Subset" means that one object's filled-in pixels need to be fully contained in the other's. "Overlap" means that we just need an overlap of pixels. *)
    "Colors" -> "Same"                  (*< "Same" means that the colors present need to be the same set. "Overlap" means that there must be an overlap in colors. *)
};
ARCMappingToObjectWithOverlappingFilledInPixels[object_Association, outputObjects_List, OptionsPattern[]] :=
    Module[{},
        Replace[
            Select[
                outputObjects,
                And[
                    Which[
                        OptionValue["OverlapRequired"] === "Subset",
                            Or[
                                (* The output object is a superset of the pixels of the input object. *)
                                SubsetQ[#["PixelPositions"], object["PixelPositions"]],
                                (* The output object is a subset of the pixels of the input object. *)
                                SubsetQ[object["PixelPositions"], #["PixelPositions"]]
                            ],
                        OptionValue["OverlapRequired"] === "Overlap",
                            Intersection[#["PixelPositions"], object["PixelPositions"]] =!= {}
                    ],
                    (* We also currently require the colors to be the same, to avoid false
                       positives, such as in 31aa019c, where we don't want random pixels
                       in the output to get mapped to the boxes in the output. *)
                    Or[
                        And[
                            OptionValue["Colors"] === "Same",
                            object["Colors"] === #["Colors"]
                        ],
                        And[
                            OptionValue["Colors"] === "Overlap",
                            Intersection[object["Colors"], #["Colors"]] =!= {}
                        ]
                    ]
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
                    Normal[KeyDrop[conclusion, {"Example", "Input", "Output"}]],
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
        If [ListQ[attributes["SubProperties"]] || ListQ[attributes["MinimalPropertySets"]],
            (* $transformTypes specifies which sub-properties we need to be able to
               infer, so we loop over them. *)
            subProperties = Lookup[
                attributes,
                "SubProperties",
                If [ListQ[attributes["MinimalPropertySets"]],
                    <||>
                    ,
                    Missing["NotFound"]
                ]
            ];
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
    Module[{pattern, conclusion, score},
        
        score = Total[
            Function[{rule},
                (*EchoIndented[rule];*)
                Which[
                    MatchQ[rule, {Repeated[KeyValuePattern["Rules" -> _]]}],
                        (* For example, a set of rules for a grid subdivision, where we
                           have a different set of rules for each grid cell. *)
                        Total[ARCRuleSetScore /@ rule],
                    MatchQ[rule, _Rule],
                        pattern = rule[[1]];
                        conclusion = ARCRemoveExtendedMetadataFromConclusion[rule[[2]]];
                        SqrtButKeepSign@
                        Plus[
                            SquareButKeepSign@
                            ReturnIfFailure@
                            ARCConditionsScore[pattern],
                            SquareButKeepSign@
                            ReturnIfFailure@
                            ARCTransformScore[conclusion],
                            SquareButKeepSign@
                            If [rule[[2, "ExampleCount"]] === 1,
                                (* If a rule is used in only one examle, it implies there is
                                a very high risk that it is nonsense, especially if it was
                                used just once in that example. *)
                                If [rule[[2, "UseCount"]] === 1,
                                    -1.5
                                    ,
                                    -1
                                ]
                                ,
                                0
                            ]
                        ],
                    True,
                        -(ARCExpressionComplexity[rule] ^ 2)
                ]
            ] /@ ruleSet
        ];
        
        (* If all rules are used in just one example, it implies that no general set of rules
           were found, but rather we only produced a "rule" to map from an input
           to its precise output image. *)
        If [MatchQ[ruleSet, {Repeated[Rule[_, KeyValuePattern["ExampleCount" -> 1]]]}],
            If [MatchQ[ruleSet, {Repeated[Rule[_, KeyValuePattern["UseCount" -> 1]]]}],
                score -= 10
                ,
                score -= 8
            ]
        ];
        
        score
    ]

ARCRuleSetScore[rules_Association] :=
    (* TODO: We're just scoring the rule list here, not the "Groups" key/value, etc. *)
    ARCRuleSetScore[rules["Rules"]]

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
    Module[{propertyQualitySum, propertyQuality},
        
        propertyQualitySum =
            SqrtButKeepSign@
            Total[
                Function[{property},
                    
                    propertyQuality = ReturnIfFailure[
                        PropertyConditionQuality[property],
                        "ARCConditionsScoreFailure",
                        "A failure occurred computing a score for some conditions.",
                        "Conditions" -> conditions
                    ];
                    
                    conditionValue = conditions[property];
                    
                    If [MatchQ[conditionValue, _Alternatives],
                        sortedAlternativeValueList = Sort[List @@ conditionValue];
                        If [And[
                                MatchQ[conditionValue, HoldPattern[Alternatives][_Integer, _Integer, ___Integer]],
                                !SameQ[
                                    sortedAlternativeValueList,
                                    Range[sortedAlternativeValueList[[1]], sortedAlternativeValueList[[-1]]]
                                ]
                            ],
                            (* Gap in the alternatives. e.g. a61f2674 *)
                            propertyQuality += -1
                        ];
                        Switch[
                            Length[sortedAlternativeValueList],
                            1,
                                (* This ideally shouldn't happen, but if it does, don't add
                                   a penalty. *)
                                Null,
                            2,
                                propertyQuality += -0.2,
                            3,
                                propertyQuality += -0.5,
                            4,
                                propertyQuality += -1,
                            _,
                                propertyQuality += -2 + (5 - Length[sortedAlternativeValueList])
                        ]
                    ];
                    
                    SquareButKeepSign[propertyQuality]
                    
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

(* If something doesn't require any conditions, that means it is quite general,
   so we want to encourage that, and it should definitely win out (or at least
   not be penalized) relative to explicit property conditions.
   ARCFindRules-20220817-R66XW8
   ARCFindRules-20220828-365IJ8 *)
ARCConditionsScore[<||>] := 1.4

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
    Module[{expr = exprIn, scoreAdjustments = 0},
        
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
        
        Cases[
            (* Before we give a bonus for numbers like 1 being present, remove images, since
               the have lots of numbers in them, and we don't want to accidentally start
               favoring things with images in them. *)
            Replace[expr, _ARCScene :> "REMOVED", Infinity],
            integer_Integer :> (
                scoreAdjustments +=
                    Switch[
                        integer,
                        0 | 1 | -1,
                            (* If a value is 1 or 0, that tends to be favorable.
                               I made this -0.05 originally, but then d0f5fe59 broke
                               because it was favoring a constant expression over
                               using InputScene.ObjectCount. *)
                            -0.03,
                        _,
                            0
                    ]
            ),
            Infinity
        ];
        
        (* Consider the complexity of the expressions. We want to be consistent
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
                        ".InverseRank" -> ".InvR",
                        (* e.g. 272f95fa *)
                        "XInverse" -> "XInv",
                        "X2Inverse" -> "X2Inv",
                        "YInverse" -> "YInv",
                        "Y2Inverse" -> "YInv",
                        (* A property like ColorAheadMatchesObject is more general than a property
                           like ColorAhead, so we don't want to have a big penalty on it due to
                           the length of its name. e.g. 28e73c20 *)
                        "MatchesObject" -> "MO"
                    }
                ]
            ],
            $penaltyPointsPerExpressionCharacter
        ] + scoreAdjustments
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
        
        scored =
            ReturnIfFailure@
            ARCScoreRuleSets[ruleSets];
        
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
                        If [MatchQ[property, "Type" | "Components"],
                            (* Not really a core property, but can occur in outputs.
                               e.g. "Type" -> "Group" *)
                            1
                            ,
                            ReturnFailure[
                                "ARCConditionsScoreMissingProperty",
                                "Unable to find the property " <> ToString[property] <> " in the property list."
                            ]
                        ]
                    ];
                    
                    1 - (listPosition / Length[$propertyListPositions])
                )
            }
        ];
        
        If [StringContainsQ[property, "Rank"],
            (* Rank and InverseRank properties are way down the list relative to the properties
               they are based on, so they are heavily penalized. I can't really think why they
               should be so heavily penalized, and that causes issues for inputs like a61f2674
               where we want to favor more general rules based on Rank and InverseRank,
               rather than more brittle rules based on Height. (in theory one might go so far
               as to say that Rank and InverseRank rules, at least when their value is 1,
               might be _preferable_ to their non-rank counerparts) That said, tests like
               PropertyConditionQuality-20220826-6OCF5M and PropertyConditionQuality-20220826-8AGQEV
               seem to imply that we wanted to penalize Rank properties at some point in
               the past, so perhaps there is reason to favor non-rank properties, at least
               in some cases. ARCConditionsScore-20220919-3BOBSB also seems to be a
               case where we're banking on a Rank property getting penalized. *)
            quality += 0.1
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

(*!
    \function ARCFindOccludedLines
    
    \calltable
        ARCFindOccludedLines[objects, sceneWidth, sceneHeight] '' Tries to determine what lines/rectangles are occluded, and forms single objects from their parts, setting ZOrder as appropriate on objects.
    
    NOTE: This function's name currently refers to "Lines" but has been generalized for lines and rectangles.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFindOccludedLines]
    
    \maintainer danielb
*)
Clear[ARCFindOccludedLines];
ARCFindOccludedLines[scene_ARCScene, background_, objects_List] :=
    Module[
        {
            allLinesOrRectangles,
            lineFragments,
            objectsByPixelPosition,
            objectsByUUID,
            processed = <||>,
            (* What are all of the objects that got merged into larger objects? *)
            lineFragmentsCombined = <||>,
            occlusionFindings,
            orderings = {},
            extendedLines,
            components,
            y,
            x,
            y2,
            x2,
            newObject,
            uuidReplacements = {}
        },
        
        (* If an image doesn't have any background color pixels because it is jam packed with
           objects, then don't look for occlusions, because if we find any, they will likely
           be false positives. e.g. 25d8a9c8
           ARCFindOccludedLines-20220829-Q1PSSK *)
        If [Cases[Flatten[scene[[1]]], background] === {},
            Return[objects, Module]
        ];
        
        allLinesOrRectangles = Select[
            objects,
            ARCSupportedOcclusionObjectQ[#] &
        ];
        
        With[{sceneWidth = ImageWidth[scene], sceneHeight = ImageHeight[scene]},
            lineFragments = Select[
                allLinesOrRectangles,
                And[
                    #["Width"] =!= sceneWidth,
                    #["Height"] =!= sceneHeight
                ] &
            ]
        ];
        
        objectsByPixelPosition = ObjectsByAttribute[objects, "PixelPosition"];
        objectsByUUID = ObjectsByAttribute[objects, "UUID"];
        
        (* Find occlusions. *)
        occlusionFindings = Function[{lineOrRectangle},
            (* If [lineOrRectangle["Position"] === {3, 3} && lineOrRectangle["Width"] === 3,
                ARCEcho2["OBJECT" -> lineOrRectangle];
                ARCDebug
                ,
                Identity
            ]@ *)
            If [And[
                    !TrueQ[processed[lineOrRectangle["UUID"]]],
                    (* We're only interested in single-color objects for now.*)
                    !MissingQ[lineOrRectangle["Color"]]
                ],
                lineOrRectangle -> Flatten[
                    Function[{direction},
                        occlusionFindings =
                            ReturnIfFailure@
                            ARCFindOccludedLines[
                                lineOrRectangle,
                                direction,
                                ARCPositionBeyondLine[
                                    lineOrRectangle,
                                    {
                                        lineOrRectangle["Y"],
                                        lineOrRectangle["X"]
                                    },
                                    direction
                                ],
                                objectsByPixelPosition,
                                objectsByUUID
                            ];
                        If [occlusionFindings =!= {},
                            lineFragmentsCombined[lineOrRectangle["UUID"]] = True;
                            Function[{occlusionFindingObject},
                                processed[occlusionFindingObject["UUID"]] = True;
                                lineFragmentsCombined[occlusionFindingObject["UUID"]] = True
                            ] /@ Values[Cases[occlusionFindings, HoldPattern[Rule]["Fragment", _]]];
                        ];
                        occlusionFindings
                    ] /@ ARCLineDirections[lineOrRectangle]
                ]
                ,
                Nothing
            ]
        ] /@ lineFragments;
        
        (* Process occlusions. *)
        extendedLines = KeyValueMap[
            Function[{lineOrRectangle, theseOcclusionFindings},
                If [theseOcclusionFindings =!= {},
                    fragments = Cases[theseOcclusionFindings, HoldPattern[Rule]["Fragment", _]][[All, 2]];
                    occludingObjects = Cases[theseOcclusionFindings, HoldPattern[Rule]["Occlusion", _]][[All, 2]];
                    
                    (* Produce a list of rules that indicate which objects are occluded by which other
                    objects. *)
                    AppendTo[
                        orderings,
                        (lineOrRectangle["UUID"] -> #["UUID"]) & /@ occludingObjects
                    ];
                    
                    components = Prepend[fragments, lineOrRectangle];
                    
                    y = Min[components[[All, "Y"]]];
                    x = Min[components[[All, "X"]]];
                    
                    y2 = Max[components[[All, "Y2"]]];
                    x2 = Max[components[[All, "X2"]]];
                    
                    (* Combine the fragments into a single object. *)
                    newObject = ARCImageRegionToObject[
                        <|
                            "Image" ->
                                ReturnIfFailure[
                                    ARCInferObjectImage[
                                        Replace[
                                            lineOrRectangle["Shape"],
                                            KeyValuePattern["Name" -> "Pixel"] -> <|"Name" -> "Line"|>
                                        ],
                                        lineOrRectangle["Color"],
                                        x2 - x + 1,
                                        y2 - y + 1
                                    ]
                                ][[1]],
                            "PixelPositions" -> Sort[
                                Flatten[Table[{thisY, thisX}, {thisY, y, y2}, {thisX, x, x2}], 1]
                            ],
                            "Color" -> lineOrRectangle["Color"],
                            "Position" -> {y, x}
                        |>,
                        ImageWidth[scene],
                        ImageHeight[scene]
                    ];
                    
                    (* For use below to replace the UUIDs of the now-defunct fragments with
                       the UUID of the object that replaces them. *)
                    AppendTo[
                        uuidReplacements,
                        (# -> newObject["UUID"]) & /@ components[[All, "UUID"]]
                    ];
                    
                    newObject
                    ,
                    Nothing
                ]
            ],
            Association[occlusionFindings]
        ];
        
        (* Rules specifying which objects are occluded by which other objects. *)
        orderings = Graph[
            Replace[
                Flatten[orderings],
                Flatten[uuidReplacements],
                {2}
            ]
        ];
        
        (* Set the ZOrder of objects. *)
        extendedLines =
            Function[{object},
                Sett[
                    object,
                    "ZOrder" -> Max[Cases[GraphDistance[orderings, object["UUID"]], _Integer]]
                ]
            ] /@ extendedLines;
        
        Join[
            extendedLines,
            Select[
                objects,
                !TrueQ[lineFragmentsCombined[#["UUID"]]] &
            ]
        ]
    ]

ARCFindOccludedLines[lineOrRectangle_Association, direction_List, nextPosition_List, objectsByPixelPosition_Association, objectsByUUID_Association] :=
    Module[{nextObject, nextNextPosition, nextNextObject, comparisonProperty},
        ARCEcho3["ARCFindOccludedLines" -> direction -> nextPosition];
        nextObject = objectsByPixelPosition[nextPosition];
        If [And[
                !MissingQ[nextObject],
                AssociationQ[nextObject = objectsByUUID[nextObject]],
                Switch[
                    direction,
                    {-1 | 1, 0},
                        And[
                            nextObject["X"] <= lineOrRectangle["X"],
                            nextObject["X2"] >= lineOrRectangle["X2"]
                        ],
                    {0, -1 | 1},
                        And[
                            nextObject["Y"] <= lineOrRectangle["Y"],
                            nextObject["Y2"] >= lineOrRectangle["Y2"]
                        ]
                ],
                (* We will for now disallow a pixel to be occluded by a line where the line
                   is oriented not "across" the direction of occlusion but "along" it.
                   If we don't do this, it breaks for example 253bf280.
                   ARCFindOccludedLines-20220829-W6RA8O *)
                Not[
                    And[
                        ShapeQ[lineOrRectangle, "Pixel"],
                        ShapeQ[nextObject, "Line"],
                        Or[
                            Abs[direction[[1]]] === 1 && nextObject["Shape", "Angle"] === 90,
                            Abs[direction[[2]]] === 1 && nextObject["Shape", "Angle"] === 0
                        ]
                    ]
                ]
            ],
            (* There is an object here beyond the line/rectangle in this direction. *)
            If [ARCSupportedOcclusionObjectQ[nextObject],
                ARCEcho3["nextObject" -> SimplifyObjects[nextObject]];
                nextNextPosition = ARCPositionBeyondLine[
                    nextObject,
                    nextPosition,
                    direction
                ];
                nextNextObject = objectsByPixelPosition[nextNextPosition];
                If [!MissingQ[nextNextObject],
                    nextNextObject = objectsByUUID[nextNextObject];
                    ARCEcho3["nextNextObject" -> SimplifyObjects[nextNextObject]];
                    If [And[
                            nextNextObject["Color"] === lineOrRectangle["Color"],
                            And[
                                ARCSupportedOcclusionObjectQ[nextNextObject],
                                comparisonProperty =
                                    If [Abs[direction[[1]]] === 1,
                                        "Width"
                                        ,
                                        "Height"
                                    ];
                                lineOrRectangle[comparisonProperty] === nextNextObject[comparisonProperty]
                            ]
                        ],
                        ARCEcho3[SimplifyObjects[lineOrRectangle] -> SimplifyObjects[nextNextObject]];
                        (* We've found what appears to be another fragment of our line/rectangle. *)
                        Return[
                            {
                                "Occlusion" -> nextObject,
                                "Fragment" -> nextNextObject,
                                Sequence @@
                                ReturnIfFailure@
                                ARCFindOccludedLines[
                                    lineOrRectangle,
                                    direction,
                                    ARCPositionBeyondLine[
                                        nextNextObject,
                                        nextNextPosition,
                                        direction
                                    ],
                                    objectsByPixelPosition,
                                    objectsByUUID
                                ]
                            },
                            Module
                        ]
                    ]
                ]
            ]
        ];
        
        {}
    ]

(*!
    \function ARCPositionBeyondLine
    
    \calltable
        ARCPositionBeyondLine[object, position, direction] '' Given an object, a position within that object, and a direction, returns the next pixel position in that direction beyond the object.
    
    NOTE: The function's name refers to "Line" but we've generalized this and are using it for rectangular objects in general.
    
    Examples:
    
    ARCPositionBeyondLine[<|"Y" -> 3, "X2" -> 5|>, {0, 1}] === {3, 6}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCPositionBeyondLine]
    
    \maintainer danielb
*)
Clear[ARCPositionBeyondLine];
ARCPositionBeyondLine[object_Association, position_List, direction_List] :=
    Module[{},
        Switch[
            direction,
            {1, 0},
                {
                    object["Y2"] + 1,
                    position[[2]]
                },
            {-1, 0},
                {
                    object["Y"] - 1,
                    position[[2]]
                },
            {0, 1},
                {
                    position[[1]],
                    object["X2"] + 1
                },
            {0, -1},
                {
                    position[[1]],
                    object["X"] - 1
                }
        ]
    ]

(*!
    \function ARCLineDirections
    
    \calltable
        ARCLineDirections[line] '' Given a line object, returns the two directions in which the line extends.
    
    Examples:
    
    ARCLineDirections[<|"Width" -> 3, "Height" -> 1|>] === {{0, -1}, {0, 1}}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCLineDirections]
    
    \maintainer danielb
*)
Clear[ARCLineDirections];
ARCLineDirections[object_] :=
    If [ShapeQ[object, "Line"],
        If [object["Width"] < object["Height"],
            {{-1, 0}, {1, 0}}
            ,
            {{0, -1}, {0, 1}}
        ]
        ,
        (* If we have a rectangle, we want to look in all directions, because we can't use
           the 'dominant' dimension (X vs Y) to determine which direction the rectangle
           might be occluded in. And in theory the final shape could be an "L" or a "+",
           so it's fine to look in all four directions. *)
        {{-1, 0}, {1, 0}, {0, -1}, {0, 1}}
    ]

(*!
    \function ShapeQ
    
    \calltable
        ShapeQ[object, shapeName] '' Returns True if the object is of the given shape.
    
    Examples:
    
    ShapeQ[<|"Shape" -> <|"Name" -> "Line"|>|>, "Line"] === True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ShapeQ]
    
    \maintainer danielb
*)
Clear[ShapeQ];
ShapeQ[object_Association, shapeName_] :=
    MatchQ[
        object["Shape"],
        KeyValuePattern["Name" -> shapeName]
    ]

(*!
    \function ARCPrunePattern
    
    \calltable
        ARCPrunePattern[pattern] '' Given an ARC object pattern, performs various pruning operations.
    
    Examples:
    
    ARCPrunePattern[<|"Image" -> ARCScene[{{1}}], "Width" -> 1|>] === <|"Image" -> ARCScene[{{1}}]|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCPrunePattern]
    
    \maintainer danielb
*)
Clear[ARCPrunePattern];
Options[ARCPrunePattern] =
{
    "Conclusion" -> False,      (*< Whether the context is actually a conclusion. *)
    "GroupPattern" -> False     (*< Is this a pattern for a object "group"? *)
};
ARCPrunePattern[patternIn_, OptionsPattern[]] :=
    Module[{},
        
        pattern = patternIn;
        
        If [AssociationQ[pattern["Group"]],
            pattern["Group"] = ARCPrunePattern[
                pattern["Group"],
                "GroupPattern" -> True
            ]
        ];
        
        If [!MissingQ[pattern["Image"]] || MatchQ[pattern["Shape"], _ARCScene],
            pattern = KeyDrop[
                pattern,
                Flatten@
                {
                    Which[
                        MatchQ[pattern["Image"], _ARCScene] || MatchQ[pattern["Shape"], _ARCScene],
                            {
                                "Width",
                                "Height",
                                If [!MissingQ[pattern["X"]] || TrueQ[OptionValue["Conclusion"]],
                                    {
                                        "X2",
                                        "X2.InverseRank",
                                        "X2.Rank",
                                        "X2Inverse",
                                        "X2Inverse.InverseRank",
                                        "X2Inverse.Rank",
                                        "XMiddle"
                                    }
                                    ,
                                    Nothing
                                ],
                                If [!MissingQ[pattern["Y"]] || TrueQ[OptionValue["Conclusion"]],
                                    {
                                        "Y2",
                                        "Y2.InverseRank",
                                        "Y2.Rank",
                                        "Y2Inverse",
                                        "Y2Inverse.InverseRank",
                                        "Y2Inverse.Rank",
                                        "YMiddle"
                                    }
                                    ,
                                    Nothing
                                ]
                            },
                        MatchQ[pattern["Image"], "Same"],
                            Sequence @@
                            {
                                If [MatchQ[pattern["Width"], "Same"],
                                    "Width"
                                    ,
                                    Nothing
                                ],
                                If [MatchQ[pattern["Height"], "Same"],
                                    "Height"
                                    ,
                                    Nothing
                                ]
                            },
                        True,
                            (* If the Image is just "Same", then let's keep the "Shape"
                               specifier if it's known. e.g. 1f876c06 *)
                            Nothing
                    ],
                    "MonochromeImage",
                    "Length",
                    "PrimarySizeDimension",
                    "AspectRatio",
                    "Area",
                    "FilledArea",
                    "FilledProportion",
                    "ColorUseCount",
                    "Width.Rank",
                    "Width.InverseRank",
                    "Height.Rank",
                    "Height.InverseRank",
                    "Length.Rank",
                    "Length.InverseRank",
                    "PrimarySizeDimension.Rank",
                    "PrimarySizeDimension.InverseRank",
                    "AspectRatio.Rank",
                    "AspectRatio.InverseRank",
                    "Area.Rank",
                    "Area.InverseRank",
                    "FilledArea.Rank",
                    "FilledArea.InverseRank",
                    "FilledProportion.Rank",
                    "FilledProportion.InverseRank",
                    "SurfacePixelCount",
                    "SurfacePixelCount.Rank",
                    "SurfacePixelCount.InverseRank"
                }
            ]
        ];
        
        If [!MissingQ[patternIn["Image"]],
            (* If we know the image, then prune these unnecessary properties. *)
            pattern = KeyDrop[
                pattern,
                Flatten@
                {
                    Which[
                        MatchQ[patternIn["Image"], _ARCScene],
                            {
                                "Shape",
                                "Shapes",
                                "Color",
                                "Colors",
                                "ColorCount",
                                "MostUsedColor",
                                "SecondMostUsedColor"
                            },
                        MatchQ[patternIn["Image"], "Same"],
                            Sequence @@
                            {
                                If [MatchQ[patternIn["Shape"], "Same"],
                                    "Shape"
                                    ,
                                    Nothing
                                ],
                                If [MatchQ[patternIn["Color"], "Same"],
                                    "Color"
                                    ,
                                    Nothing
                                ],
                                If [MatchQ[patternIn["Colors"], "Same"],
                                    "Colors"
                                    ,
                                    Nothing
                                ]
                            },
                        True,
                            (* If the Image is just "Same", then let's keep the "Shape"
                               specifier if it's known. e.g. 1f876c06 *)
                            Nothing
                    ],
                    "ColorUseCount.Rank",
                    "ColorUseCount.InverseRank"
                }
            ]
        ];
        
        If [Or[
                MatchQ[patternIn["Shape"], <|"Name" -> "Line" | "Pixel"|> | KeyValuePattern["Filled" -> True]],
                patternIn["FilledProportion"] == 1
            ],
            pattern = KeyDrop[
                pattern,
                {
                    "HollowCount",
                    "HollowCount.Rank",
                    "HollowCount.InverseRank"
                }
            ]
        ];
        
        If [MatchQ[patternIn["Shape"], <|"Name" -> "Pixel"|>],
            pattern = KeyDrop[
                pattern,
                {
                    "Width",
                    "Height"
                }
            ];
            If [!MissingQ[patternIn["X"]],
                pattern = KeyDrop[pattern, "X2"]
            ];
            If [!MissingQ[patternIn["Y"]],
                pattern = KeyDrop[pattern, "Y2"]
            ];
            If [!MissingQ[patternIn["YMiddle"]],
                pattern = KeyDrop[pattern, "YMiddle"]
            ];
            If [!MissingQ[patternIn["XMiddle"]],
                pattern = KeyDrop[pattern, "XMiddle"]
            ];
        ];
        
        If [MatchQ[patternIn["Shape"], KeyValuePattern["Name" -> "Pixel" | "Square" | "Rectangle" | "Line"]],
            pattern = KeyDrop[
                pattern,
                {
                    "VerticalLineSymmetry",
                    "HorizontalLineSymmetry",
                    "VerticalAndHorizontalLineSymmetry"
                }
            ]
        ];
        
        If [pattern["Height"] === 1,
            pattern = KeyDrop[
                pattern,
                {
                    "HorizontalLineSymmetry",
                    "VerticalAndHorizontalLineSymmetry",
                    "Angle"
                }
            ]
        ];
        
        If [pattern["Width"] === 1,
            pattern = KeyDrop[
                pattern,
                {
                    "VerticalLineSymmetry",
                    "VerticalAndHorizontalLineSymmetry",
                    "Angle"
                }
            ]
        ];
        
        If [!MissingQ[patternIn["Color"]],
            pattern = KeyDrop[
                pattern,
                {
                    "Colors",
                    "ColorCount",
                    "MostUsedColor",
                    "SecondMostUsedColor"
                }
            ]
        ];
        
        If [!MissingQ[patternIn["Colors"]],
            pattern = KeyDrop[
                pattern,
                {
                    "ColorCount"
                }
            ]
        ];
        
        If [!MissingQ[patternIn["Shape"]],
            pattern = KeyDrop[
                pattern,
                {
                    "Shapes"
                }
            ]
        ];
        
        If [!MissingQ[patternIn["Y"]],
            pattern = KeyDrop[
                pattern,
                {
                    "Y.InverseRank",
                    "Y.Rank",
                    "YInverse",
                    "YInverse.InverseRank",
                    "YInverse.Rank"
                }
            ];
            If [EntityMatchQ[patternIn["Shape"], "Pixel"],
                pattern = KeyDrop[
                    pattern,
                    {
                        "Y2",
                        "YMiddle"
                    }
                ]
            ];
        ];
        
        If [!MissingQ[patternIn["Y2"]],
            pattern = KeyDrop[
                pattern,
                {
                    "Y2.InverseRank",
                    "Y2.Rank",
                    "Y2Inverse",
                    "Y2Inverse.InverseRank",
                    "Y2Inverse.Rank"
                }
            ]
        ];
        
        If [!MissingQ[patternIn["YMiddle"]],
            pattern = KeyDrop[
                pattern,
                {
                    "YMiddle.InverseRank",
                    "YMiddle.Rank"
                }
            ]
        ];
        
        If [!MissingQ[patternIn["X"]],
            pattern = KeyDrop[
                pattern,
                {
                    "X.InverseRank",
                    "X.Rank",
                    "XInverse",
                    "XInverse.InverseRank",
                    "XInverse.Rank"
                }
            ];
            If [EntityMatchQ[patternIn["Shape"], "Pixel"],
                pattern = KeyDrop[
                    pattern,
                    {
                        "X2",
                        "XMiddle"
                    }
                ]
            ];
        ];
        
        If [!MissingQ[patternIn["X2"]],
            pattern = KeyDrop[
                pattern,
                {
                    "X2.InverseRank",
                    "X2.Rank",
                    "X2Inverse",
                    "X2Inverse.InverseRank",
                    "X2Inverse.Rank"
                }
            ]
        ];
        
        If [!MissingQ[patternIn["XMiddle"]],
            pattern = KeyDrop[
                pattern,
                {
                    "XMiddle.InverseRank",
                    "XMiddle.Rank"
                }
            ]
        ];
        
        If [!MissingQ[patternIn["Width"]] && !MissingQ[patternIn["Height"]],
            pattern = KeyDrop[
                pattern,
                {
                    "Length",
                    "AspectRatio",
                    "Area"
                }
            ]
        ];
        
        If [And[
                Or[
                    !MissingQ[patternIn["Width"]] && !MissingQ[patternIn["Height"]],
                    !MissingQ[patternIn["Area"]]
                ],
                !MissingQ[patternIn["FilledArea"]]
            ],
            pattern = KeyDrop[
                pattern,
                {
                    "FilledProportion"
                }
            ]
        ];
        
        If [patternIn["AspectRatio"] === 1,
            pattern = KeyDrop[
                pattern,
                {
                    "PrimarySizeDimension"
                }
            ]
        ];
        
        If [MatchQ[patternIn["Angle"], 0 | 45 | 90 | 135],
            pattern = KeyDrop[
                pattern,
                {
                    "PrimarySizeDimension"
                }
            ]
        ];
        
        If [!MissingQ[patternIn["ZOrder"]],
            pattern = KeyDrop[
                pattern,
                {
                    "ZOrder.InverseRank",
                    "ZOrder.Rank"
                }
            ]
        ];
        
        (* I'm going to drop these spammy properties until the point in the future we deem them to
           be useful in group patterns. *)
        If [TrueQ[OptionValue["GroupPattern"]],
            pattern = KeyDrop[
                pattern,
                {
                    "MonochromeImage",
                    "ColorCount",
                    "ColorCount.Rank",
                    "ColorCount.InverseRank",
                    "MostUsedColor",
                    "MostUsedColor.Rank",
                    "MostUsedColor.InverseRank",
                    "SecondMostUsedColor",
                    "SecondMostUsedColor.Rank",
                    "SecondMostUsedColor.InverseRank",
                    "ImageUseCount",
                    "ImageUseCount.Rank",
                    "ImageUseCount.InverseRank",
                    "ShapeUseCount",
                    "ShapeUseCount.Rank",
                    "ShapeUseCount.InverseRank",
                    "GeneralShapeUseCount",
                    "GeneralShapeUseCount.Rank",
                    "GeneralShapeUseCount.InverseRank"
                }
            ]
        ];
        
        pattern
    ]

(*!
    \function ARCAngleForTwoPoints
    
    \calltable
        ARCAngleForTwoPoints[point1, point2] '' Given two points, what angle do they form relative to the horizontal? Normalized to minimize the angle and make it positive. (direction agnostic)
    
    Examples:
    
    ARCAngleForTwoPoints[{5, 5}, {5, 6}] === 0
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCAngleForTwoPoints]
    
    \maintainer danielb
*)
Clear[ARCAngleForTwoPoints];
ARCAngleForTwoPoints[point1_, point2_] :=
    Utility`ToIntegerIfNoDecimal@
    Mod[
        ArcTan[
            point2[[2]] - point1[[2]],
            -(point2[[1]] - point1[[1]])
        ] * 180 / Pi + 360,
        180
    ]

(*!
    \function ARCConsiderMappingObjectsByColor
    
    \calltable
        ARCConsiderMappingObjectsByColor[inputObjects, outputObjects, output, mappingSoFar] '' If we don't yet have a 1-to-1 mapping, but it appears that color can be used to achieve a 1-to-1 mapping, then use color to do the mapping from input objects to output objects.
    
    Examples:
    
    ARCConsiderMappingObjectsByColor[inputObjects, outputObjects, output, mappingSoFar] === TODO
    
    \maintainer danielb
*)
Clear[ARCConsiderMappingObjectsByColor];
ARCConsiderMappingObjectsByColor[inputObjects_List, outputObjects_List, output_Association, mappingSoFar_Association] :=
    Module[{mappingByColor, colorMatch},
        
        (* If the number of input objects and output objects are the same, all objects are of
           a single color not shared by any other objects, where the input colors and output
           color lists are the same, but we haven't yet been able to find a simple 1-to-1
           mapping between input objects and output objects, then consider whether we could use
           color as the way to pair input and output objects. e.g. 746b3537 *)
        If [And[
                Length[inputObjects] === Length[outputObjects],
                With[{colors = DeleteDuplicates[inputObjects[[All, "Color"]]]},
                    And[
                        (* If these are multi-color objects that don't have a specific single color,
                           then don't use color to do the mapping. *)
                        FreeQ[colors, _Missing],
                        (* If there are multiple instances of any color, then don't use color to do
                           the mapping. *)
                        Length[inputObjects[[All, "Color"]]] === Length[colors]
                    ]
                ],
                Sort[inputObjects[[All, "Color"]]] === Sort[outputObjects[[All, "Color"]]],
                (* We haven't yet been able to find a 1-to-1 correspondence between the
                   objects. *)
                !MatchQ[
                    Normal[mappingSoFar],
                    {Repeated[HoldPattern[Rule][_Association, _Association]]}
                ]
            ],
            mappingByColor = <|
                Function[{object},
                    Replace[
                        ReturnIfFailure@
                        ARCFindObjectMapping[
                            object,
                            colorMatch = Select[outputObjects, #["Color"] === object["Color"] &],
                            inputObjects,
                            output
                        ],
                        Except[HoldPattern[Rule][_Association, _Association]] :> (
                            object -> First[colorMatch]
                        )
                    ]
                ] /@ inputObjects
            |>;
            
            If [FreeQ[mappingByColor, _Missing],
                Return[mappingByColor, Module]
            ];
        ];
        
        Missing["NotFound"]
    ]

(*!
    \function ARCRemoveEmptySpaceQ
    
    \calltable
        ARCRemoveEmptySpaceQ[rules, examples] '' Given a list of rules, checks whether they should have empty space removed from the output.
    
    Examples:
    
    ARCRemoveEmptySpaceQ[
        <|
            "FormMultiColorCompositeObjects" -> False,
            "Rules" -> {
                <||> -> <|
                    "Shape" -> <|"Name" -> "Pixel"|>,
                    "X" -> ObjectValue["InputObject", "X.InverseRank"],
                    "Y" -> ObjectValue["InputObject", "Y.InverseRank"]
                |>
            }
        |>,
        ARCParseFile["746b3537"]["Train"]
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRemoveEmptySpaceQ]
    
    \maintainer danielb
*)
Clear[ARCRemoveEmptySpaceQ];
ARCRemoveEmptySpaceQ[rules_Association, examples_List] :=
    ARCLogScope["ARCRemoveEmptySpaceQ"]@
    Module[{counts},
        
        counts = Counts[
            Function[{example},
                
                actualOutputScene =
                    ReturnIfFailure@
                    ARCApplyRules[example["Input", "Scene"], rules];
                
                expectedOutputScene = example["Output", "Scene"];
                
                If [actualOutputScene === expectedOutputScene,
                    (* This example was working even without removing extra space. *)
                    Nothing
                    ,
                    (* Did removing extra space make the example go from not working to now
                       working? *)
                    Replace[
                        ARCRemoveEmptySpace[actualOutputScene, example["Output", "Background"]] === expectedOutputScene,
                        (* After removing extra space, this example isn't working, so we should
                           abort and not indicate that empty space should be removed.
                           e.g. 5614dbcf *)
                        False :> Return[False, Module]
                    ]
                ]
                
            ] /@ examples
        ];
        
        (* Should we remove empty space if only _some_ of the examples match their
           expected outputs when empty space has been removed? For now, we'll remove
           empty space if at least 50% of examples appear to go from not working
           to working when extra space is removed. We use -1 as the default count value
           for True so that if all examples worked without removing extra space, we
           won't remove extra space. *)
        Lookup[counts, True, -1] >= Lookup[counts, False, 0]
    ]

(*!
    \function ARCRemoveEmptySpace
    
    \calltable
        ARCRemoveEmptySpace[scene, backgroundColor] '' Removes empty space to the right and/or below the objects.
    
    Examples:
    
    ARCRemoveEmptySpace[ARCScene[{{1, 0, 0}, {2, 0, 0}, {1, 0, 0}}], 0] === ARCScene[{{1}, {2}, {1}}]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRemoveEmptySpace]
    
    \maintainer danielb
*)
Clear[ARCRemoveEmptySpace];
Options[ARCRemoveEmptySpace] =
{
    "PruneLeftAndAbove" -> True     (*< Whether we shouldn't just prune to the right and below, but also to the left and above.*)
};
ARCRemoveEmptySpace[sceneIn_ARCScene, backgroundColor_, OptionsPattern[]] :=
    Module[
        {
            scene = sceneIn[[1]],
            width = ImageWidth[sceneIn],
            prunedWidth,
            height = ImageHeight[sceneIn],
            prunedHeight,
            prunedY = 1,
            prunedX = 1
        },
        
        prunedHeight = height;
        Block[{},
            Function[{y},
                If [MatchQ[scene[[y]], {Repeated[backgroundColor]}],
                    prunedHeight = y - 1
                    ,
                    Return[Null, Block]
                ]
            ] /@ Range[height, 1, -1]
        ];
        
        prunedWidth = width;
        Block[{},
            Function[{x},
                If [MatchQ[scene[[All, x]], {Repeated[backgroundColor]}],
                    prunedWidth = x - 1
                    ,
                    Return[Null, Block]
                ]
            ] /@ Range[width, 1, -1]
        ];
        
        If [TrueQ[OptionValue["PruneLeftAndAbove"]],
            Block[{},
                Function[{y},
                    If [MatchQ[scene[[y]], {Repeated[backgroundColor]}],
                        prunedY = y + 1
                        ,
                        Return[Null, Block]
                    ]
                ] /@ Range[1, height];
                prunedHeight -= prunedY
            ];
            
            Block[{},
                Function[{x},
                    If [MatchQ[scene[[All, x]], {Repeated[backgroundColor]}],
                        prunedX = x + 1
                        ,
                        Return[Null, Block]
                    ]
                ] /@ Range[1, width];
                prunedWidth -= prunedX
            ];
        ];
        
        If [prunedWidth <= 0 || prunedHeight <= 0,
            sceneIn
            ,
            ARCScene[
                scene[[
                    prunedY ;; prunedHeight,
                    prunedX ;; prunedWidth
                ]]
            ]
        ]
    ]

(*!
    \function ARCSupportedOcclusionObjectQ
    
    \calltable
        ARCSupportedOcclusionObjectQ[object] '' Returns True if this object shape is one we support wrt looking for occlusions.
    
    Examples:
    
    ARCSupportedOcclusionObjectQ[<|"Shape" -> <|"Name" -> "Square", "Filled" -> True|>|>]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSupportedOcclusionObjectQ]
    
    \maintainer danielb
*)
Clear[ARCSupportedOcclusionObjectQ];
ARCSupportedOcclusionObjectQ[object_Association] :=
    Or[
        ShapeQ[object, "Line" | "Pixel"],
        MatchQ[
            object["Shape"],
            KeyValuePattern[
                {"Name" -> "Rectangle" | "Square", "Filled" -> True}
            ]
        ]
    ]

(*!
    \function ARCResolveExample
    
    \calltable
        ARCResolveExample[exampleName] '' Given an example name, resolves it to a file name and example type, or a Failure if not found.
    
    \maintainer danielb
*)
Clear[ARCResolveExample];
ARCResolveExample[exampleName_String] :=
    Module[{},
        Function[{exampleTypeDetails},
            Replace[
                Replace[
                    SelectFirst[
                        exampleTypeDetails["Files"],
                        FileBaseName[#] === exampleName &
                    ],
                    _Missing :> SelectFirst[
                        exampleTypeDetails["Files"],
                        StringContainsQ[ToLowerCase[#], ToLowerCase[FileBaseName[exampleName]]] &
                    ]
                ],
                file_String :> Return[
                    <|
                        "File" -> file,
                        "ExampleType" -> exampleTypeDetails["ExampleType"]
                    |>,
                    Module
                ]
            ]
        ] /@ {
            <|
                "Files" -> ARCTrainingFiles[],
                "ExampleType" -> "TrainingExample"
            |>,
            <|
                "Files" -> ARCMyTrainingFiles[],
                "ExampleType" -> "PersonalTrainingExample"
            |>,
            <|
                "Files" -> ARCEvaluationFiles[],
                "ExampleType" -> "EvaluationExample"
            |>
        };
        
        ReturnFailure[
            "FileNotFound",
            "No matching training example was found.",
            "ExampleName" -> exampleName
        ]
    ]

(*!
    \function ARCSortNotableSubImages
    
    \calltable
        ARCSortNotableSubImages[notableSubImages] '' Sort notable sub-images so that higher priority ones (larger) are first.
    
    \maintainer danielb
*)
Clear[ARCSortNotableSubImages];
ARCSortNotableSubImages[notableSubImages_List] :=
    Module[{},
        Reverse@
        SortBy[
            notableSubImages,
            Function[ImageWidth[#["Image"]] * ImageHeight[#["Image"]]]
        ]
    ]

(*!
    \function ARCContiguousSubImageQ
    
    \calltable
        ARCContiguousSubImageQ[image, subImage, subImagePosition] '' Given a sub-image, checks whether there are any single-color contiguous connections from the sub-image to other pixels in the larger image.
    
    Examples:
    
    ARCContiguousSubImageQ[
        {{3, -1, -1, -1}, {3, -1, -1, -1}, {3, -1, -1, -1}, {3, 3, 3, 3}},
        {{3, -1}, {3, 3}},
        {3, 1}
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCContiguousSubImageQ]
    
    \maintainer danielb
*)
Clear[ARCContiguousSubImageQ];
ARCContiguousSubImageQ[image_List, subImage_List, subImagePosition_List] :=
    Module[{subImageColoredPixelPositions, posInImage, subImageColor},
        
        subImageColoredPixelPositions = Position[
            subImage,
            Except[$nonImageColor],
            {2},
            Heads -> False
        ];
        
        Function[{subImageColoredPixelPosition},
            posInImage = subImageColoredPixelPosition + subImagePosition - {1, 1};
            subImageColor = ARCPixelColor[subImage, subImageColoredPixelPosition];
            Function[{contiguousPosition},
                If [And[
                        (* In the sub-image, this adjacent pixel isn't of the same color. *)
                        !SameQ[
                            ARCPixelColor[subImage, subImageColoredPixelPosition + contiguousPosition],
                            subImageColor
                        ],
                        (* But in the larger image, it _is_ of the same color, which means
                           that we've found a contiguous connection from the sub-image back
                           into the larger image. *)
                        SameQ[
                            ARCPixelColor[image, posInImage + contiguousPosition],
                            subImageColor
                        ]
                    ],
                    Return[True, Module]
                ]
            ] /@ {
                {1, 0},
                {-1, 0},
                {0, 1},
                {0, -1}
            }
        ] /@ subImageColoredPixelPositions;
        
        False
    ]

(*!
    \function ARCPixelColor
    
    \calltable
        ARCPixelColor[image, position] '' Given the color of the pixel at the given position, or Missing if out of bounds.
    
    Examples:
    
    ARCPixelColor[{{1, 2}, {3, 4}}, {1, 1}] === 1
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCPixelColor]
    
    \maintainer danielb
*)
Clear[ARCPixelColor];
ARCPixelColor[image_List, position_List] :=
    Module[{},
        If [Or[
                position[[1]] <= 0 || position[[1]] > ImageHeight[image],
                position[[2]] <= 0 || position[[2]] > ImageWidth[image]
            ],
            Missing["OutOfBounds"]
            ,
            image[[Sequence @@ position]]
        ]
    ]

(*!
    \function ARCFormExceptRules
    
    \calltable
        ARCFormExceptRules[rules, objects] '' Given some rules, look for cases where a rule has an Alternatives for a property that could be turned into an Except.
    
    Examples:
    
    ARCFormExceptRules[
        {
            <|"FilledArea.Rank" -> 1|> -> <|
                "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 1, "X" -> 1|>|>
            |>,
            <|"FilledArea.Rank" -> 3 | 2|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>
        },
        {<|"FilledArea.Rank" -> 1|>, <|"FilledArea.Rank" -> 2|>, <|"FilledArea.Rank" -> 3|>}
    ]
    
    ===
    
    {
        <|"FilledArea.Rank" -> 1|> -> <|
            "Transform" -> <|"Type" -> "Move", "Position" -> <|"Y" -> 1, "X" -> 1|>|>
        |>,
        <|"FilledArea.Rank" -> Except[1]|> -> <|"Transform" -> <|"Type" -> "Delete"|>|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFormExceptRules]
    
    \maintainer danielb
*)
Clear[ARCFormExceptRules];
ARCFormExceptRules[rulesIn_List, objects_List] :=
    Module[
        {
            rules,
            rule1,
            rule2,
            property,
            propertiesUsedInRuleConditions,
            conditionValuesUsingAlternatives,
            conditionValuesNotUsingAlternatives,
            allValuesUsedInObjects,
            allValuesUsedInConditions,
            allValuesUsedInConditionsUsingAlternatives
        },
        
        rules = Cases[rulesIn, _Rule];
        
        (* While working on d2abd087, we introduced calling ARCFormExceptRules from deeper within
           ARCFindRules. But it wasn't forming an except rule since it doesn't support gaps in
           alternatives. For now we'll handle this case here as a band-aid, but potentially we
           should more holistically enhance the function to allow cases like this. *)
        If [And[
                Length[rules] === 2,
                (* The rule for a particular value of the property. *)
                !MissingQ[rule1 = SelectFirst[rules, MatchQ[#[[1]], Association[_ -> Except[_Alternatives | _Except]]] &]],
                (* The rule that has an Alternatives of several other values of this property. *)
                !MissingQ[rule2 = SelectFirst[rules, MatchQ[#[[1]], Association[_ -> HoldPattern[Alternatives][_, _, _, ___]]] &]],
                Keys[rule1[[1]]] === Keys[rule2[[1]]]
            ],
            property = First[Keys[rule1[[1]]]];
            (* Form an Except rule. *)
            Return[
                {
                    rule1,
                    rule2[[1, property]] = Except[rule1[[1, property]]];
                    rule2
                },
                Module
            ]
        ];
        
        propertiesUsedInRuleConditions =
            DeleteDuplicates[Flatten[Keys /@ rules[[All, 1]]]];
        
        replacements =
            Function[{property},
                
                (* TODO: Support other types like Color (etc). *)
                If [$properties[property, "Type"] === "Integer",
                    
                    conditionsValuesForProperty = Cases[
                        rules,
                        HoldPattern[Rule][KeyValuePattern[property -> value_], _] :> (
                            value
                        )
                    ];
                    
                    (* The values of conditions involving this property which make use of
                       Alternatives. *)
                    conditionValuesUsingAlternatives = Cases[
                        conditionsValuesForProperty,
                        _Alternatives | HoldPattern[Except][_Alternatives]
                    ];
                    
                    (* The values of conditions involving this property which do _not_ make use
                       of Alternatives. *)
                    conditionValuesNotUsingAlternatives = Complement[
                        conditionsValuesForProperty,
                        conditionValuesUsingAlternatives
                    ];
                    
                    Which[
                        And[
                            MatchQ[conditionValuesUsingAlternatives, {_Alternatives}],
                            conditionValuesNotUsingAlternatives =!= {}
                        ],
                            
                            allValuesUsedInObjects =
                                DeleteDuplicates[objects[[All, property]]];
                            
                            allValuesUsedInConditionsUsingAlternatives =
                                DeleteDuplicates@
                                Flatten[
                                    List @@@ conditionValuesUsingAlternatives
                                ];
                            
                            allValuesUsedInConditions =
                                DeleteDuplicates@
                                Join[
                                    allValuesUsedInConditionsUsingAlternatives,
                                    conditionValuesNotUsingAlternatives
                                ];
                            
                            If [And[
                                    (* The values used by rule conditions cover all values for this
                                       property seen in objects. *)
                                    Complement[allValuesUsedInObjects, allValuesUsedInConditions] === {},
                                    (* The alternatives cover a contiguous range of integers. *)
                                    SameQ[
                                        Sort[DeleteMissing[allValuesUsedInConditionsUsingAlternatives]],
                                        Range[
                                            Min[DeleteMissing[allValuesUsedInConditionsUsingAlternatives]],
                                            Max[DeleteMissing[allValuesUsedInConditionsUsingAlternatives]]
                                        ]
                                    ]
                                ],
                                (* Replacement rule. *)
                                Rule[
                                    property -> Verbatim[conditionValuesUsingAlternatives[[1]]],
                                    property -> Except[
                                        Replace[
                                            conditionValuesNotUsingAlternatives,
                                            {
                                                {_} :> conditionValuesNotUsingAlternatives[[1]],
                                                {__} :> Alternatives @@ conditionValuesNotUsingAlternatives
                                            }
                                        ]
                                    ]
                                ]
                                ,
                                Nothing
                            ],
                        True,
                            Nothing
                    ],
                    Nothing
                ]
                
            ] /@ propertiesUsedInRuleConditions;
        
        (* Apply the replacements to the rules. *)
        If [MatchQ[replacements, {_, ___}],
            Replace[
                rulesIn,
                HoldPattern[Rule][pattern_Association, conclusion_] :> (
                    Rule[
                        Association@
                        Replace[
                            Normal[pattern],
                            replacements,
                            {1}
                        ],
                        conclusion
                    ]
                ),
                {1}
            ]
            ,
            rulesIn
        ]
    ]

(*!
    \function ARCObjectFromAllPixels
    
    \calltable
        ARCObjectFromAllPixels[scene, background] '' Forms a single object from all non-background-color pixels, even if parts are non-contiguous.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCObjectFromAllPixels]
    
    \maintainer danielb
*)
Clear[ARCObjectFromAllPixels];
Options[ARCObjectFromAllPixels] =
{
    "Position" -> {1, 1}        (*< The position of the object in the scene. *)
};
ARCObjectFromAllPixels[scene_ARCScene, background_, OptionsPattern[]] :=
    Module[
        {
            position = OptionValue["Position"],
            colors,
            pixelPositions,
            image = Replace[
                scene[[1]],
                background -> $nonImageColor,
                {2}
            ]
        },
        
        colors = ARCImageColors[image];
        
        pixelPositions = Position[image, Except[$nonImageColor], {2}, Heads -> False];
        
        If [position =!= {1, 1},
            pixelPositions = (# + position - {1, 1}) & /@ pixelPositions;
        ];
        
        ARCInferObjectProperties[
            <|
                "UUID" -> CreateUUID[],
                "Image" -> ARCScene[image],
                "PixelPositions" -> pixelPositions,
                ARCInferShapeAndShapes[image, colors],
                "Colors" -> colors,
                InferColor["Color" -> <|"Colors" -> colors|>],
                "Position" -> position
            |>,
            ImageWidth[image],
            ImageHeight[image]
        ]
    ]

(*!
    \function ARCObjectImageShape
    
    \calltable
        ARCObjectImageShape[object] '' Given an object, returns the image that should be used as its "shape" for looking for rotations, etc. Single colored image use a monochrome shape image, while multi - color images use a multi - color shape image.
    
    Examples:
    
    ARCObjectImageShape[<|"Colors" -> {1}, "Shapes" -> {<|"Image" -> "HERE"|>}|>]
    
    ===
    
    "HERE"
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCObjectImageShape]
    
    \maintainer danielb
*)
Clear[ARCObjectImageShape];
ARCObjectImageShape[object_Association] :=
    If [MatchQ[object["Colors"], {_, __}],
        object["Image"]
        ,
        SelectFirst[
            object["Shapes"],
            MatchQ[#, Association["Image" -> _]] &
        ]["Image"]
    ]

ARCObjectImageShape[image_ARCScene, colors : _List | Automatic : Automatic, monochrome : _ARCScene | Automatic : Automatic] :=
    If [Length[
            Replace[
                colors,
                Automatic -> ARCImageColors[image]
            ]
        ] === 1,
        Replace[
            monochrome,
            Automatic -> ARCToMonochrome[image, $nonImageColor]
        ]
        ,
        image
    ]

(*!
    \function ARCRemoveExtendedMetadataFromConclusion
    
    \calltable
        ARCRemoveExtendedMetadataFromConclusion[conclusion] '' Given a rule conclusion, removes the extended metadata key/values, such as ExampleCount, InputObjects, etc.
    
    Examples:
    
    ARCRemoveExtendedMetadataFromConclusion[<|"a" -> 1, "Examples" -> 2|>] === <|"a" -> 1|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRemoveExtendedMetadataFromConclusion]
    
    \maintainer danielb
*)
Clear[ARCRemoveExtendedMetadataFromConclusion];
ARCRemoveExtendedMetadataFromConclusion[conclusion_Association] :=
    Replace[
        conclusion,
        assoc: KeyValuePattern["ExampleCount" -> _] :> (
            KeyDrop[
                assoc,
                {
                    "Examples",
                    "ExampleCount",
                    "UseCount",
                    "InputObjects",
                    "RotationNormalization"
                }
            ]
        ),
        {0, Infinity}
    ]

(*!
    \function ARCHollowCount
    
    \calltable
        ARCHollowCount[image] '' Given an image, returns an integer to specify how many internal "hollows" there are of the background color.
    
    Examples:
    
    ARCHollowCount[{{1, 1, 1}, {1, -1, 1}, {1, 1, 1}}] === 1
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCHollowCount]
    
    \maintainer danielb
*)
Clear[ARCHollowCount];
ARCHollowCount[image_List] :=
    Module[{paddedImage, width = ImageWidth[image], height = ImageHeight[image]},
        
        (* Pad the image with a border that is the same color as the background color
           which will form a predictable component to show us all of the background
           color pixels that aren't internal. *)
        paddedImage = Join[
            {Table[-1, {width + 2}]},
            Function[{row},
                {-1, Sequence @@ row, -1}
            ] /@ image,
            {Table[-1, {width + 2}]}
        ];
        
        (* Change background color pixels to white since otherwise they won't be
           seen as image regions below. *)
        paddedImage = Replace[paddedImage, -1 -> 10, {2}];
        
        Length@
        Select[
            ARCContiguousImageRegions[
                paddedImage,
                "Background" -> 999
            ][[1]],
            And[
                (* Remove the object that formed for the padding we added. *)
                #["Position"] =!= {1, 1},
                #["Color"] === 10
            ] &
        ]
    ]

(*!
    \function ARCUpdateReadme
    
    \calltable
        ARCUpdateReadme[] '' Updates the README.md file with the list of implemented tasks, etc.
    
    \maintainer danielb
*)
Clear[ARCUpdateReadme];
ARCUpdateReadme[] :=
    Module[{},
        StringReplaceInFiles[
            "## Percentage of Tasks Passing" ~~ ___ -> ReturnIfFailure[ARCImplementedTasksMarkdown[]],
            {FileNameJoin[{FileNameDrop[FindFile["ARC`"], -1], "README.md"}]}
        ];
    ]

(*!
    \function ARCImageScalings
    
    \calltable
        ARCImageScalings[image] '' Given an image, produces variations that have been scaled.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCImageScalings]
    
    \maintainer danielb
*)
Clear[ARCImageScalings];
Options[ARCImageScalings] =
{
    "IncludeNoopTransforms" -> False        (*< Should we include image transforms that result in the image not changing? e.g. A horizontal flip for an image that has vertical line symmetry. *)
};
ARCImageScalings[image_List, OptionsPattern[]] :=
    Module[{scaledImage, width = ImageWidth[image], height = ImageHeight[image]},
        Function[{factor},
            scaledImage = Null;
            If [Or[
                    factor >= 1,
                    And[
                        factor < 1,
                        width * factor >= 1,
                        height * factor >= 1,
                        IntegerQ[Utility`ToIntegerIfNoDecimal[width * factor]],
                        IntegerQ[Utility`ToIntegerIfNoDecimal[height * factor]],
                        (* Can be down-scaled exactly, since we can restore it to it's original
                           form by up-scaling again. *)
                        ARCScaleImage[scaledImage = ARCScaleImage[image, factor], 1 / factor] === image
                    ]
                ],
                If [scaledImage === Null,
                    scaledImage = ARCScaleImage[image, factor]
                ];
                <|
                    "Image" -> ARCScene[scaledImage],
                    "Transform" -> <|
                        "Type" -> "Scaled",
                        "Factor" -> N[1 / factor]
                    |>
                |>
                ,
                Nothing
            ]
        ] /@ {
            0.16666666666666666666667,
            0.2,
            0.25,
            0.33333333333333333333333,
            0.5,
            If [TrueQ[OptionValue["IncludeNoopTransforms"]],
                1
                ,
                Nothing
            ],
            2,
            3,
            If [width <= 3 && height <= 3,
                (* b91ae062 *)
                4
                ,
                Nothing
            ],
            If [width <= 3 && height <= 3,
                (* AC0A08A4 *)
                5
                ,
                Nothing
            ]
        }
    ]

(*!
    \function ARCScaleImage
    
    \calltable
        ARCScaleImage[image, factor] '' Scales the given image by the given factor.
    
    Examples:
    
    ARCScene[ARCScaleImage[{{1, -1, 1}, {-1, 1, -1}, {-1, -1, 1}}, 2]]
    
    ===
    
    ARCScene[
        {
            {1, 1, -1, -1, 1, 1},
            {1, 1, -1, -1, 1, 1},
            {-1, -1, 1, 1, -1, -1},
            {-1, -1, 1, 1, -1, -1},
            {-1, -1, -1, -1, 1, 1},
            {-1, -1, -1, -1, 1, 1}
        }
    ]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCScaleImage]
    
    \maintainer danielb
*)
Clear[ARCScaleImage];
ARCScaleImage[image_List, factor_] :=
    Module[{},
        IntegerPart[
            ImageData[
                ImageResize[
                    Image[image],
                    ImageWidth[image] * factor
                ]
            ]
        ]
    ]

ARCScaleImage[ARCScene[image_], factor_] :=
    ARCScene[ARCScaleImage[image, factor]]

(*!
    \function ARCListMultiplier
    
    \calltable
        ARCListMultiplier[list1, list2] '' If list2 is multiplicative factor of list1, that factor is returned, otherwise Missing is returned.
    
    Examples:
    
    ARCListMultiplier[{1, 2, 3}, {2, 4, 6}] === 2
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCListMultiplier]
    
    \maintainer danielb
*)
Clear[ARCListMultiplier];
ARCListMultiplier[list1_List, list2_List] :=
    Module[{factors},
        
        factors = N[list2 / list1];
        
        factors = DeleteDuplicates[factors];
        
        If [MatchQ[factors, {_Integer | _Real}],
            ToIntegerIfNoDecimal[factors[[1]]]
            ,
            Missing["None"]
        ]
    ]

(*!
    \function ARCGeneralizeValue
    
    \calltable
        ARCGeneralizeValue[inputValues, outputValues, inputValueReference] '' Given some input values and their corresponding output values, tries to produce an expression to specify the output values, potentially as an expression that references the input value.
    
    Examples:
    
    ARCGeneralizeValue[{1, 2, 3}, {2, 4, 6}, ObjectValue["InputScene", "MyValue"]]
    
    ===
    
    Inactive[ObjectValue["InputScene", "MyValue"]*2]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGeneralizeValue]
    
    \maintainer danielb
*)
Clear[ARCGeneralizeValue];
Options[ARCGeneralizeValue] =
{
    "OnlyIfLarger" -> False     (*< Only produce an expression if the output values are larger than the input values. *)
};
ARCGeneralizeValue[inputValues_List, outputValues_List, inputValueReference_, OptionsPattern[]] :=
    Module[{multiplier, uniqueValues, largerQ = False},
        
        multiplier = ARCListMultiplier[
            inputValues,
            outputValues
        ];
        
        uniqueValues = DeleteDuplicates[outputValues];
        
        Which[
            SpecifiedQ[multiplier] && multiplier > 1,
                largerQ = True,
            MatchQ[uniqueValues, {Except[_Missing]}] && uniqueValues[[1]] > inputValues[[1]],
                largerQ = True
        ];
        
        Which[
            multiplier === 1,
                Missing[],
            And[
                SpecifiedQ[multiplier],
                Or[
                    !TrueQ[OptionValue["OnlyIfLarger"]],
                    largerQ
                ]
            ],
                With[{multiplier = multiplier},
                    Inactive[inputValueReference * multiplier]
                ],
            And[
                MatchQ[uniqueValues, {Except[_Missing]}],
                Or[
                    !TrueQ[OptionValue["OnlyIfLarger"]],
                    largerQ
                ]
            ],
                uniqueValues[[1]],
            True,
                Missing[]
        ]
    ]

(*!
    \function ARCDropObjectProperties
    
    \calltable
        ARCDropObjectProperties[examples, properties] '' Given a list of examples, modifies nested objects to drop the given properties.
    
    Examples:
    
    ARCDropObjectProperties[
        {<|"Input" -> <|"Objects" -> {<|"X" -> 1, "XInverse" -> 2|>}|>|>},
        {"XInverse"}
    ]
    
    ===
    
    {<|"Input" -> <|"Objects" -> {<|"X" -> 1|>}|>|>}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCDropObjectProperties]
    
    \maintainer danielb
*)
Clear[ARCDropObjectProperties];
ARCDropObjectProperties[examples_List, properties_List] :=
    Replace[
        examples,
        thisScene: KeyValuePattern["Objects" -> _List] :> (
            Sett[
                thisScene,
                "Objects" -> Function[{object},
                    KeyDrop[
                        object,
                        properties
                    ]
                ] /@ thisScene["Objects"]
            ]
        ),
        {0, Infinity}
    ]

(*!
    \function ARCFixUnwantedManyToOneMappings
    
    \calltable
        ARCFixUnwantedManyToOneMappings[mapping] '' Are there any many-to-one mappings that we want to fix due to one of the objects being an exact image match and one or more not being an exact match?
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFixUnwantedManyToOneMappings]
    
    \maintainer danielb
*)
Clear[ARCFixUnwantedManyToOneMappings];
ARCFixUnwantedManyToOneMappings[mapping_Association] :=
    Module[{uniqueInputObjectImages},
        
        XARCEcho2[mapping];
        
        uniqueInputObjectImages =
            Select[
                Normal[Counts[Keys[mapping][[All, "Image"]]]],
                #[[2]] === 1 &
            ][[All, 1]];
        
        outputObjectMappingCounts =
            Counts[
                Cases[Values[mapping], KeyValuePattern["UUID" -> _]][[All, "UUID"]]
            ];
        
        If [uniqueInputObjectImages =!= {},
            Association@
            KeyValueMap[
                Function[{inputObject, outputObject},
                    If [And[
                            outputObjectMappingCounts[outputObject["UUID"]] > 1,
                            MemberQ[uniqueInputObjectImages, outputObject["Image"]],
                            inputObject["Image"] =!= outputObject["Image"]
                        ],
                        (* We've found an input object that was mapped to the same output object
                           as another input object, but this mapping doesn't have the same image
                           in the input and output, whereas the other mapping does, and that image
                           is unique in the set of input objects, so we'll favor the other mapping
                           and discard this one. e.g. a87f7484 *)
                        inputObject -> Missing["NotFound"]
                        ,
                        inputObject -> outputObject
                    ]
                ],
                mapping
            ]
            ,
            mapping
        ]
    ]

(*!
    \function ARCDenoise
    
    \calltable
        ARCDenoise[image, noiseObjects] '' Tries to remove the noise objects.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCDenoise]
    
    \maintainer danielb
*)
Clear[ARCDenoise];
ARCDenoise[imageIn_List, noiseObjects_List] :=
    Module[{image = imageIn},
        
        Function[{noiseObject},
            image = ARCDenoise[
                image,
                noiseObject
            ]
        ] /@ noiseObjects;
        
        image
    ]

ARCDenoise[imageIn_List, noiseObject_Association] :=
    Module[{image = imageIn},
        
        surroundingPixelColors =
            Counts@
            DeleteMissing@
            Values[ARCSurroundingPixels[noiseObject, image]];
        
        maxColorCount = Max[surroundingPixelColors];
        
        mostCommonColors = Select[
            surroundingPixelColors,
            # === maxColorCount &
        ];
        
        (* For now we'll assume the noise object is a pixel, and we won't have
           any special handling for the case where there are multiple colors
           with the same count. *)
        With[{color = First[Keys[mostCommonColors]]},
            image[[
                noiseObject["Y"],
                noiseObject["X"]
            ]] = color
        ];
        
        image
    ]

ARCDenoise[image_ARCScene, noiseObjects_List] :=
    Module[{},
        ARCScene@
        ReturnIfFailure@
        ARCDenoise[
            image[[1]],
            noiseObjects
        ]
    ]

ARCDenoise[image_ARCScene] :=
    Module[{parsedScene},
        
        parsedScene =
            ReturnIfFailure@
            ARCParseScene[image, "FormMultiColorCompositeObjects" -> False];
        
        noiseObjects = ARCNoiseObjects[parsedScene["Objects"]];
        
        If [noiseObjects =!= {},
            <|
                "Denoised" -> True,
                "Image" -> ARCDenoise[image, noiseObjects]
            |>
            ,
            <|
                "Denoised" -> False,
                "Image" -> image
            |>
        ]
    ]

ARCDenoise[examples_List] :=
    Module[{denoisedQ = False, denoiseResult},
        <|
            "Examples" ->
                Function[{example},
                    denoiseResult = ReturnIfFailure[ARCDenoise[example["Input"]]];
                    If [TrueQ[denoiseResult["Denoised"]],
                        denoisedQ = True;
                        Sett[example, "Input" -> denoiseResult["Image"]]
                        ,
                        example
                    ]
                ] /@ examples,
            "Denoised" -> denoisedQ
        |>
    ]

(*!
    \function ARCSurroundingPixels
    
    \calltable
        ARCSurroundingPixels[object, image] '' Given an object, returns the colors of surrounding pixels.
    
    Treats the object as a rectangle, regardless of whether its edge pixels are filled in or not.
    
    Examples:
    
    ARCSurroundingPixels[
        <|"X" -> 2, "Y" -> 2, "X2" -> 2, "Y2" -> 2|>,
        {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}
    ]
    
    ===
    
    {1, 2, 3, 4, 6, 7, 8, 9}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSurroundingPixels]
    
    \maintainer danielb
*)
Clear[ARCSurroundingPixels];
ARCSurroundingPixels[object_Association, image_] :=
    ARCSurroundingPixels[
        object["Y"],
        object["X"],
        object["Y2"],
        object["X2"],
        image
    ]

ARCSurroundingPixels[objectY_, objectX_, objectY2_, objectX2_, image_] :=
    Module[{pixelLocations, y},
        
        pixelLocations = Join[
            (* Top *)
            y = objectY - 1;
            Function[{x},
                {y, x}
            ] /@ Range[objectX - 1, objectX2 + 1]
            ,
            {
                (* Left *)
                {objectY, objectX - 1},
                (* Right *)
                {objectY, objectX2 + 1}
            }
            ,
            (* Bottom *)
            y = objectY2 + 1;
            Function[{x},
                {y, x}
            ] /@ Range[objectX - 1, objectX2 + 1]
        ];
        
        Association[
            Function[{pixelLocation},
                pixelLocation -> ARCPixelColor[image, pixelLocation]
            ] /@ pixelLocations
        ]
    ]

(*!
    \function ARCNoiseObjects
    
    \calltable
        ARCNoiseObjects[objects] '' Returns the objects which might be noise.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCNoiseObjects]
    
    \maintainer danielb
*)
Clear[ARCNoiseObjects];
ARCNoiseObjects[objects_List] :=
    Module[{pixels},
        
        pixels = Select[
            objects,
            ShapeQ[#, "Pixel"] &
        ];
        
        If [And[
                (* TODO: If all pixels in all input scenes are this color, and other
                         scenes have >= 4, then we shouldn't require every input scene
                         to have >= 4. *)
                Length[pixels] >= 4,
                (* The pixels are all the same color. *)
                MatchQ[DeleteDuplicates[pixels[[All, "Color"]]], {_}]
            ],
            pixels
            ,
            {}
        ]
    ]

(*!
    \function ARCImageColors
    
    \calltable
        ARCImageColors[image] '' Given an image, returns its list of colors.
    
    Doesn't include $nonImageColor.
    
    Examples:
    
    ARCImageColors[{{1, 2, 0}, {0, 0, 3}}] === {0, 1, 2, 3}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCImageColors]
    
    \maintainer danielb
*)
Clear[ARCImageColors];
ARCImageColors[image_] :=
    Sort@
    DeleteCases[
        DeleteDuplicates[Flatten[Replace[image, _ARCScene :> image[[1]]]]],
        $nonImageColor
    ]

(*!
    \function ARCRulesForOutput
    
    \calltable
        ARCRulesForOutput[rules] '' Given a rules association, prepares it for final output.
    
    Examples:
    
    ARCRulesForOutput[rules] === TODO
    
    \maintainer danielb
*)
Clear[ARCRulesForOutput];
ARCRulesForOutput[rules_Association] :=
    KeyTake[
        rules,
        {
            "SubdivideInput",
            "Subdivision",
            "Denoise",
            "SceneAsSingleObject",
            "FormMultiColorCompositeObjects",
            "FollowDiagonals",
            "CheckForGridsAndDividers",
            "RemoveEmptySpace",
            "Background",
            "OutputBackground",
            "Width",
            "Height",
            "Rules",
            "Groups",
            "PartialRules"
        }
    ]

(*!
    \function ARCSurfacePixelCount
    
    \calltable
        ARCSurfacePixelCount[image] '' Given an image, returns the number of pixels that make up its outer boundary.
    
    Examples:
    
    ARCSurfacePixelCount[{{-1, 1, -1}, {1, -1, 1}, {-1, 1, -1}}] === 4
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSurfacePixelCount]
    
    \maintainer danielb
*)
Clear[ARCSurfacePixelCount];
ARCSurfacePixelCount[image_List] :=
    Module[{width = ImageWidth[image], height = ImageHeight[image]},
        
        Length@
        DeleteDuplicates@
        Flatten[
            Join[
                (* Scan vertically. *)
                Function[{x},
                    Function[{direction},
                        Block[{},
                            Function[{y},
                                If [image[[y, x]] =!= $nonImageColor,
                                    Return[{y, x}, Block]
                                ]
                            ] /@
                                If [direction === 1,
                                    Range[height, 1, -1]
                                    ,
                                    Range[1, height]
                                ];
                            Nothing
                        ]
                    ] /@ {1, -1}
                ] /@ Range[1, width]
                ,
                (* Scan horizontally. *)
                Function[{y},
                    Function[{direction},
                        Block[{},
                            Function[{x},
                                If [image[[y, x]] =!= $nonImageColor,
                                    Return[{y, x}, Block]
                                ]
                            ] /@
                                If [direction === 1,
                                    Range[width, 1, -1]
                                    ,
                                    Range[1, width]
                                ];
                            Nothing
                        ]
                    ] /@ {1, -1}
                ] /@ Range[1, height]
            ],
            1
        ]
    ]

(*!
    \function ARCMXPut
    
    \calltable
        ARCMXPut[] '' Writes an MX file to disk that can be used to initialize ARC.
    
    \maintainer danielb
*)
Clear[ARCMXPut];
ARCMXPut[] :=
    Module[{contexts},
        
        contexts = {
            "Daniel`ARC`",
            "Daniel`",
            "Utility`",
            "DevTools`",
            "EntityLink`"
        };
        
        $mxContextPath = $ContextPath;
        
        With[{contexts = contexts},
            DumpSave[
                ARCMXFile[],
                contexts
            ]
        ]
    ]

(*!
    \function ARCMXFile
    
    \calltable
        ARCMXFile[] '' The ARC MX file path.
    
    \maintainer danielb
*)
Clear[ARCMXFile];
ARCMXFile[] :=
    FileNameJoin[
        {
            $TemporaryDirectory,
            "ARC.mx"
        }
    ]

(*!
    \function ARCMXGet
    
    \calltable
        ARCMXGet[] '' Loads the ARC MX file.
    
    \maintainer danielb
*)
Clear[ARCMXGet];
ARCMXGet[] :=
    Module[{},
        
        ReturnIfFailure@
        Get[ARCMXFile[]];
        
        $ContextPath = $mxContextPath;
    ]

(*!
    \function ARCSortRules
    
    \calltable
        ARCSortRules[rules] '' Given a list of rules, tries to sort them in a nice way.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSortRules]
    
    \maintainer danielb
*)
Clear[ARCSortRules];
ARCSortRules[rules_List] :=
    Module[{pattern},
        SortBy[
            rules,
            ARCSortRuleScore
        ]
    ]

(*!
    \function ARCSortRuleScore
    
    \calltable
        ARCSortRuleScore[rule] '' Given a rule, returns a list of integers used to sort rules.
    
    Examples:
    
    ARCSortRuleScore[rule] === TODO
    
    \maintainer danielb
*)
Clear[ARCSortRuleScore];
ARCSortRuleScore[rule_] :=
    Module[{firstCondition},
        {
            Replace[rule, {_Rule -> 0, _ :> 1}],
            If [MatchQ[rule, _Rule],
                pattern = Normal[rule][[1]];
                If [pattern === {},
                    Sequence @@ {1, -1}
                    ,
                    firstCondition = pattern[[1]];
                    Sequence @@ {
                        2,
                        firstCondition[[1]],
                        Replace[
                            firstCondition[[2]],
                            {
                                _Except -> {999},
                                True -> 1,
                                False -> 2
                            }
                        ]
                    }
                ]
                ,
                Sequence @@ {-1, -1}
            ]
        }
    ]

(*!
    \function ARCSubdivideImage
    
    \calltable
        ARCSubdivideImage[image, rows, columns] '' Subdivides an image into a grid of sub-images.
    
    Examples:
    
    ARCSubdivideImage[
        ARCParseFile["8be77c9e"][[1, "Train", 1, "Output"]],
        2,
        1
    ]
    
    ===
    
    {
        {ARCScene[{{1, 1, 0}, {1, 1, 1}, {0, 0, 0}}]},
        {ARCScene[{{0, 0, 0}, {1, 1, 1}, {1, 1, 0}}]}
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSubdivideImage]
    
    \maintainer danielb
*)
Clear[ARCSubdivideImage];
Options[ARCSubdivideImage] =
{
    "ReturnObjects" -> False,       (*< By default we return a grid of sub-images. If this option is true, we turn them into objects. *)
    "Background" -> Missing[]       (*< The background color of the scene. Only required if "ReturnObjects" is True. *)
};
ARCSubdivideImage[ARCScene[image_], rows_Integer, columns_Integer, OptionsPattern[]] :=
    Module[{subImageWidth, subImageHeight, res, subImage},
        
        subImageWidth = ImageWidth[image] / columns;
        subImageHeight = ImageHeight[image] / rows;
        
        res = Function[{row},
            Function[{column},
                
                subImage = ARCScene[
                    image[[
                        Span[
                            (row - 1) * subImageHeight + 1,
                            row * subImageHeight
                        ],
                        Span[
                            (column - 1) * subImageWidth + 1,
                            column * subImageWidth
                        ]
                    ]]
                ];
                
                If [TrueQ[OptionValue["ReturnObjects"]],
                    ARCObjectFromAllPixels[
                        subImage,
                        OptionValue["Background"],
                        "Position" -> {
                            (row - 1) * subImageHeight + 1,
                            (column - 1) * subImageWidth + 1
                        }
                    ]
                    ,
                    subImage
                ]
                
            ] /@ Range[columns]
        ] /@ Range[rows];
        
        If [TrueQ[OptionValue["ReturnObjects"]],
            Flatten[res]
            ,
            res
        ]
    ]

(*!
    \function ARCImageFlips
    
    \calltable
        ARCImageFlips[image] '' Given an image, produces a list of flipped versions.
    
    Examples:
    
    ARCImageFlips[{{1, -1, 1}, {-1, 1, -1}, {-1, -1, 1}}]
    
    ===
    
    {
        <|
            "Image" -> ARCScene[{{-1, -1, 1}, {-1, 1, -1}, {1, -1, 1}}],
            "Direction" -> "Vertical"
        |>,
        <|
            "Image" -> ARCScene[{{1, -1, 1}, {-1, 1, -1}, {1, -1, -1}}],
            "Direction" -> "Horizontal"
        |>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCImageFlips]
    
    \maintainer danielb
*)
Clear[ARCImageFlips];
Options[ARCImageFlips] =
{
    "IncludeNoopTransforms" -> False        (*< Should we include image transforms that result in the image not changing? e.g. A horizontal flip for an image that has vertical line symmetry. *)
};
ARCImageFlips[imageIn_List, OptionsPattern[]] :=
    Module[{image},
        Function[{direction},
            image = ARCFlipImage[imageIn, direction];
            If [Or[
                    TrueQ[OptionValue["IncludeNoopTransforms"]],
                    image =!= imageIn
                ],
                <|
                    "Image" -> ARCScene[image],
                    "Transform" -> <|"Type" -> "Flip", "Direction" -> direction|>
                |>
                ,
                Nothing
            ]
        ] /@ {"Vertical", "Horizontal"}
    ]

(*!
    \function ARCFlipImage
    
    \calltable
        ARCFlipImage[image, direction] '' Flips an image in the given direction.
    
    Examples:
    
    ARCFlipImage[{{1, 0}, {0, 1}}, "Vertical"] === {{0, 1}, {1, 0}}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFlipImage]
    
    \maintainer danielb
*)
Clear[ARCFlipImage];
ARCFlipImage[image_List, "Vertical"] :=
    Reverse[image]

ARCFlipImage[image_List, "Horizontal"] :=
    Map[Reverse, image]

ARCFlipImage[ARCScene[image_List], direction_] :=
    ARCScene[ARCFlipImage[image, direction]]

(*!
    \function ARCCombineGridOfImages
    
    \calltable
        ARCCombineGridOfImages[gridOfImages] '' Given a grid of images, combines them into a single image.
    
    Examples:
    
    ARCCombineGridOfImages[
        {{{{1, 2}, {3, 4}}, {{5, 6}, {7, 8}}}, {{{9, 10}, {11, 12}}, {{13, 14}, {15, 16}}}}
    ]
    
    ===
    
    {{1, 2, 5, 6}, {3, 4, 7, 8}, {9, 10, 13, 14}, {11, 12, 15, 16}}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCombineGridOfImages]
    
    \maintainer danielb
*)
Clear[ARCCombineGridOfImages];
Options[ARCCombineGridOfImages] =
{
    "GridColor" -> None     (*< The color of the grid. *)
};
ARCCombineGridOfImages[gridOfImages_List, OptionsPattern[]] :=
    Module[
        {
            rowCount = Length[gridOfImages],
            columnCount = Length[gridOfImages[[1]]],
            columnDivider = Nothing,
            rowDivider = Nothing,
            gridColor = OptionValue["GridColor"],
            imageWrapper =
                If [MatchQ[gridOfImages[[1, 1]], _ARCScene],
                    ARCScene
                    ,
                    Identity
                ]
        },
        
        If [gridColor =!= None,
            rowDivider = {
                Table[
                    gridColor,
                    {Total[ImageWidth /@ gridOfImages[[1]]] + columnCount - 1}
                ]
            }
        ];
        
        Flatten[
            Activate@
            Riffle[
                Function[{row},
                    If [gridColor =!= None,
                        columnDivider =
                            imageWrapper@
                            Table[
                                {gridColor},
                                {ImageHeight[gridOfImages[[row, 1]]]}
                            ]
                    ];
                    ARCCombineRowOfImages[
                        Activate@
                        Riffle[
                            gridOfImages[[row]],
                            Inactive[columnDivider]
                        ]
                    ]
                ] /@ Range[rowCount],
                Inactive[rowDivider]
            ],
            1
        ]
    ]

(*!
    \function ARCCombineRowOfImages
    
    \calltable
        ARCCombineRowOfImages[images] '' Given a list of images, produces a new image with them side-by-side.
    
    Examples:
    
    ARCCombineRowOfImages[{{{1, 2}, {3, 4}}, {{5, 6}, {7, 8}}}] === {{1, 2, 5, 6}, {3, 4, 7, 8}}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCombineRowOfImages]
    
    \maintainer danielb
*)
Clear[ARCCombineRowOfImages];
ARCCombineRowOfImages[images: {Repeated[_List]}] :=
    Module[{rows},
        rows = Length[images[[1]]];
        Function[{row},
            Join @@ (
                images[[All, row]]
            )
        ] /@ Range[rows]
    ]

ARCCombineRowOfImages[images: {Repeated[_ARCScene]}] :=
    ARCCombineRowOfImages[
        images[[All, 1]]
    ]

(*!
    \function ARCFindRulesForSubdividedOutput
    
    \calltable
        ARCFindRulesForSubdividedOutput[examples] '' If possible, tries to find rules by subdividing the output into a grid of sub-outputs. Returns the found rules, or Missing if not applicable.
    
    Examples:
    
    ARCFindRulesForSubdividedOutput[examples] === TODO
    
    \maintainer danielb
*)
Clear[ARCFindRulesForSubdividedOutput];
ARCFindRulesForSubdividedOutput[examples_List] :=
    Module[
        {
            outputWidthExpression,
            outputHeightExpression,
            withAndHeightMultiples,
            inputOrOutput = "Output",
            foundRulesQ = False,
            subdividedRules,
            examples2,
            subRules,
            res
        },
        
        outputWidthExpression = ARCGeneralizeValue[
            ImageWidth /@ examples[[All, "Input"]],
            ImageWidth /@ examples[[All, "Output"]],
            ObjectValue["InputScene", "Width"]
        ];
        
        outputHeightExpression = ARCGeneralizeValue[
            ImageHeight /@ examples[[All, "Input"]],
            ImageHeight /@ examples[[All, "Output"]],
            ObjectValue["InputScene", "Height"]
        ];
        
        (*Echo["outputWidthExpression" -> outputWidthExpression];
        Echo["outputHeightExpression" -> outputHeightExpression];*)
        
        If [SpecifiedQ[outputWidthExpression] || SpecifiedQ[outputHeightExpression],
            withAndHeightMultiples = Replace[
                {outputWidthExpression, outputHeightExpression},
                {
                    Inactive[Times[ObjectValue["InputScene", _], multiple_]] :> multiple,
                    _Missing :> 1
                },
                {1}
            ];
            If [And[
                    Or[
                        MatchQ[withAndHeightMultiples, {_Integer, _Integer}],
                        MatchQ[
                            inputOrOutput = "Input";
                            withAndHeightMultiples = ToIntegerIfNoDecimal /@ (1 / withAndHeightMultiples),
                            {_Integer, _Integer}
                        ]
                    ],
                    withAndHeightMultiples =!= {1, 1}
                ],
                If [inputOrOutput === "Input",
                    (* It's actually the _input_ that we want to sub-divide. *)
                    Return[
                        ARCFindRulesForSubdividedInput[
                            examples,
                            withAndHeightMultiples[[2]],
                            withAndHeightMultiples[[1]]
                        ],
                        Module
                    ]
                ];
                
                subdividedOutputs = Function[{exampleIndex},
                    ReturnIfFailure@
                    ARCSubdivideImage[
                        examples[[exampleIndex, inputOrOutput]],
                        withAndHeightMultiples[[2]],
                        withAndHeightMultiples[[1]]
                    ]
                ] /@ Range[Length[examples]];
                
                (*ARCEcho[subdividedOutputs];*)
                
                Block[{},
                    
                    foundRulesQ = False;
                    
                    subdividedRules = Function[{row},
                        Function[{column},
                            examples2 = examples;
                            examples2[[All, inputOrOutput]] = subdividedOutputs[[All, row, column]];
                            (*If [row == 2 && column == 1,
                                ARCEcho2[examples2[[All, "Input"]] -> examples2[[All, "Output"]]];
                                Global`examples = examples2;
                            ];*)
                            subRules =
                                Block[{$findingRulesForSubdivision = True},
                                    ARCFindRules[
                                        examples2,
                                        "SingleObject" -> True,
                                        (* Higher level code in ARCFindRules will control whether it tries again
                                           setting the global variable for allowing rules with one example. *)
                                        "SettleForOneExamplePerRule" -> False
                                    ]
                                ];
                            (*If [row == 2 && column == 1,
                                ARCEcho2["subRules" -> subRules];
                                Throw["HERE"]
                            ];*)
                            If [!MatchQ[subRules, KeyValuePattern["Rules" -> _List]],
                                (*Echo["ARCFindRulesForSubdividedOutput: No rules found" -> row -> column];*)
                                Return[Missing["NotFound"], Block]
                            ];
                            subRules
                        ] /@ Range[withAndHeightMultiples[[1]]]
                    ] /@ Range[withAndHeightMultiples[[2]]];
                    
                    res = <|
                        "SceneAsSingleObject" -> True,
                        If [SpecifiedQ[outputWidthExpression],
                            "Width" -> outputWidthExpression
                            ,
                            Nothing
                        ],
                        If [SpecifiedQ[outputHeightExpression],
                            "Height" -> outputHeightExpression
                            ,
                            Nothing
                        ],
                        "Rules" -> subdividedRules
                    |>;
                    
                    (*ARCEcho2[res];
                    Throw["HERE"];*)
                    
                    foundRulesQ = True
                ]
            ]
        ];
        
        If [foundRulesQ,
            res
            ,
            Missing["NotFound"]
        ]
    ]

(*!
    \function ARCFindRulesForSubdividedInput
    
    \calltable
        ARCFindRulesForSubdividedInput[examples, rows, columns] '' If possible, tries to find rules by subdividing the input into a grid of objects. Returns the found rules, or Missing if not applicable.
    
    Examples:
    
    ARCFindRulesForSubdividedInput[examples, rows, columns] === TODO
    
    \maintainer danielb
*)
Clear[ARCFindRulesForSubdividedInput];
ARCFindRulesForSubdividedInput[examples_List, rows_Integer, columns_Integer] :=
    Module[{},
        arcFindRulesHelper[examples, "SubdivideInput" -> {rows, columns}]
    ]

(*!
    \function ARCChooseTransform
    
    \calltable
        ARCChooseTransform[conclusions] '' Given a group of conclusions, if they each specify a Transforms list, try to resolve that down to a specific single Transform for each.
    
    Examples:
    
    ARCChooseTransform[
        {
            <|"Transforms" -> {<|"Type" -> "Rotation", "Angle" -> 90|>}|>,
            <|"Transforms" -> {<|"Type" -> "Rotation", "Angle" -> 90|>}|>,
            <|"Transforms" -> {<|"Type" -> "Rotation", "Angle" -> 90|>}|>
        }
    ]
    
    ===
    
    {
        <|"Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>|>,
        <|"Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>|>,
        <|"Transform" -> <|"Type" -> "Rotation", "Angle" -> 90|>|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCChooseTransform]
    
    \maintainer danielb
*)
Clear[ARCChooseTransform];
Options[ARCChooseTransform] =
{
    "FallbackToPruning" -> True,                (*< If we can't find a common transform, should we fall back to just pruning each Transforms list to a single transform? If False and we can't find a common transform, we return Missing. *)
    "NoopTransformsAlreadyPresent" -> False     (*< Should we assume that images already have their "Transforms" list populated with "no-op" transforms that resulted in the same image? *)
};
ARCChooseTransform[conclusionsIn_List, OptionsPattern[]] :=
    Module[
        {
            conclusions = conclusionsIn,
            intersection,
            commonType,
            imageShape,
            conclusionsWithNoopTransforms
        },
        
        (* No transforms? *)
        If [MatchQ[DeleteDuplicates[conclusionsIn[[All, "Transforms"]]], {_Missing | {}}],
            Return[conclusionsIn, Module]
        ];
        
        (* One transform each. Use that transform.*)
        If [MatchQ[conclusions, {Repeated[KeyValuePattern["Transforms" -> {_}]]}],
            Return[
                Replace[
                    conclusions,
                    conclusion_Association :> KeyDrop[
                        Append[conclusion, "Transform" -> conclusion[["Transforms", 1]]],
                        "Transforms"
                    ],
                    {1}
                ],
                Module
            ]
        ];
        
        (* Some have multiple possible transformations. Try to find a common transformation. *)
        If [MatchQ[conclusions, {Repeated[KeyValuePattern["Transforms" -> {__}]]}],
            
            (* Is there a transform common to all? *)
            intersection = Intersection @@ conclusions[[All, "Transforms"]];
            If [intersection =!= {},
                (* Arbitrarily use the first common transform we find. *)
                conclusions[[All, "Transform"]] = First[intersection];
                Return[
                    KeyDrop[conclusions, "Transforms"],
                    Module
                ]
            ];
            
            (* Only check this if we don't have multi-transform instances.
               For example, in 007bbfb7, some of the Transforms values are actually
               lists of flip+rotation transforms, and those aren't compatible here. *)
            If [MatchQ[
                    Flatten[conclusions[[All, "Transforms"]], 1],
                    {Repeated[_Association]}
                ],
                (* Is there a transform type to all? *)
                intersection = Intersection @@ conclusions[[All, "Transforms", All, "Type"]];
                If [intersection =!= {},
                    (* Arbitrarily use the first transform of the given type for each. *)
                    commonType = intersection[[1]];
                    conclusions =
                        Function[{conclusion},
                            Sett[
                                conclusion,
                                "Transform" -> SelectFirst[conclusion["Transforms"], #["Type"] === commonType &]
                            ]
                        ] /@ conclusions;
                    Return[
                        KeyDrop[conclusions, "Transforms"],
                        Module
                    ]
                ]
            ]
        ];
        
        (*Global`djb = conclusionsIn;
        ARCEcho2[conclusionsIn];*)
        
        (* For each conclusion, add in "no-op" transforms incase that allows us to find a
           common transform. *)
        If [!TrueQ[OptionValue["NoopTransformsAlreadyPresent"]],
            
            conclusionsWithNoopTransforms =
                Function[{conclusion},
                    If [MatchQ[conclusion["Transforms"], _Missing | {}] && !MissingQ[conclusion["Image"]],
                        imageShape = ARCObjectImageShape[conclusion];
                        Append[
                            conclusion,
                            "Transforms" -> Select[
                                ARCImageShapes[
                                    Replace[
                                        conclusion["Input", "Image"],
                                        (* As of Oct 2 2022, we are debugging the call to this
                                           function from ARCFindPropertyToInferImageValues, and
                                           in that context, conclusion["Input"] isn't defined, so
                                           I'm a bit confused. Since conclusion["Image"] _is_
                                           defined in that context, and appears to be what we
                                           want to use, we'll use that. *)
                                        _Missing :> conclusion["Image"]
                                    ],
                                    "IncludeBaseShape" -> False,
                                    "IncludeNoopTransforms" -> True
                                ],
                                #["Image"] == imageShape &
                            ][[All, "Transform"]]
                        ]
                        ,
                        conclusion
                    ]
                ] /@ conclusions;
            
            (*ARCEcho2["conclusionsWithNoopTransforms" -> conclusionsWithNoopTransforms];*)
            
            ReturnIfNotMissing[
                ARCChooseTransform[
                    conclusionsWithNoopTransforms,
                    "NoopTransformsAlreadyPresent" -> True,
                    "FallbackToPruning" -> False
                ]
            ]
        ];
        
        If [TrueQ[OptionValue["FallbackToPruning"]],
            (* Our last approach is to choose the first transform from each list. *)
            conclusions =
                Function[{conclusion},
                    If [MatchQ[conclusion, KeyValuePattern["Transforms" -> {__}]],
                        Sett[
                            conclusion,
                            "Transform" -> First[conclusion["Transforms"]]
                        ]
                        ,
                        conclusion
                    ]
                ] /@ conclusions;
            
            KeyDrop[conclusions, "Transforms"]
            ,
            Missing["NoCommonTransformFound"]
        ]
    ]

(*!
    \function ARCImageShapes
    
    \calltable
        ARCImageShapes[image] '' Given an object image, returns the associated 'image shapes', including transforms from other image shapes.
    
    Examples:
    
    ARCImageShapes[{{1}}]
    
    ===
    
    {
        <|"Image" -> ARCScene[{{10}}]|>,
        <|
            "Image" -> ARCScene[{{10, 10}, {10, 10}}],
            "Transform" -> <|"Type" -> "Scaled", "Factor" -> 0.5|>
        |>,
        <|
            "Image" -> ARCScene[{{10, 10, 10}, {10, 10, 10}, {10, 10, 10}}],
            "Transform" -> <|"Type" -> "Scaled", "Factor" -> 0.3333333333333333|>
        |>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCImageShapes]
    
    \maintainer danielb
*)
Clear[ARCImageShapes];
Options[ARCImageShapes] =
{
    "IncludeBaseShape" -> True,             (*< Should we include the base image shape that hasn't had any transforms applied? *)
    "IncludeNoopTransforms" -> False,       (*< Should we include image transforms that result in the image not changing? e.g. A horizontal flip for an image that has vertical line symmetry. *)
    "Monochrome" -> Automatic,              (*< The monochrome image if known. *)
    "Colors" -> Automatic                   (*< The colors used by the image. *)
};
ARCImageShapes[image_List, opts:OptionsPattern[]] :=
    Module[{colors, imageShape},
        
        colors = Replace[
            OptionValue["Colors"],
            Automatic -> ARCImageColors[image]
        ];
        
        imageShape =
            If [Length[colors] === 1,
                Replace[
                    OptionValue["Monochrome"],
                    Automatic -> ARCToMonochrome[image, $nonImageColor]
                ]
                ,
                image
            ];
        
        Join[
            If [TrueQ[OptionValue["IncludeBaseShape"]],
                {
                    <|
                        "Image" -> ARCScene[imageShape]
                    |>
                }
                ,
                {}
            ],
            ARCImageRotations[imageShape, FilterOptions[opts, ARCImageRotations]],
            ARCImageFlips[imageShape, FilterOptions[opts, ARCImageFlips]],
            ARCImageScalings[imageShape, FilterOptions[opts, ARCImageScalings]],
            If [TrueQ[$singleObject],
                (* e.g. 74dd1130 *)
                ARCImageFlipPlusRotations[imageShape]
                ,
                {}
            ]
        ]
    ]

ARCImageShapes[ARCScene[image_List], opts:OptionsPattern[]] :=
    ARCImageShapes[image, opts]

(*!
    \function ARCCommunityRiddlePage
    
    \calltable
        ARCCommunityRiddlePage[file] '' Given an ARC training file name, returns the github.com/arc-community/wiki riddle page.
    
    Examples:
    
    ARCCommunityRiddlePage["0ca9ddb6"] === "https://github.com/arc-community/arc/wiki/Riddle_Training_0ca9ddb6"
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCommunityRiddlePage]
    
    \maintainer danielb
*)
Clear[ARCCommunityRiddlePage];
ARCCommunityRiddlePage[file_String] :=
    "https://github.com/arc-community/arc/wiki/Riddle_Training_" <> file

(*!
    \function ARCTaskNotesMarkdownURL
    
    \calltable
        ARCTaskNotesMarkdownURL[example] '' Given an ARC example, returns the URL to the task notes markdown file on dbigham's github.
    
    Examples:
    
    ARCTaskNotesMarkdownURL["0ca9ddb6"] === "https://github.com/dbigham/ARC/blob/main/TaskNotes/0ca9ddb6/notes.md"
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCTaskNotesMarkdownURL]
    
    \maintainer danielb
*)
Clear[ARCTaskNotesMarkdownURL];
ARCTaskNotesMarkdownURL[example_String] :=
    "https://github.com/dbigham/ARC/blob/main/TaskNotes/" <> example <> "/notes.md"

(*!
    \function ARCLinkToDanielBighamsSolution
    
    \calltable
        ARCLinkToDanielBighamsSolution[example] '' Given an ARC training task, generates markdown to link to danielb's task notes / solution on github.
    
    Examples:
    
    ARCLinkToDanielBighamsSolution["0ca9ddb6"]
    
    ===
    
    "* [danielb's solution](https://github.com/dbigham/ARC/blob/main/TaskNotes/0ca9ddb6/notes.md)"
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCLinkToDanielBighamsSolution]
    
    \maintainer danielb
*)
Clear[ARCLinkToDanielBighamsSolution];
ARCLinkToDanielBighamsSolution[example_String] :=
    "* [danielb's solution](https://github.com/dbigham/ARC/blob/main/TaskNotes/" <> example <> "/notes.md)"

(*!
    \function ARCInferImageUseCountPropertyValues
    
    \calltable
        ARCInferImageUseCountPropertyValues[objects] '' Given the objects from a scene, sets their ImageUseCount property values.
    
    Examples:
    
    ARCInferImageUseCountPropertyValues[
        {
            <|"Image" -> "<my image>"|>,
            <|"Image" -> "<my image>"|>,
            <|"Image" -> "<my image 2>"|>
        }
    ]
    
    ===
    
    {
        <|"Image" -> "<my image>", "ImageUseCount" -> 2|>,
        <|"Image" -> "<my image>", "ImageUseCount" -> 2|>,
        <|"Image" -> "<my image 2>", "ImageUseCount" -> 1|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCInferImageUseCountPropertyValues]
    
    \maintainer danielb
*)
Clear[ARCInferImageUseCountPropertyValues];
ARCInferImageUseCountPropertyValues[objects_List] :=
    Module[{counts},
        
        counts = Counts[objects[[All, "Image"]]];
        
        Function[{object},
            Sett[
                object,
                "ImageUseCount" -> counts[object["Image"]]
            ]
        ] /@ objects
    ]

(*!
    \function ARCInferShapeUseCountPropertyValues
    
    \calltable
        ARCInferShapeUseCountPropertyValues[objects] '' Given the objects from a scene, sets their ShapeUseCount property values. i.e. Given their shape, how many objects in the scene use that shape?
    
    Examples:
    
    ARCInferShapeUseCountPropertyValues[
        {<|"Shape" -> "A"|>, <|"Shape" -> "A"|>, <|"Shape" -> "B"|>}
    ]
    
    ===
    
    {
        <|"Shape" -> "A", "ShapeUseCount" -> 2|>,
        <|"Shape" -> "A", "ShapeUseCount" -> 2|>,
        <|"Shape" -> "B", "ShapeUseCount" -> 1|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCInferShapeUseCountPropertyValues]
    
    \maintainer danielb
*)
Clear[ARCInferShapeUseCountPropertyValues];
ARCInferShapeUseCountPropertyValues[objects_List] :=
    Module[{counts},
        
        counts = Counts[objects[[All, "Shape"]]];
        
        Function[{object},
            Sett[
                object,
                "ShapeUseCount" -> counts[object["Shape"]]
            ]
        ] /@ objects
    ]

(*!
    \function ARCInferGeneralShapeUseCountPropertyValues
    
    \calltable
        ARCInferGeneralShapeUseCountPropertyValues[objects] '' Given the objects from a scene, sets their GeneralShapeUseCount property values. i.e. Given their general shape, how many objects in the scene use that shape?
    
    GeneralShapeUseCount differs from ShapeUseCount in that GeneralShapeUseCount treats shapes
    as being the same invariant of rotation, flips, scaling, etc.
    
    Examples:
    
    ARCInferGeneralShapeUseCountPropertyValues[
        {
            <|"Shape" -> <|"Name" -> "Rectangle"|>|>,
            <|"Shape" -> <|"Name" -> "Rectangle", "Filled" -> True|>|>,
            <|"Shape" -> "B"|>
        }
    ]
    
    ===
    
    {
        <|"Shape" -> <|"Name" -> "Rectangle"|>, "GeneralShapeUseCount" -> 2|>,
        <|"Shape" -> <|"Name" -> "Rectangle", "Filled" -> True|>, "GeneralShapeUseCount" -> 2|>,
        <|"Shape" -> "B", "GeneralShapeUseCount" -> 1|>
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCInferGeneralShapeUseCountPropertyValues]
    
    \maintainer danielb
*)
Clear[ARCInferGeneralShapeUseCountPropertyValues];
ARCInferGeneralShapeUseCountPropertyValues[objects_List] :=
    Module[{counts, generalizeShape},
        
        generalizeShape[KeyValuePattern["Name" -> shape_]] := shape;
        
        counts = Counts[
            generalizeShape /@ objects[[All, "Shape"]]
        ];
        
        Function[{object},
            Sett[
                object,
                "GeneralShapeUseCount" -> counts[generalizeShape[object["Shape"]]]
            ]
        ] /@ objects
    ]

(*!
    \function ARCParseGrid
    
    \calltable
        ARCParseGrid[image] '' Given an image of a grid, parses it to understand the number of rows, columns, and the locations of the cells.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCParseGrid]
    
    \maintainer danielb
*)
Clear[ARCParseGrid];
ARCParseGrid[image_List] :=
    Module[
        {
            imageWidth = ImageWidth[image],
            imageHeight = ImageHeight[image],
            colors,
            color,
            rowDividerPositions,
            columnDividerPositions,
            x,
            y,
            rowCount,
            columnCount,
            cell,
            cellWidth,
            cellHeight,
            borderThickness = 1,
            rowResult
        },
        
        colors = Sort[DeleteDuplicates[Flatten[image]]];
        
        (* The first color will be the background color (-1) and the second color
           will be the grid color. Todo: Multi-color grids. *)
        color = colors[[2]];
        
        rowDividerPositions = Position[
            image[[All, 1]],
            Except[$nonImageColor],
            {1},
            Heads -> False
        ][[All, 1]];
        
        columnDividerPositions = Position[
            image[[1]],
            Except[$nonImageColor],
            {1},
            Heads -> False
        ][[All, 1]];
        
        x = 1;
        y = 1;
        
        <|
            "RowCount" -> (rowCount = Length[rowDividerPositions] + 1),
            "ColumnCount" -> (columnCount = Length[columnDividerPositions] + 1),
            "Color" -> color,
            "Cells" -> Function[{rowIndex},
                x = 1;
                rowResult = Function[{columnIndex},
                    cell = <|
                        "Y" -> y,
                        "X" -> x,
                        "Width" -> (
                            cellWidth =
                                If [columnIndex === columnCount,
                                    imageWidth - x + 1
                                    ,
                                    columnDividerPositions[[columnIndex]] - x
                                ]
                        ),
                        "Height" -> (
                            cellHeight =
                                If [rowIndex === rowCount,
                                    imageHeight - y + 1
                                    ,
                                    rowDividerPositions[[rowIndex]] - y
                                ]
                        )
                    |>;
                    x += cellWidth + borderThickness;
                    cell
                ] /@ Range[columnCount];
                y += cellHeight + borderThickness;
                rowResult
            ] /@ Range[rowCount]
        |>
    ]

(*!
    \function ARCAllExamplesUseGridInInputAndOutput
    
    \calltable
        ARCAllExamplesUseGridInInputAndOutput[examples] '' Given some parsed examples, returns True if, for each example pair, there is the same grid present in the input and output.
    
    Examples:
    
    ARCAllExamplesUseGridInInputAndOutput[
        ARCParseInputAndOutputScenes[ARCParseFile["272f95fa"]["Train"]]
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCAllExamplesUseGridInInputAndOutput]
    
    \maintainer danielb
*)
Clear[ARCAllExamplesUseGridInInputAndOutput];
ARCAllExamplesUseGridInInputAndOutput[examples_List] :=
    Module[{},
        And[
            AllTrue[
                examples,
                Function[{example},
                    And[
                        AssociationQ[example["Input", "Grid"]],
                        example["Input", "Grid"] === example["Output", "Grid"]
                    ]
                ]
            ],
            examples[[All, "Input", "Grid", "RowCount"]] === examples[[All, "Output", "Grid", "RowCount"]],
            examples[[All, "Input", "Grid", "ColumnCount"]] === examples[[All, "Output", "Grid", "ColumnCount"]]
        ]
    ]

(*!
    \function ARCSubdivideImageUsingGrid
    
    \calltable
        ARCSubdivideImageUsingGrid[image, grid] '' Subdivides the image into a grid of sub-images, with one sub-image per grid cell.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSubdivideImageUsingGrid]
    
    \maintainer danielb
*)
Clear[ARCSubdivideImageUsingGrid];
ARCSubdivideImageUsingGrid[ARCScene[image_], grid_Association] :=
    Module[{},
        Function[{row},
            Function[{column},
                cell = grid[["Cells", row, column]];
                ARCScene[
                    image[[
                        Span[
                            y = cell["Y"],
                            y + cell["Height"] - 1
                        ],
                        Span[
                            x = cell["X"],
                            x + cell["Width"] - 1
                        ]
                    ]]
                ]
            ] /@ Range[grid["ColumnCount"]]
        ] /@ Range[grid["RowCount"]]
    ]

ARCSubdivideImageUsingGrid[parsedScene_Association] :=
    ARCSubdivideImageUsingGrid[parsedScene["Scene"], parsedScene["Grid"]]

(*!
    \function ARCFindRulesForGridSubdivision
    
    \calltable
        ARCFindRulesForGridSubdivision[examples] '' Tries to find rules by subdividing the input and output scenes into a grid of sub-images according to the grid in the scenes. Returns the found rules, or Missing if suitable rules are not found.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFindRulesForGridSubdivision]
    
    \maintainer danielb
*)
Clear[ARCFindRulesForGridSubdivision];
ARCFindRulesForGridSubdivision[examples_List] :=
    Module[
        {
            grid,
            sceneMappings,
            subRules,
            subdividedRules
        },
        
        sceneMappings = Function[{exampleIndex},
            grid = examples[[exampleIndex, "Input", "Grid"]];
            inputSubdivisions =
                ReturnIfFailure@
                ARCSubdivideImageUsingGrid[
                    examples[[exampleIndex, "Input", "Scene"]],
                    grid
                ];
            outputSubdivisions =
                ReturnIfFailure@
                ARCSubdivideImageUsingGrid[
                    examples[[exampleIndex, "Output", "Scene"]],
                    grid
                ];
            Function[{row},
                Function[{column},
                    {row, column} -> <|
                        "Input" -> inputSubdivisions[[row, column]],
                        "Output" -> outputSubdivisions[[row, column]]
                    |>
                ] /@ Range[grid["ColumnCount"]]
            ] /@ Range[grid["RowCount"]]
        ] /@ Range[Length[examples]];
        
        sceneMappings = GroupBy[Flatten[sceneMappings], First -> Last];
        
        subdividedRules = Function[{row},
            Function[{column},
                subRules =
                    Block[{$findingRulesForSubdivision = True},
                        (*If [row === 1 && column === 2,
                            Global`examples = sceneMappings[{row, column}]
                        ];*)
                        ARCFindRules[
                            sceneMappings[{row, column}],
                            (* Higher level code in ARCFindRules will control whether it tries again
                               setting the global variable for allowing rules with one example. *)
                            "SettleForOneExamplePerRule" -> False
                        ]
                    ];
                (*ARCEcho2[{row, column} -> subRules];*)
                If [!MatchQ[subRules, KeyValuePattern["Rules" -> _List]],
                    (*Echo["ARCFindRulesForGridSubdivision: No rules found" -> {row, column}];*)
                    Return[Missing["NotFound"], Module]
                ];
                subRules
            ] /@ Range[grid["ColumnCount"]]
        ] /@ Range[grid["RowCount"]];
        
        res = <|
            "Subdivision" -> "Grid",
            "Rules" -> subdividedRules
        |>
    ]

(*!
    \function ARCCombineDividersIntoGrid
    
    \calltable
        ARCCombineDividersIntoGrid[dividersAndGrids] '' Given a list of divider (and potentially grid) objects, decides whether a set of dividers can be re-interpreted as a grid.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCombineDividersIntoGrid]
    
    \maintainer danielb
*)
Clear[ARCCombineDividersIntoGrid];
ARCCombineDividersIntoGrid[scene_ARCScene, dividersAndGrids_List] :=
    Module[{},
        (* If the entire set of dividers and grids are just dividers, and those dividers all
           have the same orientation (all vertical or all horizontal), then proceed with
           merging them into a grid object. *)
        If [MatchQ[
                dividersAndGrids,
                {
                    Repeated[
                        KeyValuePattern[
                            {
                                "Color" -> c_,
                                "GridOrDivider" -> <|"Type" -> "Divider", "Orientation" -> o_|>
                            }
                        ]
                    ]
                }
            ],
            ARCGridOrDividerQ[
                "Objects" -> {
                    ARCFormCompositeObject[
                        scene,
                        <|
                            "Position" -> {1, 1},
                            "Width" -> ImageWidth[scene],
                            "Height" -> ImageHeight[scene]
                        |>,
                        dividersAndGrids
                    ]
                },
                ImageWidth[scene],
                ImageHeight[scene]
            ]
            ,
            dividersAndGrids
        ]
    ]

(*!
    \function ARCMemoized
    
    \calltable
        ARCMemoized[expr] '' Memoization for ARC functions.
    
    If $memoization has been initialized, then memoization will be used.
    
    \maintainer danielb
*)
Clear[ARCMemoized];
Options[ARCMemoized] = Options[Memoized];
Attributes[ARCMemoized] = {HoldFirst};
ARCMemoized[expr: Except[_Rule]] :=
    Memoized[expr, $memoization]

ARCMemoized[opts:OptionsPattern[]] :=
    Function[{expr},
        Memoized[
            expr,
            $memoization,
            "MemoizationKey" -> Replace[
                OptionValue["MemoizationKey"],
                list_List :> Join[
                    list,
                    {
                        $MinimumExamplesPerRule,
                        $denoised,
                        $findingRulesForSubdivision
                    }
                ]
            ],
            opts
        ],
        {HoldAllComplete}
    ]

(*!
    \function ARCFindRulesForGridSubdivisionToOutputPixels
    
    \calltable
        ARCFindRulesForGridSubdivisionToOutputPixels[examples] '' Tries to find a rule set by mapping grid cells to individual pixels in the output, if the width and height of the output always corresponds to the sizes of the grid.
    
    Examples:
    
    ARCSimplifyRules[
        ARCFindRulesForGridSubdivisionToOutputPixels[
            ARCParseInputAndOutputScenes[ARCParseFile["6773b310"]["Train"]]
        ]
    ]
    
    ===
    
    <|
        "Subdivision" -> <|"Input" -> "Grid", "Output" -> "Pixels"|>,
        "Rules" -> <|
            "SceneAsSingleObject" -> True,
            "Width" -> Inactive[ObjectValue["InputScene", "Width"]*0.3333333333333333],
            "Height" -> Inactive[ObjectValue["InputScene", "Height"]*0.3333333333333333],
            "Rules" -> {
                <|"FilledArea" -> 1|> -> <|"Image" -> ARCScene[{{-1}}]|>,
                <|"FilledArea" -> 2|> -> <|"Image" -> ARCScene[{{1}}]|>
            }
        |>
    |>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFindRulesForGridSubdivisionToOutputPixels]
    
    \maintainer danielb
*)
Clear[ARCFindRulesForGridSubdivisionToOutputPixels];
ARCFindRulesForGridSubdivisionToOutputPixels[examples_List] :=
    Module[
        {
            grid,
            sceneMappings,
            subRules,
            subdividedRules
        },
        
        sceneMappings = Function[{exampleIndex},
            grid = examples[[exampleIndex, "Input", "Grid"]];
            inputSubdivisions =
                ReturnIfFailure@
                ARCSubdivideImageUsingGrid[
                    examples[[exampleIndex, "Input", "Scene"]],
                    grid
                ];
            outputSubdivisions =
                ReturnIfFailure@
                ARCPixelsAsScenes[
                    examples[[exampleIndex, "Output", "Scene"]]
                ];
            Function[{row},
                Function[{column},
                    {row, column} -> <|
                        "Input" -> inputSubdivisions[[row, column]],
                        "Output" -> outputSubdivisions[[row, column]]
                    |>
                ] /@ Range[grid["ColumnCount"]]
            ] /@ Range[grid["RowCount"]]
        ] /@ Range[Length[examples]];
        
        sceneMappings = GroupBy[Flatten[sceneMappings], First -> Last];
        
        (*ARCEcho2[sceneMappings];
        Throw["HERE"];*)
        
        (* First try to find rules for each grid cell independently. *)
        subdividedRules = Block[{},
            Function[{row},
                Function[{column},
                    subRules =
                        Block[{$findingRulesForSubdivision = True},
                            (*If [row === 1 && column === 2,
                                Global`examples = sceneMappings[{row, column}]
                            ];*)
                            (*ARCEcho2[{row, column} -> sceneMappings[{row, column}]];*)
                            ARCFindRules[
                                sceneMappings[{row, column}],
                                (* Higher level code in ARCFindRules will control whether it tries again
                                setting the global variable for allowing rules with one example. *)
                                "SettleForOneExamplePerRule" -> False
                            ]
                        ];
                    (*ARCEcho2[{row, column} -> subRules];*)
                    If [!MatchQ[subRules, KeyValuePattern["Rules" -> _List]],
                        (*Echo["ARCFindRulesForGridSubdivisionToOutputPixels: No rules found" -> {row, column}];*)
                        Return[Missing["NotFound"], Block]
                    ];
                    subRules
                ] /@ Range[grid["ColumnCount"]]
            ] /@ Range[grid["RowCount"]];
        ];
        
        (* If we can't find rules for each grid cell independently, try to find a single set of
           rules that can be applied to all grid cells. *)
        If [MissingQ[subdividedRules],
            subdividedRules =
                Block[{$findingRulesForSubdivision = True},
                    ARCFindRules[
                        Flatten[Values[sceneMappings]],
                        (* Higher level code in ARCFindRules will control whether it tries again
                           setting the global variable for allowing rules with one example. *)
                        "SettleForOneExamplePerRule" -> False
                    ]
                ];
            If [!MatchQ[subdividedRules, KeyValuePattern["Rules" -> _List]],
                (*Echo["ARCFindRulesForGridSubdivisionToOutputPixels: No rules found"];*)
                Return[Missing["NotFound"], Module]
            ]
        ];
        
        <|
            "Subdivision" -> <|"Input" -> "Grid", "Output" -> "Pixels"|>,
            "Rules" -> subdividedRules
        |>
    ]

(*!
    \function ARCGridSizeMatchesOutputPixelDimensions
    
    \calltable
        ARCGridSizeMatchesOutputPixelDimensions[examples] '' Returns True if the input examples are grids, and the number of rows/columns of those grids match the pixel height/width of the output images.
    
    Examples:
    
    ARCGridSizeMatchesOutputPixelDimensions[
        ARCParseInputAndOutputScenes[ARCParseFile["6773b310"]["Train"]]
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGridSizeMatchesOutputPixelDimensions]
    
    \maintainer danielb
*)
Clear[ARCGridSizeMatchesOutputPixelDimensions];
ARCGridSizeMatchesOutputPixelDimensions[examples_List] :=
    Module[{},
        AllTrue[
            examples,
            Function[{example},
                And[
                    AssociationQ[example["Input", "Grid"]],
                    example["Input", "Grid", "RowCount"] === ImageHeight[example["Output", "Scene"]],
                    example["Input", "Grid", "ColumnCount"] === ImageWidth[example["Output", "Scene"]]
                ]
            ]
        ]
    ]

(*!
    \function ARCPixelsAsScenes
    
    \calltable
        ARCPixelsAsScenes[image] '' Given an image, turns it into a grid of individual images/scenes.
    
    Examples:
    
    ARCPixelsAsScenes[ARCScene[{{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}]]
    
    ===
    
    {
        {ARCScene[{{1}}], ARCScene[{{2}}], ARCScene[{{3}}]},
        {ARCScene[{{4}}], ARCScene[{{5}}], ARCScene[{{6}}]},
        {ARCScene[{{7}}], ARCScene[{{8}}], ARCScene[{{9}}]}
    }
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCPixelsAsScenes]
    
    \maintainer danielb
*)
Clear[ARCPixelsAsScenes];
ARCPixelsAsScenes[ARCScene[image_]] :=
    Replace[
        image,
        color_Integer :> ARCScene[{{color}}],
        {2}
    ]

(*!
    \function ARCImageTransforms
    
    \calltable
        ARCImageTransforms[object, otherImage] '' Given an object, and a differing image, checks whether there are any potential image transforms that could explain the difference from object to the other image.
    
    Examples:
    
    ARCImageTransforms[object, otherImage] === TODO
    
    \maintainer danielb
*)
Clear[ARCImageTransforms];
ARCImageTransforms[object_Association, otherImage_ARCScene] :=
    Module[{imageShapes},
        
        otherImageShape = ARCObjectImageShape[otherImage];
        
        imageShapes =
            Select[
                object["Shapes"],
                MatchQ[
                    #,
                    KeyValuePattern[
                        {
                            "Image" -> otherImageShape,
                            "Transform" -> _
                        }
                    ]
                ] &
            ];
        
        If [imageShapes =!= {},
            Replace[
                imageShapes[[All, "Transform"]],
                {
                    assoc:KeyValuePattern[{"Type" -> "Rotation", "Angle" -> _}] :> (
                        (* The angle specified in Shapes is the angle needed to
                           transform the image in Shapes to the image of the
                           object in the training example. We want the inverse
                           angle for transforming an input to an output. *)
                        Sett[assoc, "Angle" -> 360 - assoc["Angle"]]
                    ),
                    assoc:KeyValuePattern[{"Type" -> "Scaled", "Factor" -> _}] :> (
                        Sett[assoc, "Factor" -> N[1 / assoc["Factor"]]]
                    )
                },
                {1}
            ]
            ,
            {}
        ]
    ]

(*!
    \function Transform
    
    \calltable
        Transform[value, transform] '' Transforms the value by the given transform.
    
    Examples:
    
    Transform[ARCScene[{{1, 1}, {-1, -1}}], <|"Type" -> "Rotation", "Angle" -> 270|>]
    
    ===
    
    ARCScene[{{1, -1}, {1, -1}}]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`Transform]
    
    \maintainer danielb
*)
Clear[Transform];

Transform[value_, transform: KeyValuePattern[{"Type" -> "Rotation", "Angle" -> _}]] :=
    RotateImage[value, transform["Angle"]]

Transform[value_, transform: KeyValuePattern[{"Type" -> "Flip", "Direction" -> _}]] :=
    ARCFlipImage[value, transform["Direction"]]

Transform[value_, transform: KeyValuePattern[{"Type" -> "Scaled", "Factor" -> _}]] :=
    ARCScaleImage[value, transform["Factor"]]

Transform[value_, transform_] :=
    Module[{},
        ReturnFailure[
            "UnimplementedTransform",
            "The given transformation isn't yet supported.",
            "Transform" -> transform,
            "Value" -> value
        ]
    ]

(*!
    \function ARCImageFlipPlusRotations
    
    \calltable
        ARCImageFlipPlusRotations[image] '' Given an image, produces a list of versions that have been both flipped AND rotated.
    
    e.g. 74dd1130
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCImageFlipPlusRotations]
    
    \maintainer danielb
*)
Clear[ARCImageFlipPlusRotations];
ARCImageFlipPlusRotations[imageIn_List] :=
    Module[{image},
        Function[{args},
            image =
                ARCFlipImage[RotateImage[imageIn, args["Rotation"]], args["Flip"]];
            If [image =!= imageIn,
                <|
                    "Image" -> ARCScene[image],
                    "Transform" -> {
                        <|"Type" -> "Rotation", "Angle" -> args["Rotation"]|>,
                        <|"Type" -> "Flip", "Direction" -> args["Flip"]|>
                    }
                |>
                ,
                Nothing
            ]
        ] /@ {
            <|"Rotation" -> 90, "Flip" -> "Vertical"|>,
            (* Same result as the above. *)
            (*<|"Rotation" -> 270, "Flip" -> "Vertical"|>,*)
            <|"Rotation" -> 180, "Flip" -> "Vertical"|>,
            <|"Rotation" -> 270, "Flip" -> "Vertical"|>,
            (* Same result as the above. *)
            (*<|"Rotation" -> 90, "Flip" -> "Vertical"|>,*)
            <|"Rotation" -> 180, "Flip" -> "Vertical"|>
        }
    ]

(*!
    \function ARCHandlerForListConclusions
    
    \calltable
        ARCHandlerForListConclusions[key, valueOrValues, applyConclusionFunc] '' Given a conclusion key and value, and a function for applying a single conclusion, handles the case where we might have a list of conclusions to be applied.
    
    Examples:
    
    ARCHandlerForListConclusions[
        "Transform",
        {
            <|"Type" -> "Rotation", "Angle" -> 90|>,
            <|"Type" -> "Flip", "Direction" -> "Vertical"|>
        },
        Function[{object2, key2, value2}, ARCApplyConclusion[key2, value2, object2, <||>, <||>]],
        <|"Image" -> ARCScene[{{1, 2}, {0, 1}}]|>
    ]
    
    ===
    
    <|"Image" -> ARCScene[{{1, 2}, {0, 1}}]|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCHandlerForListConclusions]
    
    \maintainer danielb
*)
Clear[ARCHandlerForListConclusions];
ARCHandlerForListConclusions[key:"Transform", values_List, applyConclusionFunc_, objectIn_Association] :=
    Module[{object = objectIn},
        Function[{value},
            object =
                ReturnIfFailure@
                applyConclusionFunc[object, key, value]
        ] /@ values;
        object
    ]

ARCHandlerForListConclusions[key_, value_, applyConclusionFunc_, object_Association] :=
    applyConclusionFunc[object, key, value]

(*!
    \function ARCPossiblyGeneratedObjectQ
    
    \calltable
        ARCPossiblyGeneratedObjectQ[object] '' Given an object, tries to make a determination of whether it might be considered a "generated object" that was produced by following a set of rules repeatedly.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCPossiblyGeneratedObjectQ]
    
    \maintainer danielb
*)
Clear[ARCPossiblyGeneratedObjectQ];
Options[ARCPossiblyGeneratedObjectQ] =
{
    "FirstPosition" -> Automatic    (*< The position from which to explore the line. *)
};
ARCPossiblyGeneratedObjectQ[object_Association, OptionsPattern[]] :=
    Module[{image, position, line, linePositionsWithinScene, turnCount},
        
        If [!And[
                (* The following two conditions are not ideal, but will use this for now to try
                   to avoid spending computation on things that are unlikely to be generated,
                   such as pixels and other tiny objects. *)
                object["FilledArea"] >= 5,
                (* As of Sept 25 2022, we need to disable this condition for d9f24cd1 because
                   in some cases, _some_ of the generated objects will just be lines. *)
                (*object["FilledProportion"] <= 0.95,*)
                (* For now we'll only support single-color objects. *)
                !MissingQ[object["Color"]]
            ],
            Return[False, Module]
        ];
        
        image = object["Image"][[1]];
        
        position = Replace[
            OptionValue["FirstPosition"],
            Automatic :> Block[{},
                If [AssociationQ[object["Input"]],
                    (* This object is being mapped to from an input object, so we can make
                       use of the position of the input object to decide where to start
                       exploring the object from. *)
                    If [And[
                            object["Input", "Width"] === 1,
                            object["Input", "Height"] === 1,
                            MemberQ[object["PixelPositions"], object["Input", "Position"]]
                        ],
                        (* The input object is actually a position within this object,
                           so we'll use its position. *)
                        Return[
                            (* Make the position relative to this object. *)
                            object["Input", "Position"] - object["Position"] + {1, 1},
                            Block
                        ]
                    ]
                    
                    (* TODO: Even if the input object isn't a pixel on the output
                             object, we should still presumably use it to choose
                             which position to start from. (if if it is just
                             nearby) *)
                ];
                    
                (* We weren't able to determine our starting position from an mapped-from
                    input object. *)
                Reverse@
                Replace[
                    FirstPosition[
                        (* For now we'll favor the left-most position, rather than the
                            top-most position, but this will need generalization.
                            e.g. e5790162 *)
                        Transpose[image],
                        Except[$nonImageColor],
                        Missing[],
                        {2},
                        Heads -> False
                    ],
                    _Missing :> Return[False, Module]
                ]
            ]
        ];
        
        line =
            ReturnIfFailure@
            ARCFollowLine[image, object["Color"], position];
        
        (*ARCEcho2[ListQ[line] -> object];*)
        
        (*If [!TrueQ[ListQ[line]],
            Global`djb = object;
            Throw["FALSE"]
        ];*)
        
        <|
            "Result" -> And[
                ListQ[line],
                Length[line] >= 5,
                (* For now we'll only consider objects where we were able to trace the entire
                   object as a line-with-turns / path. *)
                Length[object["PixelPositions"]] === Length[line],
                With[{diff = object["Position"] - {1, 1}},
                    SameQ[
                        Sort[object["PixelPositions"]],
                        (* Position the line within the scene. *)
                        Sort[linePositionsWithinScene = (# + diff) & /@ line]
                    ]
                ],
                (* For now we'll consider one turn to be the minimum for something that we
                   consider potentially "generated". *)
                (* As of Sept 25 2022, we need to disable this condition for d9f24cd1 because
                   in some cases, _some_ of the generated objects will just be lines. *)
                turnCount = ARCLineTurnCount[line];
                True,
                (*ARCLineTurnCount[line]) >= 1,*)
                (* The end of the line is on the border. *)
                MatchQ[
                    line[[1]],
                    {1, _} | {_, 1} | {object["Height"], _} | {_, object["Width"]}
                ]
            ],
            If [IntegerQ[turnCount],
                "TurnCount" -> turnCount
                ,
                Nothing
            ],
            If [ListQ[linePositionsWithinScene],
                "Line" -> linePositionsWithinScene
                ,
                Nothing
            ]
        |>
    ]

(*!
    \function ARCPixelPossiblyPartOfLine
    
    \calltable
        ARCPixelPossiblyPartOfLine[image, position] '' Returns <|"Result" -> True | False, "AdjacentPixel1" -> {_, _}, "AdjacentPixel2" -> {_, _}|> where the True/False indicates whether this looks like it could be part of a line, and the two adjacent pixels are what appear to be part of that line. The adjacent pixels are missing when the indicator is False, and one of them would be missing if we are at the end of a line.
    
    Examples:
    
    ARCPixelPossiblyPartOfLine[
        ARCParseScene[ARCParseFile["28e73c20"]["Train", 1, "Output"]][["Objects", 1, "Image", 1]],
        {1, 2}
    ]
    
    ===
    
    <|"Result" -> True, "AdjacentPixels" -> {{1, 1}, {1, 3}}|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCPixelPossiblyPartOfLine]
    
    \maintainer danielb
*)
Clear[ARCPixelPossiblyPartOfLine];
ARCPixelPossiblyPartOfLine[image_List, position_List] :=
    Module[{color, surroundingPixels, adjacentPixelsOfSameColor},
        
        color = image[[position[[1]], position[[2]]]];
        
        If [color === $nonImageColor, Return[<|"Result" -> False|>, Module]];
        
        surroundingPixels =
            ARCSurroundingPixels[
                position[[1]],
                position[[2]],
                position[[1]],
                position[[2]],
                image
            ];
        
        adjacentPixelsOfSameColor =
            Select[surroundingPixels, # === color &];
        
        Which[
            Or[
                Length[adjacentPixelsOfSameColor] > 4,
                Length[adjacentPixelsOfSameColor] === 0
            ],
                <|"Result" -> False|>,
            And[
                Length[adjacentPixelsOfSameColor] <= 2,
                Length[adjacentPixelsOfSameColor] >= 1
            ],
                <|
                    "Result" -> True,
                    "AdjacentPixels" -> Keys[adjacentPixelsOfSameColor]
                |>,
            (* Three or four adjacent pixels. *)
            True,
                nonDiagonalAdjacentPixels = Select[
                    Keys[adjacentPixelsOfSameColor],
                    (
                        Total[Abs /@ (position - #)] === 1
                    ) &
                ];
                diagonalAdjacentPixels = Complement[
                    Keys[adjacentPixelsOfSameColor],
                    nonDiagonalAdjacentPixels
                ];
                diagonalAdjacentPixelsNotAdjacentToNonDiagonalAdjacentPixels = Select[
                    diagonalAdjacentPixels,
                    Function[{diagonalAdjacentPixel},
                        MissingQ[
                            SelectFirst[
                                nonDiagonalAdjacentPixels,
                                Function[{otherPixel},
                                    Total[Abs /@ (otherPixel - diagonalAdjacentPixel)] === 1
                                ]
                            ]
                        ]
                    ]
                ];
                If [And[
                        Length[nonDiagonalAdjacentPixels] <= 2,
                        diagonalAdjacentPixelsNotAdjacentToNonDiagonalAdjacentPixels === {}
                    ],
                    (* Each of the diagonal pixels is adjacent to one of the non-diagonal
                       adjacent pixels, so this is acceptable -- we can use the
                       non-diagonal pixels as the adjacent pixels for line formation.
                       ARCPixelPossiblyPartOfLine-20220925-VEVZ6O *)
                    <|
                        "Result" -> True,
                        "AdjacentPixels" -> nonDiagonalAdjacentPixels
                    |>
                    ,
                    <|"Result" -> False|>
                ]
        ]
    ]

(*!
    \function ARCFollowLine
    
    \calltable
        ARCFollowLine[image, color, position, prevPosition] '' Traces a line/path until an end point is found, or a point where there is no longer a single-pixel path to follow.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFollowLine]
    
    \maintainer danielb
*)
Clear[ARCFollowLine];
ARCFollowLine[image_List, color_Integer, positionIn_List, prevPositionIn_List] :=
    Module[
        {
            position = positionIn,
            prevPosition = prevPositionIn,
            prevPrevPosition = None,
            direction = positionIn - prevPositionIn,
            surroundingPixels,
            otherAdjacentPixelsOfSameColor,
            positionList = {positionIn}
        },
        While[True,
            
            surroundingPixels =
                ARCSurroundingPixels[
                    position[[1]],
                    position[[2]],
                    position[[1]],
                    position[[2]],
                    image
                ];
            
            otherAdjacentPixelsOfSameColor =
                DeleteCases[
                    Keys[Select[surroundingPixels, # === color &]],
                    prevPosition
                ];
            
            If [Length[otherAdjacentPixelsOfSameColor] > 1,
                If [MemberQ[otherAdjacentPixelsOfSameColor, position + direction],
                    (* If there are multiple other adjacent pixels, but we can just follow
                       the current direction to avoid ambiguity, then we'll do that. *)
                    otherAdjacentPixelsOfSameColor = {position + direction}
                    ,
                    (* If there are multiple other adjacent pixels, then also drop our
                       prev-prev location. For example, when we're exiting a corner, we
                       don't want to be distracted by our prev-prev location. *)
                    otherAdjacentPixelsOfSameColor = DeleteCases[
                        otherAdjacentPixelsOfSameColor,
                        prevPrevPosition
                    ];
                    
                    (* If there are still multiple adjacent pixels, and there is both a
                       non-diagonal pixel adjancent to us as well as a diagonal pixel adjacent
                       to us, drop the diagonal one and treat the non-diagonal one as our next
                       pixel. *)
                    Replace[
                        Select[
                            otherAdjacentPixelsOfSameColor,
                            Or[
                                #[[1]] === position[[1]],
                                #[[2]] === position[[2]]
                            ] &
                        ],
                        {singlePosition_} :> (
                            otherAdjacentPixelsOfSameColor = {singlePosition};
                        )
                    ]
                ]
            ];
            
            Which[
                Length[otherAdjacentPixelsOfSameColor] === 0,
                    (* We have found the end of the line. *)
                    Return[positionList, Module],
                Length[otherAdjacentPixelsOfSameColor] === 1,
                    (* We have found the next pixel in the line. *)
                    prevPrevPosition = prevPosition;
                    prevPosition = position;
                    position = otherAdjacentPixelsOfSameColor[[1]];
                    direction = position - prevPosition;
                    If [MemberQ[positionList, position],
                        (* We've already seen this position. What we should do in this case
                           is a bit unclear to me. For now we'll just return. *)
                        Return[positionList, Module]
                    ];
                    AppendTo[positionList, position],
                True,
                    (* There are multiple adjacent pixels of the line's color, so we no longer
                       have an unambiguous path to follow. *)
                    (*Echo[prevPrevPosition -> prevPosition -> {position -> direction} -> otherAdjacentPixelsOfSameColor];*)
                    Return[Append[positionList, "*"], Module]
            ]
        ]
    ]

ARCFollowLine[image_List, color_Integer, position_List] :=
    Module[{startingPosition = position, positionAttributes},
        
        positionAttributes =
            ARCPixelPossiblyPartOfLine[image, startingPosition];
        
        (* If the first pixel position doesn't appear to be on a line, then we'll abort. *)
        If [!TrueQ[positionAttributes["Result"]],
            Return[Missing["NotFound"], Module]
        ];
        
        (* Handle the case where the two adjacent pixels are also directly adjacent to each
           other (not on a diagonal) such that there's really only one of the two that is a
           next pixel. ARCFollowLine-20220921-JUT4OK *)
        If [And[
                MatchQ[positionAttributes["AdjacentPixels"], {_, _}],
                Total[
                    Abs /@ (
                        positionAttributes["AdjacentPixels"][[1]] - positionAttributes["AdjacentPixels"][[2]]
                    )
                ] === 1
            ],
            positionAttributes["AdjacentPixels"] = Select[
                positionAttributes["AdjacentPixels"],
                (
                    Total[Abs /@ (position - #1)] === 1
                ) &
            ]
        ];
        
        (* Search outward in each direction, checking at each location if it still
           looks like a line. Try to find the end of the line that is along the
           outer border of the object. *)
        Replace[
            SortBy[
                Function[{adjacentPixel},
                    ARCFollowLine[image, color, adjacentPixel, position]
                ] /@ positionAttributes["AdjacentPixels"],
                Replace[
                    MemberQ[#, "*"],
                    {
                        False -> 0,
                        True -> 1
                    }
                ] &
            ],
            
            {
                (* There were lines eminating outward in two directions. The above SortBy tries
                   to ensure that if at least one of the directions had a good ending, it is
                   put first. We reverse the order of that one, so that the complete line will
                   flow from beginning to end. *)
                (* TODO: Whether `a` should come first or `b` should come first feels fuzzy and we
                         may not have enough information here to make the right decision. I suspect
                         that where the line starts probably often depends on the object from the
                         input that is being mapped from, but we aren't currently taking that
                         into account. *)
                {a_, b_} :> (
                    (*Echo["A" -> a];
                    Echo["B" -> b];*)
                    reverseB = Reverse[b];
                    (* Favor a direction from left-to-right. *)
                    If [Or[
                            b[[-1]] === "*",
                            And[
                                a[[-1]] =!= "*",
                                (a[[-1, 2]] < b[[-1, 2]])
                            ]
                        ],
                        {Sequence @@ Reverse[a], startingPosition, Sequence @@ b}
                        ,
                        {Sequence @@ Reverse[b], startingPosition, Sequence @@ a}
                    ]
                ),
                (* Our line started at an ending position whereby it only eminated outward
                   in a single direction, so just prepend that line with the starting position. *)
                {line_} :> Prepend[line, startingPosition]
            }
        ]
    ]

(*!
    \function ARCLineTurnCount
    
    \calltable
        ARCLineTurnCount[line] '' Given a line's list of positions, returns the number of 'turns' in the line, which we define as the number of steps where the direction to the next pixel isn't the same as the direction from the previous pixel.
    
    Examples:
    
    ARCLineTurnCount[{{1, 1}, {1, 2}, {1, 3}, {2, 3}, {3, 3}}] === 1
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCLineTurnCount]
    
    \maintainer danielb
*)
Clear[ARCLineTurnCount];

ARCLineTurnCount[{} | {_} | {_, _}] := 0

ARCLineTurnCount[line_List] :=
    Module[{prevDirection = line[[2]] - line[[1]], direction, turnCount = 0},
        
        Function[{i},
            direction = line[[i]] - line[[i - 1]];
            If [direction =!= prevDirection,
                ++turnCount
            ];
            prevDirection = direction
        ] /@ Range[3, Length[line]];
        
        turnCount
    ]

(*!
    \function ARCMappingsForGeneratedObject
    
    \calltable
        ARCMappingsForGeneratedObject[line, color, scene] '' Given a line that might have been "generated", produces mappings for each position along the line from the input attributes at that position to the output attributes at that position.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCMappingsForGeneratedObject]
    
    \maintainer danielb
*)
Clear[ARCMappingsForGeneratedObject];
ARCMappingsForGeneratedObject[line_List, color_Integer, scene_ARCScene] :=
    Module[
        {
            sceneImage = ARCRemoveObjectFromScene[scene, line][[1]],
            mapping,
            prevPosition = Missing[],
            incomingDirection = Missing[],
            outgoingDirection = Missing[],
            prevIncomingDirection = Missing[],
            distanceSinceLastTurn = 1,
            inputState
        },
        
        Function[{i},
            
            position = line[[i]];
            
            nextPosition =
                If [i < Length[line],
                    line[[i + 1]]
                    ,
                    Missing[]
                ];
            
            mapping = Rule[
                
                inputState =
                    ReturnIfFailure@
                    ARCGeneratorInputState[
                        sceneImage,
                        color,
                        position,
                        prevPosition,
                        incomingDirection,
                        prevIncomingDirection,
                        distanceSinceLastTurn,
                        i
                    ];
                
                If [!MissingQ[prevPosition],
                    incomingDirection = position - prevPosition
                ];
                
                ++distanceSinceLastTurn;
                
                inputState
                ,
                <|
                    If [!MissingQ[nextPosition],
                        <|
                            (* The outgoing direction (RHS) is the direction we now need to travel in
                               to get to the next position on the line. *)
                            "OutgoingDirection" -> (outgoingDirection = nextPosition - position),
                            "OutgoingDirectionY" -> outgoingDirection[[1]],
                            "OutgoingDirectionX" -> outgoingDirection[[2]],
                            If [!MissingQ[incomingDirection],
                                "TurnDegrees" -> ARCTurnDegrees[position, incomingDirection, nextPosition]
                                ,
                                Nothing
                            ]
                        |>
                        ,
                        <|
                            "Stop" -> True
                        |>
                    ]
                |>
            ];
            
            If [!MatchQ[mapping[[2, "TurnDegrees"]], 0 | _Missing],
                distanceSinceLastTurn = 2
            ];
            
            prevPosition = position;
            prevIncomingDirection = incomingDirection;
            
            (* Fill in this pixel with the color of the object to simulate for the next
               step what the scene image would look like at this point in the generating
               process. *)
            sceneImage[[
                position[[1]],
                position[[2]]
            ]] = color;
            
            mapping
            
        ] /@ Range[Length[line]]
    ]

(* https://resources.wolframcloud.com/FunctionRepository/resources/SignedVectorAngle/ *)
SignedVectorAngle[v1_List, v2_List] /; Length[v1] === 2 && Length[v2] === 2 :=
    If [VectorAngle[v1, v2] === Pi,
        Pi
        ,
        Sign[Last[Cross[Append[v1, 0], Append[v2, 0]]]] * VectorAngle[v1, v2]
    ]

(*!
    \function ARCTurnDegrees
    
    \calltable
        ARCTurnDegrees[position, incomingDirection, nextPosition] '' Given two sequential positions, and the direction that was being traveled to arrive at the first position, specifies the number of degrees of the turn to move to the next position. Unlike typical math, I'm using positive angles to represent a clockwise turn, and negative angles to represent a counterclockwise turn.
    
    NOTE: Within this package, vectors are {y, x} due to Mathematica images being accessed
          as image[[y, x]].
    
    Examples:
    
    ARCTurnDegrees[{5, 5}, {0, 1}, {6, 5}] === 90
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCTurnDegrees]
    
    \maintainer danielb
*)
Clear[ARCTurnDegrees];
ARCTurnDegrees[position_List, incomingDirection_List, nextPosition_List] :=
    Module[{radians},
        
        (* We'll treat clockwise as positive and counter-clockwise as negative. *)
        radians = -SignedVectorAngle[
            (* Vector 1 *)
            incomingDirection,
            (* Vector 2*)
            nextPosition - position
        ];
        
        (* Degrees *)
        radians / Pi * 180
    ]

(*!
    \function ARCDirectionForAngle
    
    \calltable
        ARCDirectionForAngle[direction, angle] '' Given a direction of travel and an offset angle, returns the corresponding direction for that angle.
    
    Examples:
    
    ARCDirectionForAngle[{-1, 0}, 90] === {0, 1}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCDirectionForAngle]
    
    \maintainer danielb
*)
Clear[ARCDirectionForAngle];

(* Up *)
With[{thisDir = {-1, 0}},
ARCDirectionForAngle[thisDir, 135] := {1, 1};
ARCDirectionForAngle[thisDir, 90] := {0, 1};
ARCDirectionForAngle[thisDir, 45] := {-1, 1};
ARCDirectionForAngle[thisDir, 0] := thisDir;
ARCDirectionForAngle[thisDir, -45] := {-1, -1};
ARCDirectionForAngle[thisDir, -90] := {0, -1};
ARCDirectionForAngle[thisDir, -135] := {1, -1};
];

(* Down *)
With[{thisDir = {1, 0}},
ARCDirectionForAngle[thisDir, 135] := {-1, -1};
ARCDirectionForAngle[thisDir, 90] := {0, -1};
ARCDirectionForAngle[thisDir, 45] := {1, -1};
ARCDirectionForAngle[dir:thisDir, 0] := dir;
ARCDirectionForAngle[thisDir, -45] := {1, 1};
ARCDirectionForAngle[thisDir, -90] := {0, 1};
ARCDirectionForAngle[thisDir, -135] := {-1, 1};
];

(* Left *)
With[{thisDir = {0, -1}},
ARCDirectionForAngle[thisDir, 135] := {-1, 1};
ARCDirectionForAngle[thisDir, 90] := {-1, 0};
ARCDirectionForAngle[thisDir, 45] := {-1, -1};
ARCDirectionForAngle[thisDir, 0] := thisDir;
ARCDirectionForAngle[thisDir, -45] := {1, -1};
ARCDirectionForAngle[thisDir, -90] := {1, 0};
ARCDirectionForAngle[thisDir, -135] := {1, 1};
];

(* Right *)
With[{thisDir = {0, 1}},
ARCDirectionForAngle[thisDir, 135] := {1, -1};
ARCDirectionForAngle[thisDir, 90] := {1, 0};
ARCDirectionForAngle[thisDir, 45] := {1, 1};
ARCDirectionForAngle[thisDir, 0] := thisDir;
ARCDirectionForAngle[thisDir, -45] := {-1, 1};
ARCDirectionForAngle[thisDir, -90] := {-1, 0};
ARCDirectionForAngle[thisDir, -135] := {-1, -1};
];

(* 45 degrees *)
With[{thisDir = {-1, 1}},
ARCDirectionForAngle[thisDir, 135] := {1, 0};
ARCDirectionForAngle[thisDir, 90] := {1, 1};
ARCDirectionForAngle[thisDir, 45] := {0, 1};
ARCDirectionForAngle[thisDir, 0] := thisDir;
ARCDirectionForAngle[thisDir, -45] := {-1, 0};
ARCDirectionForAngle[thisDir, -90] := {-1, -1};
ARCDirectionForAngle[thisDir, -135] := {0, -1};
];

(* -135 degrees *)
With[{thisDir = {1, -1}},
ARCDirectionForAngle[thisDir, 135] := {-1, 0};
ARCDirectionForAngle[thisDir, 90] := {-1, -1};
ARCDirectionForAngle[thisDir, 45] := {0, -1};
ARCDirectionForAngle[thisDir, 0] := thisDir;
ARCDirectionForAngle[thisDir, -45] := {1, 0};
ARCDirectionForAngle[thisDir, -90] := {1, 1};
ARCDirectionForAngle[thisDir, -135] := {0, 1};
];

(* -45 degrees *)
With[{thisDir = {-1, -1}},
ARCDirectionForAngle[thisDir, 135] := {0, -1};
ARCDirectionForAngle[thisDir, 90] := {-1, 1};
ARCDirectionForAngle[thisDir, 45] := {-1, 0};
ARCDirectionForAngle[thisDir, 0] := thisDir;
ARCDirectionForAngle[thisDir, -45] := {0, -1};
ARCDirectionForAngle[thisDir, -90] := {1, -1};
ARCDirectionForAngle[thisDir, -135] := {1, 0};
];

(* 135 degrees *)
With[{thisDir = {1, 1}},
ARCDirectionForAngle[thisDir, 135] := {0, 1};
ARCDirectionForAngle[thisDir, 90] := {1, -1};
ARCDirectionForAngle[thisDir, 45] := {1, 0};
ARCDirectionForAngle[thisDir, 0] := thisDir;
ARCDirectionForAngle[thisDir, -45] := {0, 1};
ARCDirectionForAngle[thisDir, -90] := {-1, 1};
ARCDirectionForAngle[thisDir, -135] := {-1, 0};
];

$generatorStepProperties = <|
    "Start" -> <|
        "Type" -> "Boolean",
        "Type2" -> "Boolean"
    |>,
    "Position" -> <|
        "Type" -> "Position",
        "Type2" -> "Position"
    |>,
    "PreviousPosition" -> <|
        "Type" -> "Position",
        "Type2" -> "Position"
    |>,
    "IncomingDirection" -> <|
        "Type" -> "Direction",
        "Type2" -> "Direction"
    |>,
    "IncomingDirectionY" -> <|
        "Type" -> "Integer",
        "Type2" -> "DirectionDimensionValue"
    |>,
    "IncomingDirectionX" -> <|
        "Type" -> "Integer",
        "Type2" -> "DirectionDimensionValue"
    |>,
    "ColorAheadMatchesObject" -> <|
        "Type" -> "Boolean",
        "Type2" -> "ColorMatchesObject"
    |>,
    "ColorAhead" -> <|
        "Type" -> "Color",
        "Type2" -> "Color"
    |>,
    "ColorAhead2MatchesObject" -> <|
        "Type" -> "Boolean",
        "Type2" -> "ColorMatchesObject"
    |>,
    "ColorAhead2" -> <|
        "Type" -> "Color",
        "Type2" -> "Color"
    |>,
    "ColorAhead3MatchesObject" -> <|
        "Type" -> "Boolean",
        "Type2" -> "ColorMatchesObject"
    |>,
    "ColorAhead3" -> <|
        "Type" -> "Color",
        "Type2" -> "Color"
    |>,
    "Color45DegreesMatchesObject" -> <|
        "Type" -> "Boolean",
        "Type2" -> "ColorMatchesObject"
    |>,
    "ColorNegative45DegreesMatchesObject" -> <|
        "Type" -> "Boolean",
        "Type2" -> "ColorMatchesObject"
    |>,
    "Color45Degrees" -> <|
        "Type" -> "Color",
        "Type2" -> "Color"
    |>,
    "ColorNegative45Degrees" -> <|
        "Type" -> "Color",
        "Type2" -> "Color"
    |>,
    "Color90DegreesMatchesObject" -> <|
        "Type" -> "Boolean",
        "Type2" -> "ColorMatchesObject"
    |>,
    "ColorNegative90DegreesMatchesObject" -> <|
        "Type" -> "Boolean",
        "Type2" -> "ColorMatchesObject"
    |>,
    "Color90Degrees" -> <|
        "Type" -> "Color",
        "Type2" -> "Color"
    |>,
    "ColorNegative90Degrees" -> <|
        "Type" -> "Color",
        "Type2" -> "Color"
    |>,
    "Color135DegreesMatchesObject" -> <|
        "Type" -> "Boolean",
        "Type2" -> "ColorMatchesObject"
    |>,
    "ColorNegative135DegreesMatchesObject" -> <|
        "Type" -> "Boolean",
        "Type2" -> "ColorMatchesObject"
    |>,
    "Color135Degrees" -> <|
        "Type" -> "Color",
        "Type2" -> "Color"
    |>,
    "ColorNegative135Degrees" -> <|
        "Type" -> "Color",
        "Type2" -> "Color"
    |>,
    "Color90Degrees2MatchesObject" -> <|
        "Type" -> "Boolean",
        "Type2" -> "ColorMatchesObject"
    |>,
    "Color90Degrees2" -> <|
        "Type" -> "Color",
        "Type2" -> "Color"
    |>,
    "DistanceSinceLastTurn" -> <|
        "Type" -> "Integer",
        "Type2" -> "Distance"
    |>,
    "TotalDistanceSoFar" -> <|
        "Type" -> "Integer",
        "Type2" -> "Distance"
    |>
|>;

$generatorStepTransformTypes = <|
    Automatic -> <|
        "MinimalPropertySets" -> {
            {"OutgoingDirection"},
            {"OutgoingDirectionY", "OutgoingDirectionX"},
            {"TurnDegrees"},
            {"Stop"}
        }
    |>
|>;

(*!
    \function ARCFindRulesForGeneratedObjects
    
    \calltable
        ARCFindRulesForGeneratedObjects[objects, examples] '' Given a list of possibly generated objects from different examples, tries to to find a set of rules for generating those objects.
    
    Each object should have a "Scene" property that gives its corresponding scene image,
    and that scene object should have had all background color pixels changed to be
    $nonImageColor.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFindRulesForGeneratedObjects]
    
    \maintainer danielb
*)
Clear[ARCFindRulesForGeneratedObjects];
ARCFindRulesForGeneratedObjects[objects_List, examples_List] :=
    Block[{$arcFindRulesForGeneratedObjects = True},
    ARCLogScope["ARCFindRulesForGeneratedObjects"]@
    ARCMemoized[
        "MemoizationKey" -> Sort[objects[[All, "UUID"]]]
    ]@
    Module[{analysis, mappings, inputObjectsNeedingMapping},
        
        analysis =
            Function[{object},
                Replace[
                    ReturnIfFailure@
                    ARCPossiblyGeneratedObjectQ[object],
                    Except[KeyValuePattern["Result" -> True]] :> Return[
                        Missing["NotFound"],
                        Module
                    ]
                ]
             ] /@ objects;
        
        (*EchoIndented[analysis];*)
        
        (*Throw["DONE"];*)
        
        If [And @@ analysis[[All, "Result"]],
            (* All of the objects look like they might be generated objects. *)
            mappings =
                Flatten@
                MapIndexed[
                    Function[{analysisResult, pos},
                        mappings =
                            ReturnIfFailure@
                            ARCMappingsForGeneratedObject[
                                analysisResult["Line"],
                                objects[[First[pos]]]["Color"],
                                ReturnFailureIfMissing[
                                    objects[[First[pos]]]["Scene"],
                                    "ARCFindRulesForGeneratedObjectsFailure",
                                    "An object passed to ARCFindRulesForGeneratedObjects doesn't specify its Scene property."
                                ]
                            ];
                        
                        (* Annotate each RHS with "Example" and "Input". *)
                        Function[{mapping},
                            ReplacePart[
                                mapping,
                                2 -> Join[
                                    mapping[[2]],
                                    <|
                                        (* I don't believe we're making use of this currently.
                                           Traditionally this would be the training task / scene
                                           index, but here it's the generated object example
                                           index. *)
                                        "Example" -> First[pos],
                                        "Input" -> mapping[[1]]
                                    |>
                                ]
                            ]
                        ] /@ mappings
                    ],
                    analysis
                ];
            
            stopMappings = Select[
                mappings,
                MatchQ[
                    #[[2]],
                    KeyValuePattern["Stop" -> True]
                ] &
            ];
            
            (* TODO: For now we will not include the Start and Stop items in our main
                     rule-finding process. (Actually, for e5790162, which is the first
                     case that we can get working, we can leave the Start and Stop
                     cases in the main mappings list)*)
            (*mappings = Select[
                mappings,
                And[
                    !MatchQ[
                        #[[1]],
                        KeyValuePattern["Start" -> True]
                    ],
                    !MatchQ[
                        #[[2]],
                        KeyValuePattern["Stop" -> True]
                    ]
                ] &
            ];*)
            
            (*Global`djb = stopMappings;*)
            
            inputObjectsNeedingMapping = mappings[[All, 1, "UUID"]];
            
            (*Global`mappings = mappings;
            Global`inputObjectsNeedingMapping = inputObjectsNeedingMapping;*)
            
            (*Echo["inputObjectsNeedingMapping" -> Length[inputObjectsNeedingMapping]];*)
            
            Block[
                {
                    $properties = $generatorStepProperties,
                    $propertyListPositions,
                    $transformTypes = $generatorStepTransformTypes
                },
                
                ARCSetPropertyListPositions[];
                
                ruleSets = {};
                
                ruleFindings =
                    Association@
                    Flatten[
                        Function[{property},
                            
                            rules =
                                ReturnIfFailure@
                                ARCFindRules[
                                    mappings,
                                    property,
                                    (* referenceableInputObjects *)
                                    <||>,
                                    (* examples: Not applicable currently, so we'll pass an empty list. *)
                                    {}
                                ];
                            
                            (*ARCEcho2[ARCSimplifyRules[rules]];*)
                            
                            (* Echo[property -> Length[Flatten[rules[[All, 2, "InputObjects"]]]]]; *)
                            
                            If [SameQ[
                                    Length[
                                        mappedInputObjects =
                                            DeleteDuplicates@
                                            Flatten[rules[[All, 2, "InputObjects"]]]
                                    ],
                                    Length[inputObjectsNeedingMapping]
                                ],
                                If [!MissingQ[rules],
                                    AppendTo[
                                        ruleSets,
                                        <|"Rules" -> rules|>
                                    ]
                                ]
                                ,
                                (* The rules formed using this property do not handle the mapping of every
                                   input object across all training example. *)
                                If [rules =!= {},
                                    property -> <|
                                        "MappedInputObjects" -> mappedInputObjects,
                                        With[{unmappedObjects = Complement[inputObjectsNeedingMapping, mappedInputObjects]},
                                            "UnmappedInputObjects" -> unmappedObjects
                                        ],
                                        "Rules" -> rules
                                    |>
                                    ,
                                    Nothing
                                ]
                            ]
                        ] /@
                            DeleteCases[
                                If [False,
                                    {"ColorAhead"}
                                    (*{"ColorAhead2MatchesObject"}*)
                                    ,
                                    Prepend[
                                        Keys[$properties],
                                        (* See if one rule can be used to transform all objects. *)
                                        None
                                    ]
                                ],
                                Alternatives[
                                    "Position",
                                    "PreviousPosition",
                                    "TotalDistanceSoFar"
                                ]
                            ]
                    ];
                
                (*ARCEcho2[ruleFindings];*)
                
                If [ruleSets === {},
                    completedRuleSets = ARCCompleteRuleSubsets[
                        Append[
                            Flatten[Values[ruleFindings][[All, "Rules"]]],
                            (* Add an "Else" rule that could be considered to use for the case where
                               TurnDegrees is 0. *)
                            "Else" -> <|
                                "TurnDegrees" -> 0,
                                "InputObjects" ->
                                    Select[mappings, #[[2, "TurnDegrees"]] === 0 &][[All, 2, "Input", "UUID"]]
                            |>
                        ],
                        inputObjectsNeedingMapping
                    ];
                    
                    (*ARCEcho2[completedRuleSets];*)
                    
                    If [MatchQ[completedRuleSets["Results"], {__}],
                        ruleSets = completedRuleSets["Results"]
                    ]
                ];
                
                res =
                    If [MatchQ[ruleSets, {__}],
                        Replace[
                            ARCChooseBestRuleSet[ruleSets],
                            assoc: KeyValuePattern["OutgoingDirection" -> _] :>
                                (* If a rule can determine OutgoingDirection, it is redundant
                                   to also specify these two properties. *)
                                KeyDrop[assoc, {"OutgoingDirectionX", "OutgoingDirectionY"}],
                            {3}
                        ]
                        ,
                        Missing["NotFound"]
                    ];
                
                (* Log calls to *)
                (*If [StringQ[$file],
                    If [!ListQ[$generatorCalls],
                        $generatorCalls = {}
                    ];
                    Echo[$file];
                    AppendTo[
                        $generatorCalls,
                        <|
                            "File" -> $file,
                            "Objects" -> objects,
                            "Mappings" -> mappings,
                            "Results" -> res
                        |>
                    ]
                ];*)
                
                res
            ]
            ,
            Missing["NotFound"]
        ]
    ]
    ]

(*!
    \function ARCRemoveObjectFromScene
    
    \calltable
        ARCRemoveObjectFromScene[scene, object] '' Sets the object's pixels to the background color to remove it from the scene.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCRemoveObjectFromScene]
    
    \maintainer danielb
*)
Clear[ARCRemoveObjectFromScene];
ARCRemoveObjectFromScene[scene_ARCScene, object_Association] :=
    ARCRemoveObjectFromScene[scene, object["PixelPositions"]]

ARCRemoveObjectFromScene[ARCScene[imageIn_], pixelPositions_List] :=
    Module[{image = imageIn},
        
        Function[{pixelPosition},
            image[[
                pixelPosition[[1]],
                pixelPosition[[2]]
            ]] = $nonImageColor;
        ] /@ pixelPositions;
        
        ARCScene[image]
    ]

(*!
    \function ARCCompleteRuleSubsets
    
    \calltable
        ARCCompleteRuleSubsets[rules, cases] '' Given a list of rules the full list of cases that need to be covered (UUIDs), find sets of rules that can cover all cases.
        ARCCompleteRuleSubsets[rules, caseCount] '' Given a list of rules (their IDs) and the list of cases (their identifiers) they cover, find sets of rules that can cover all cases.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCompleteRuleSubsets]
    
    \maintainer danielb
*)
Clear[ARCCompleteRuleSubsets];

ARCCompleteRuleSubsets[rules_List, cases_List] :=
    Module[{res},
        
        res = ARCCompleteRuleSubsets[
            MapIndexed[
                Function[{rule, pos},
                    <|
                        "RuleID" -> First[pos],
                        "CasesCovered" -> rule[[2, "InputObjects"]]
                    |>
                ],
                rules
            ],
            Length[cases]
        ];
        
        res["Results"] = Replace[
            res["Results"],
            assoc: KeyValuePattern["RuleIDs" -> _] :> (
                Part[
                    rules,
                    assoc["RuleIDs"]
                ]
            ),
            {1}
        ];
        
        res["PartialResults"] =
            Reverse@
            SortBy[
                Replace[
                    res["PartialResults"],
                    assoc: KeyValuePattern["RuleIDs" -> _] :> (
                        Join[
                            Prepend[
                                RenameKeys[KeyDrop[assoc, "RuleIDs"], "CasesCovered" -> "InputObjects"],
                                "Rules" -> Part[
                                    rules,
                                    assoc["RuleIDs"]
                                ]
                            ],
                            <|
                                unhandled = Complement[
                                    cases,
                                    assoc["CasesCovered"]
                                ];
                                "UseCount" -> Length[assoc["CasesCovered"]],
                                "UnhandledCount" -> Length[unhandled],
                                "Unhandled" -> unhandled
                            |>
                        ]
                    ),
                    {1}
                ],
                #["UseCount"] &
            ];
        
        res
    ]

ARCCompleteRuleSubsets[rules_List, caseCount_Integer] :=
    Module[{res},
        
        res = ARCCompleteRuleSubsets[
            rules,
            <|
                "Results" ->
                    Function[{rule},
                        <|
                            "RuleIDs" -> {rule["RuleID"]},
                            "CasesCovered" -> rule["CasesCovered"]
                        |>
                    ] /@ rules,
                "PartialResults" -> {}
            |>,
            caseCount
        ]
    ]

ARCCompleteRuleSubsets[rules_List, resIn_Association, caseCount_Integer] :=
    Module[
        {
            res = resIn,
            newCases = {},
            newPartialResults = {},
            subsetUpdatedQ,
            subsetDuplicateAlreadyExtendedQ,
            resultsForSubset
        },
        
        res["Results"] = Flatten[
            Function[{subset},
                subsetUpdatedQ = False;
                subsetDuplicateAlreadyExtendedQ = False;
                If [Length[subset["CasesCovered"]] < caseCount,
                    resultsForSubset =
                        Function[{rule},
                            If [And[
                                    !MemberQ[subset["RuleIDs"], rule["RuleID"]],
                                    Intersection[subset["CasesCovered"], rule["CasesCovered"]] === {}
                                ],
                                theseRuleIDs = Sort[Append[subset["RuleIDs"], rule["RuleID"]]];
                                If [!MemberQ[newCases, theseRuleIDs],
                                    AppendTo[newCases, theseRuleIDs];
                                    subsetUpdatedQ = True;
                                    Sett[
                                        subset,
                                        {
                                            "RuleIDs" -> theseRuleIDs,
                                            "CasesCovered" -> Join[subset["CasesCovered"], rule["CasesCovered"]]
                                        }
                                    ]
                                    ,
                                    subsetDuplicateAlreadyExtendedQ = True;
                                    Nothing
                                ]
                                ,
                                Nothing
                            ]
                        ] /@ rules;
                    If [subsetUpdatedQ,
                        resultsForSubset
                        ,
                        (* This path was a dead end. *)
                        If [!TrueQ[subsetDuplicateAlreadyExtendedQ],
                            AppendTo[newPartialResults, subset]
                        ];
                        Nothing
                    ]
                    ,
                    subset
                ]
            ] /@ res["Results"]
        ];
        
        res["PartialResults"] = Join[res["PartialResults"], newPartialResults];
        
        If [newCases =!= {},
            ARCCompleteRuleSubsets[
                rules,
                res,
                caseCount
            ]
            ,
            res
        ]
    ]

(*!
    \function ARCTimeConstrained
    
    \calltable
        ARCTimeConstrained[expr, maxTime] '' Evaluates the given expression, returning a failure if the maximum time is exceeded.
    
    Examples:
    
    ARCTimeConstrained[Pause[0.15], Quantity[100, "Milliseconds"]]
    
    ===
    
    Failure[
        "TimeLimitExceeded",
        <|
            "MessageTemplate" -> "The expression took too long to evaluate.",
            "MessageParameters" -> <||>,
            "MaximumTime" -> Quantity[100, "Milliseconds"],
            "Expression" -> Hold[Pause[0.15]]
        |>
    ]
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCTimeConstrained]
    
    \maintainer danielb
*)
Clear[ARCTimeConstrained];
Attributes[ARCTimeConstrained] = {HoldFirst};
ARCTimeConstrained[expr_, maxTime_Quantity] :=
    Module[{},
        Replace[
            TimeConstrained[
                expr,
                maxTime
            ],
            $Aborted :> (
                If [StringQ[$file],
                    Echo["ARCTimeConstrained" -> $file -> maxTime]
                ];
                ReturnFailure[
                    "TimeLimitExceeded",
                    "The expression took too long to evaluate.",
                    "MaximumTime" -> maxTime,
                    "Expression" -> Hold[expr]
                ]
            )
        ]
    ]

ARCTimeConstrained[maxTime_Quantity] :=
    Function[{expr},
        ARCTimeConstrained[expr, maxTime],
        {HoldAllComplete}
    ]

(*!
    \function ProcessARCLog
    
    \calltable
        ProcessARCLog[] '' Processes pending LogScopes for ARC.
    
    \maintainer danielb
*)
Clear[ProcessARCLog];
ProcessARCLog[] :=
    EntityLink`Logging`LogScopeView[
        $repo,
        ProcessLog[$repo, "LinkEntityRevisionLogScopes" -> False],
        "IncludeTimings" -> True
    ]

(*!
    \function ARCLogsScope
    
    \calltable
        ARCLogScope[type, params] '' LogScope for ARC.
    
    Examples: See function notebook
    
    Unit tests:
    
    RunUnitTests[ARC`ARCLogsScope]
    
    \maintainer danielb
*)
Clear[ARCLogScope];
ARCLogScope[args___] :=
    If [!TrueQ[$disableARCLogScopes],
        LogScope[$repo, args]
        ,
        Identity
    ]

(*!
    \function ARCLog
    
    \calltable
        ARCLog[expr] '' Calls Logg wrt the ERPEntityRepository.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[ERP`ARCLog]
    
    \maintainer danielb
*)
Clear[ARCLog];
Options[ARCLog] = Options[EntityLink`Logging`Logg]
ARCLog[expr_, opts:OptionsPattern[]] :=
    EntityLink`Logging`Logg[$repo, expr, opts]

(*!
    \function ARCTwoDiagonalRectanglesQ
    
    \calltable
        ARCTwoDiagonalRectanglesQ[object1, object2] '' Returns True if the two objects are rectangles that are connected diagonally.
    
    e.g. 445eab21 (training input 3)
    
    Examples:
    
    ARCTwoDiagonalRectanglesQ[
        <|"Shape" -> <|"Name" -> "Rectangle"|>, "X" -> 6, "Y" -> 6, "X2" -> 10, "Y2" -> 10|>,
        <|"Shape" -> <|"Name" -> "Rectangle"|>, "X2" -> 5, "Y2" -> 5|>
    ]
    
    ===
    
    True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCTwoDiagonalRectanglesQ]
    
    \maintainer danielb
*)
Clear[ARCTwoDiagonalRectanglesQ];
ARCTwoDiagonalRectanglesQ[object1In_Association, object2In_Association] :=
    Module[{object1, object2},
        And[
            MatchQ[object1In["Shape"], KeyValuePattern["Name" -> "Rectangle" | "Square"]],
            MatchQ[object2In["Shape"], KeyValuePattern["Name" -> "Rectangle" | "Square"]],
            (
                {object1, object2} = SortBy[
                    {object1In, object2In},
                    #["X2"] &
                ];
                And[
                    object2["Y"] === object1["Y2"] + 1,
                    object2["X"] === object1["X2"] + 1
                ]
            )
        ]
    ]

(*!
    \function ARCGeneratorInputState
    
    \calltable
        ARCGeneratorInputState[todo] '' Given a position and current direction, etc, returns the input state for a generator.
    
    Examples:
    
    See function notebook
    
    \maintainer danielb
*)
Clear[ARCGeneratorInputState];
ARCGeneratorInputState[sceneImage_List, color_, position_, prevPosition_, incomingDirectionIn_, prevIncomingDirection_, distanceSinceLastTurn_, totalDistanceSoFar_] :=
    Module[{color2, incomingDirection = incomingDirectionIn},
        DeleteMissing@
        <|
            "UUID" -> CreateUUID[],
            "Position" -> position,
            "PreviousPosition" -> prevPosition,
            If [MissingQ[prevPosition],
                <|
                    "Start" -> True
                |>
                ,
                <|
                    (* The incoming direction (LHS) is the direction we traveled in
                       to get to the current position on the line. *)
                    "IncomingDirection" -> (incomingDirection = position - prevPosition),
                    "IncomingDirectionY" -> incomingDirection[[1]],
                    "IncomingDirectionX" -> incomingDirection[[2]]
                |>
            ],
            (* The previous incoming direction is the direction we needed to travel to
               arrive at the previous position on the line. *)
            "PreviousIncomingDirection" -> prevIncomingDirection,
            If [!MissingQ[incomingDirection],
                <|
                    "ColorAhead" -> (color2 = Replace[ARCPixelColor[sceneImage, position + incomingDirection], _Missing -> -2]),
                    "ColorAheadMatchesObject" -> (color2 === color),
                    "ColorAhead2" -> (color2 = Replace[ARCPixelColor[sceneImage, position + incomingDirection * 2], _Missing -> -2]),
                    "ColorAhead2MatchesObject" -> (color2 === color),
                    "ColorAhead3" -> (color2 = Replace[ARCPixelColor[sceneImage, position + incomingDirection * 3], _Missing -> -2]),
                    "ColorAhead3MatchesObject" -> (color2 === color),
                    "Color135Degrees" -> (color2 = Replace[ARCPixelColor[sceneImage, position + ARCDirectionForAngle[incomingDirection, 135]], _Missing -> -2]),
                    "Color135DegreesMatchesObject" -> (color2 === color),
                    "Color90Degrees" -> (color2 = Replace[ARCPixelColor[sceneImage, position + ARCDirectionForAngle[incomingDirection, 90]], _Missing -> -2]),
                    "Color90DegreesMatchesObject" -> (color2 === color),
                    "Color90Degrees2" -> (color2 = Replace[ARCPixelColor[sceneImage, position + ARCDirectionForAngle[incomingDirection, 90] * 2], _Missing -> -2]),
                    "Color90Degrees2MatchesObject" -> (color2 === color),
                    "Color45Degrees" -> (color2 = Replace[ARCPixelColor[sceneImage, position + ARCDirectionForAngle[incomingDirection, 45]], _Missing -> -2]),
                    "Color45DegreesMatchesObject" -> (color2 === color),
                    "ColorNegative45Degrees" -> (color2 = Replace[ARCPixelColor[sceneImage, position + ARCDirectionForAngle[incomingDirection, -45]], _Missing -> -2]),
                    "ColorNegative45DegreesMatchesObject" -> (color2 === color),
                    "ColorNegative90Degrees" -> (color2 = Replace[ARCPixelColor[sceneImage, position + ARCDirectionForAngle[incomingDirection, -90]], _Missing -> -2]),
                    "ColorNegative90DegreesMatchesObject" -> (color2 === color),
                    "ColorNegative135Degrees" -> (color2 = Replace[ARCPixelColor[sceneImage, position + ARCDirectionForAngle[incomingDirection, -135]], _Missing -> -2]),
                    "ColorNegative135DegreesMatchesObject" -> (color2 === color)
                |>
                ,
                Nothing
            ],
            
            (* The distance since the last turn can be thought of as the length of the
               current segment up to the current position. *)
            "DistanceSinceLastTurn" -> distanceSinceLastTurn,
            (* Starts counting at 1, so the first position on the line has a
               TotalDistanceSoFar of 1. *)
            "TotalDistanceSoFar" -> totalDistanceSoFar
        |>
    ]

(*!
    \function ARCGenerateObject
    
    \calltable
        ARCGenerateObject[scene, transform] '' Generates an object using the provided specification/rules.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCGenerateObject]
    
    \maintainer danielb
*)
Clear[ARCGenerateObject];
ARCGenerateObject[scene_ARCScene, inputObject_Association, transform_Association] :=
    Module[
        {
            sceneImage = scene[[1]],
            color = transform["Color"],
            rules,
            initialRule,
            prevPosition = Missing[],
            incomingDirection = Missing[],
            outgoingDirection,
            prevIncomingDirection = Missing[],
            distanceSinceLastTurn = 1,
            totalDistanceSoFar = 1,
            matchingRules,
            rule,
            conclusion,
            objectImage = Table[$nonImageColor, {ImageHeight[scene[[1]]]}, {ImageWidth[scene[[1]]]}],
            positions = {}
        },
        
        (* The position to start generating from. *)
        position = Replace[
            transform["StartPosition"],
            KeyValuePattern["RelativePosition" -> relativePosition_Association] :> (
                inputObject["Position"] + {
                    relativePosition["Y"],
                    relativePosition["X"]
                }
            )
        ];
        
        rules = transform["Rules"];
        
        (* Look up the initial direction. *)
        initialRule = Replace[
            SelectFirst[
                rules,
                MatchQ[
                    #,
                    HoldPattern[Rule][
                        KeyValuePattern[_ -> _Missing],
                        KeyValuePattern["OutgoingDirection" -> _]
                    ]
                ] &
            ],
            {
                _Missing :> ReturnFailure[
                    "GenerateObjectFailure",
                    "Unable to find a rule to specify the initial direction.",
                    "Transform" -> transform
                ],
                rule_Rule :> (
                    incomingDirection = rule[[2, "OutgoingDirection"]]
                )
            }
        ];
        
        (* Fill in this pixel with the color of the object. *)
        sceneImage[[
            position[[1]],
            position[[2]]
        ]] = color;
        
        objectImage[[
            position[[1]],
            position[[2]]
        ]] = color;
        
        AppendTo[positions, position];
        
        While[
            True,
            
            prevPosition = position;
            position += incomingDirection;
            AppendTo[positions, position];
            ++distanceSinceLastTurn;
            ++totalDistanceSoFar;
            
            (* Fill in this pixel with the color of the object. *)
            sceneImage[[
                position[[1]],
                position[[2]]
            ]] = color;
            
            objectImage[[
                position[[1]],
                position[[2]]
            ]] = color;
            
            inputState =
                ReturnIfFailure@
                ARCGeneratorInputState[
                    sceneImage,
                    color,
                    position,
                    prevPosition,
                    incomingDirection,
                    prevIncomingDirection,
                    distanceSinceLastTurn,
                    totalDistanceSoFar
                ];
            
            matchingRules = Select[
                rules,
                And[
                    MatchQ[#, _Rule],
                    MatchQ[
                        inputState,
                        ARCRuleToPattern[#[[1]]]
                    ]
                ] &
            ];
            
            If [MatchQ[matchingRules, {_, __}],
                (* If there are multiple matching rules, we want to apply the most specific one. *)
                matchingRules =
                    Reverse@
                    SortBy[
                        matchingRules,
                        ARCExpressionComplexity
                    ]
            ];
            
            If [MatchQ[matchingRules, {__}],
                (*Echo["Rule" -> matchingRules[[1]]];*)
                rule = matchingRules[[1]];
                conclusion = rule[[2]];
                outgoingDirection = incomingDirection;
                Which[
                    MatchQ[conclusion, KeyValuePattern["TurnDegrees" -> _]],
                        outgoingDirection =
                            ARCDirectionForAngle[
                                incomingDirection,
                                conclusion["TurnDegrees"]
                            ],
                    MatchQ[conclusion, KeyValuePattern["OutgoingDirection" -> _]],
                        outgoingDirection = conclusion["OutgoingDirection"],
                    MatchQ[conclusion, KeyValuePattern["Stop" -> True]],
                        Return[
                            yValues = positions[[All, 1]];
                            xValues = positions[[All, 2]];
                            y = Min[yValues];
                            y2 = Max[yValues];
                            x = Min[xValues];
                            x2 = Max[xValues];
                            <|
                                "Image" -> ARCScene[
                                    objectImage[[
                                        y ;; y2,
                                        x ;; x2
                                    ]]
                                ],
                                "Position" -> {y, x},
                                "Y" -> y,
                                "X" -> x,
                                "Width" -> (x2 - x + 1),
                                "Height" -> (y2 - y + 1)
                            |>,
                            Module
                        ],
                    True,
                        ReturnFailure[
                            "GenerateObjectFailure",
                            "Unhandled rule.",
                            "Rule" -> rule,
                            "SceneState" -> ARCScene[sceneImage]
                        ]
                ];
                
                If [outgoingDirection =!= incomingDirection,
                    distanceSinceLastTurn = 0
                ];
                
                incomingDirection = outgoingDirection;
                ,
                ReturnFailure[
                    "GenerateObjectFailure",
                    "No maching rule.",
                    "SceneState" -> ARCScene[sceneImage],
                    "Position" -> position
                ]
            ]
        ];
    ]

(*!
    \function ARCSetGridPosition
    
    \calltable
        ARCSetGridPosition[objects, grid] '' Given a grid from the scene, sets the GridPosition of each object in the scene.
    
    e.g. 0bb8dee
    
    \maintainer danielb
*)
Clear[ARCSetGridPosition];
ARCSetGridPosition[objects_List, grid_Association] :=
    Module[{rowYValues, columnXValues, y, x},
        
        rowYValues = grid["Cells"][[All, 1]][[All, "Y"]];
        columnXValues = grid["Cells"][[1]][[All, "X"]];
        
        Function[{object},
            y = object["Y"];
            x = object["X"];
            Append[
                object,
                "GridPosition" -> {
                    Block[{},
                        Function[{rowIndex},
                            If [y >= rowYValues[[rowIndex]],
                                Return[rowIndex, Block]
                            ]
                        ] /@ Range[grid["RowCount"], 1, -1]
                    ],
                    Block[{},
                        Function[{columnIndex},
                            If [x >= columnXValues[[columnIndex]],
                                Return[columnIndex, Block]
                            ]
                        ] /@ Range[grid["ColumnCount"], 1, -1]
                    ]
                }
            ]
        ] /@ objects
    ]

(*!
    \function ARCInferObjectPropertiesForRendering
    
    \calltable
        ARCInferObjectPropertiesForRendering[object, scene] '' Tries to fill in any missing properties required for rendering an object.
    
    Examples:
    
    ARCInferObjectPropertiesForRendering[<|"YInverse" -> 1|>, <|"Height" -> 10|>]
    
    ===
    
    <|"YInverse" -> 1, "Y" -> 10|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCInferObjectPropertiesForRendering]
    
    \maintainer danielb
*)
Clear[ARCInferObjectPropertiesForRendering];
ARCInferObjectPropertiesForRendering[objectIn_Association, scene_Association] :=
    Module[{object = objectIn},
        
        (* Some of the below inferences are for AddObjects cases where we don't call
           the low-level ARCApplyConclusion down values for each of their property
           values, so we miss out on some of the logic there that can infer property
           values that aren't specified explicitly. *)
        
        If [MissingQ[object["X2"]],
            If [!MissingQ[object["X2Inverse"]],
                object["X2"] = scene["Width"] - object["X2Inverse"] + 1
            ]
        ];
        
        If [MissingQ[object["Y2"]],
            (* e.g. 27a77e38 *)
            If [!MissingQ[object["Y2Inverse"]],
                object["Y2"] = scene["Height"] - object["Y2Inverse"] + 1
            ]
        ];
        
        If [MissingQ[object["Width"]],
            Which[
                !MissingQ[object["X"]] && !MissingQ[object["X2"]],
                    object["Width"] = object["X2"] - object["X"] + 1,
                EntityMatchQ[object["Shape"], "Pixel"],
                    object["Width"] = 1,
                EntityMatchQ[object["Shape"], "Line"],
                    If [object["Angle"] =!= 90 && object["Shape", "Angle"] =!= 90,
                        ReturnFailure[
                            "ARCInferObjectImageFailure",
                            "For lines, either the Width property must be specified, or the Angle must be specified to be 90.",
                            "Object" -> object
                        ]
                        ,
                        object["Width"] = 1
                    ]
            ]
        ];
        
        If [MissingQ[object["Height"]],
            Which[
                !MissingQ[object["Y"]] && !MissingQ[object["Y2"]],
                    object["Height"] = object["Y2"] - object["Y"] + 1,
                (* e.g. 27a77e38 *)
                EntityMatchQ[object["Shape"], "Pixel"],
                    object["Height"] = 1,
                EntityMatchQ[object["Shape"], "Line"],
                    If [object["Angle"] =!= 0 && object["Shape", "Angle"] =!= 0,
                        ReturnFailure[
                            "ARCInferObjectImageFailure",
                            "For lines, either the Height property must be specified, or the Angle must be specified to be 0.",
                            "Object" -> object
                        ]
                        ,
                        object["Height"] = 1
                    ]
            ]
        ];
        
        (* For example, if a conclusion set X2Inverse and Y2, and the line became
           larger than the dimensions inherited from the input scene, then we end up
           with `width` not having been updated, so we can correct it here.
           e.g. "d13f3404" *)
        If [EntityMatchQ[object["Shape"], <|"Name" -> "Line", "Angle" -> 45 | 135|>],
            If [object["Width"] < object["Height"], object["Width"] = object["Height"]];
            If [object["Height"] < object["Width"], object["Height"] = object["Width"]];
        ];
        
        (* e.g. 27a77e38 *)
        If [MissingQ[object["Y"]],
            Which[
                !MissingQ[object["YInverse"]],
                    object["Y"] = scene["Height"] - object["YInverse"] + 1,
                And[
                    !MissingQ[object["Y2"]],
                    !MissingQ[object["Height"]]
                ],
                    object["Y"] = object["Y2"] - object["Height"] + 1
            ]
        ];
        
        If [MissingQ[object["X"]],
            Which[
                !MissingQ[object["XInverse"]],
                    object["X"] = scene["Width"] - object["XInverse"] + 1,
                And[
                    !MissingQ[object["X2"]],
                    !MissingQ[object["Width"]]
                ],
                    object["X"] = object["X2"] - object["Width"] + 1
            ]
        ];
        
        object
    ]

(*!
    \function ARCCheckForLogicOperationQ
    
    \calltable
        ARCCheckForLogicOperationQ[parsedExamples] '' Returns True if we should check whether the output is a logical combination of segments from the input.
    
    e.g. 0520fde7
    
    TODO: Enhance this function to support cases where there is no _grid_, but rather the input
          is always a multiple of the size of the output. e.g. 94F9D214
    
    Examples:
    
    ARCCheckForLogicOperationQ[ARCParseInputAndOutputScenes[ARCParseFile["0520fde7"]["Train"]]]
    
    ===
    
    <|
        "Result" -> True,
        "InputCells" -> {
            <|"Y" -> 1, "X" -> 1, "Width" -> 3, "Height" -> 3|>,
            <|"Y" -> 1, "X" -> 5, "Width" -> 3, "Height" -> 3|>
        }
    |>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCheckForLogicOperationQ]
    
    \maintainer danielb
*)
Clear[ARCCheckForLogicOperationQ];
ARCCheckForLogicOperationQ[parsedExamples_List] :=
    Module[{grids, cells},
        
        grids = parsedExamples[[All, "Input", "Grid"]];
        
        (* Do we always have a grid where the cells are are always the same size and
           always a single row or single column? And are the outputs always the size
           of exactly 1 grid cell, and make use of a single color? *)
        If [And[
                MatchQ[
                    grids,
                    {
                        Repeated[KeyValuePattern[{"Cells" -> _}]]
                    }
                ],
                (* All grids have the same number of rows. *)
                MatchQ[DeleteDuplicates[grids[[All, "RowCount"]]], {_}],
                (* All grids have the same number of columns. *)
                MatchQ[DeleteDuplicates[grids[[All, "ColumnCount"]]], {_}],
                (* All cells have the same width. *)
                MatchQ[DeleteDuplicates[Flatten[grids[[All, "Cells", All, All, "Width"]]]], {_}],
                (* All cells have the same height. *)
                MatchQ[DeleteDuplicates[Flatten[grids[[All, "Cells", All, All, "Height"]]]], {_}],
                Or[
                    grids[[1, "RowCount"]] === 1,
                    grids[[1, "ColumnCount"]] === 1
                ],
                cells = Flatten[grids[[1, "Cells"]]];
                (* Is the output width always the width of 1 grid cell? *)
                MatchQ[
                    parsedExamples[[All, "Output", "Width"]],
                    {Repeated[cells[[1, "Width"]]]}
                ],
                (* Is the output height always the width of 1 grid cell? *)
                MatchQ[
                    parsedExamples[[All, "Output", "Height"]],
                    {Repeated[cells[[1, "Height"]]]}
                ],
                (* All outputs use a single color. *)
                MatchQ[
                    parsedExamples[[All, "Output", "Colors"]],
                    {Repeated[{color_}]}
                ]
            ],
            <|
                "Result" -> True,
                "InputCells" -> cells,
                "OutputColor" -> parsedExamples[[1, "Output", "Colors", 1]]
            |>
            ,
            <|"Result" -> False|>
        ]
    ]

(*!
    \function ARCDrawSubImage
    
    \calltable
        ARCDrawSubImage[image, object] '' Inserts the object's image into the appropriate location within the larger image.
    
    Examples:
    
    ARCDrawSubImage[
        {{-1, -1, -1}, {-1, -1, -1}, {-1, -1, -1}},
        <|"Image" -> ARCScene[{{9}}], "Position" -> {2, 2}|>
    ]
    
    ===
    
    {{-1, -1, -1}, {-1, 9, -1}, {-1, -1, -1}}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCDrawSubImage]
    
    \maintainer danielb
*)
Clear[ARCDrawSubImage];
ARCDrawSubImage[image_List, object_Association] :=
    Module[{posX, posY},
        
        If [ListQ[object["Position"]],
            posY = object["Position"][[1]];
            posX = object["Position"][[2]];
            ,
            posY = object["Y"];
            posX = object["X"];
        ];
        
        If [MissingQ[object["Image"]],
            ReturnFailure[
                "ARCRenderSceneFailure",
                "An object is missing its Image.",
                "Object" -> object
            ]
        ];
        
        ARCDrawSubImage[image, object["Image"][[1]], posY, posX]
    ]

ARCDrawSubImage[imageIn_List, subImage_List, insertPositionY_Integer, insertPositionX_Integer] :=
    Module[
        {
            image = imageIn,
            y1,
            x1,
            y2,
            x2,
            subImageWidth,
            subImageHeight
        },
        
        subImageWidth = ImageWidth[subImage];
        subImageHeight = ImageHeight[subImage];
        
        y1 = 1;
        x1 = 1;
        
        y2 = y1 + subImageHeight - 1;
        x2 = x1 + subImageWidth - 1;
        
        If [insertPositionY + subImageHeight - 1 > ImageHeight[imageIn],
            y2 -= (insertPositionY + subImageHeight - 1) - ImageHeight[imageIn]
        ];
        
        If [insertPositionX + subImageWidth - 1 > ImageWidth[imageIn],
            x2 -= (insertPositionX + subImageWidth - 1) - ImageWidth[imageIn]
        ];
        
        If [insertPositionY < 1,
            y1 += (1 - insertPositionY)
        ];
        
        If [insertPositionX < 1,
            x1 += (1 - insertPositionX)
        ];
        
        Function[{y},
            Function[{x},
                If [!MatchQ[subImage[[y, x]], $nonImageColor | $outOfBoundsColor],
                    image[[
                        insertPositionY + y - 1,
                        insertPositionX + x - 1
                    ]] = subImage[[y, x]]
                ]
            ] /@ Range[x1, x2]
        ] /@ Range[y1, y2];
        
        image
    ]

(*!
    \function ARCConsiderLogicOperations
    
    \calltable
        ARCConsiderLogicOperations[parsedExamples, subdivisionInfo] '' Checks to see if we can form rules that make use of logic operations to combine input subregions to produce the output.
    
    e.g. 0520fde7
    
    Examples:
    
    With[
        {parsedExamples = ARCParseInputAndOutputScenes[ARCParseFile["0520fde7"]["Train"]]},
        ARCConsiderLogicOperations[parsedExamples, ARCCheckForLogicOperationQ[parsedExamples]]
    ]
    
    ===
    
    <|{1, -1} -> -1, {-1, -1} -> -1, {-1, 1} -> -1, {1, 1} -> 1|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCConsiderLogicOperations]
    
    \maintainer danielb
*)
Clear[ARCConsiderLogicOperations];
ARCConsiderLogicOperations[parsedExamples_List, subdivisionInfo_Association] :=
    Module[{inputImages, width, height, valueMappings},
        
        (* Gather the input subdivision images, setting their pixel colors to 1. *)
        inputImages = Function[{example},
            ARCSubdivisionImages[example["Input"], subdivisionInfo]
        ] /@ parsedExamples;
        
        (* Gather the output images, setting their pixel colors to 1. *)
        outputImages = Function[{example},
            ARCBinarizeImage[
                example["Output", "Scene"],
                example["Output", "Background"]
            ]
        ] /@ parsedExamples;
        
        width = subdivisionInfo[["InputCells", 1, "Width"]];
        height = subdivisionInfo[["InputCells", 1, "Height"]];
        
        (* Aggregate mappings from pairs of input pixels to their corresponding output
           pixel. *)
        valueMappings = GroupBy[
            Flatten[
                Function[{y},
                    Function[{x},
                        Transpose[
                            {
                                inputImages[[All, All, y, x]],
                                outputImages[[All, y, x]]
                            }
                        ]
                    ] /@ Range[width]
                ] /@ Range[height],
                2
            ],
            First -> Last
        ];
        
        valueMappings = DeleteDuplicates /@ valueMappings;
        
        If [DeleteDuplicates[Values[Length /@ valueMappings]] =!= {1},
            (* We've found that the same two input values don't always map to the same
               output value, so we will be unable to find a deterministic function. *)
            Return[Missing["NotFound"], Module]
            ,
            (* The same pairs of input values seem to always map to the same output
               values, so this indicates a function. *)
            valueMappings[[All, 1]]
        ]
    ]

(*!
    \function ARCApplyValueMappingToGrid
    
    \calltable
        ARCApplyValueMappingToGrid[inputSubdivisions, rules] '' Given some subdivisions of an input, and a some rules that provide a value mapping, produces the output image.
    
    e.g. 0520fde7
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCApplyValueMappingToGrid]
    
    \maintainer danielb
*)
Clear[ARCApplyValueMappingToGrid];
ARCApplyValueMappingToGrid[inputSubdivisions_List, rules_Association] :=
    Module[
        {
            width = ImageWidth[inputSubdivisions[[1]]],
            height = ImageHeight[inputSubdivisions[[1]]],
            mapping = Append[
                Normal[
                    Replace[
                        rules["Mapping"],
                        {
                            0 -> $nonImageColor,
                            1 -> rules["OutputColor"]
                        },
                        {1}
                    ]
                ],
                _ :> ReturnFailure[
                    "UnamppedValue",
                    "ARCApplyValueMappingToGrid found values that don't have an associated mapping rule.",
                    "Mappings" -> rules["Mapping"]
                ]
            ]
        },
        ARCScene[
            Function[{y},
                Function[{x},
                    Replace[
                        inputSubdivisions[[All, y, x]],
                        mapping
                    ]
                ] /@ Range[width]
            ] /@ Range[height]
        ]
    ]

(*!
    \function ARCSubdivisionImages
    
    \calltable
        ARCSubdivisionImages[parsedScene, subdivisionInfo] '' Returns a list of images for subdivisions of a scene.
    
    Examples:
    
    ARCSubdivisionImages[parsedScene, subdivisionInfo] === TODO
    
    \maintainer danielb
*)
Clear[ARCSubdivisionImages];
ARCSubdivisionImages[parsedScene_Association, subdivisionInfo_Association] :=
    Module[{image},
        (* Gather the input subdivision images, setting their pixel colors to 1. *)
        image = ARCBinarizeImage[parsedScene["Scene"], parsedScene["Background"]];
        Function[{cell},
            image[[
                cell["Y"] ;; cell["Y"] + cell["Height"] - 1,
                cell["X"] ;; cell["X"] + cell["Width"] - 1
            ]]
        ] /@ subdivisionInfo["InputCells"]
    ]

(*!
    \function ARCBinarizeImage
    
    \calltable
        ARCBinarizeImage[image, background] '' Given an image and background color, returns a binarized image.
    
    Examples:
    
    ARCBinarizeImage[ARCScene[{{1, 2, 3}, {0, 0, 2}}], 0] === {{1, 1, 1}, {0, 0, 1}}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCBinarizeImage]
    
    \maintainer danielb
*)
Clear[ARCBinarizeImage];
ARCBinarizeImage[ARCScene[image_], background_] :=
    Replace[
        image,
        {
            background -> 0,
            Except[background] -> 1
        },
        {2}
    ]

(*!
    \function ARCParseColorGrids
    
    \calltable
        ARCParseColorGrids[parsedExamples] '' Checks to see if there appears to be an implicit grid at play defined by regions of particular color.
    
    e.g. 94f9d214
    
    Examples:
    
    ARCParseColorGrids[ARCParseInputAndOutputScenes[ARCParseFile["94f9d214"]["Train"]]]
    
    ===
    
    <|
        "Result" -> True,
        "RowCount" -> 2,
        "ColumnCount" -> 1,
        "Cells" -> {
            {<|"Y" -> 1, "X" -> 1, "Width" -> 4, "Height" -> 4|>},
            {<|"Y" -> 5, "X" -> 1, "Width" -> 4, "Height" -> 4|>}
        }
    |>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCParseColorGrids]
    
    \maintainer danielb
*)
Clear[ARCParseColorGrids];
ARCParseColorGrids[parsedExamples_List] :=
    Module[
        {
            widthMultiples,
            heightMultiples,
            colors,
            rows,
            columns,
            cellWidth,
            cellHeight
        },
        
        widthMultiples = DeleteDuplicates[
            Function[{example},
                example["Input", "Width"] / example["Output", "Width"]
            ] /@ parsedExamples
        ];
        
        heightMultiples = DeleteDuplicates[
            Function[{example},
                example["Input", "Height"] / example["Output", "Height"]
            ] /@ parsedExamples
        ];
        
        (* Are the width and height multiples consistent for all input-output pairs, and
           is at least one of the multiples > 1? And all inputs are the same size? *)
        If [And[
                MatchQ[widthMultiples, {_}],
                MatchQ[heightMultiples, {_}],
                (* All inputs are the same width? *)
                MatchQ[
                    DeleteDuplicates[parsedExamples[[All, "Input", "Width"]]],
                    {_}
                ],
                (* All inputs are the same height? *)
                MatchQ[
                    DeleteDuplicates[parsedExamples[[All, "Input", "Height"]]],
                    {_}
                ],
                (* Either multiple rows or multiple columns? *)
                Or[
                    widthMultiples[[1]] > 1,
                    heightMultiples[[1]] > 1
                ],
                (* Same colors in all inputs? *)
                colors = DeleteDuplicates[parsedExamples[[All, "Input", "Colors"]]];
                MatchQ[
                    colors,
                    {_}
                ],
                colors = colors[[1]];
                rows = heightMultiples[[1]];
                columns = widthMultiples[[1]];
                (* One color per grid cell? *)
                Length[colors] === rows * columns
            ],
            cellWidth = parsedExamples[[1, "Input", "Width"]] / columns;
            cellHeight = parsedExamples[[1, "Input", "Height"]] / rows;
            
            res = <|
                "Result" -> True,
                "Type" -> "ColorGrid",
                "RowCount" -> rows,
                "ColumnCount" -> columns,
                "Cells" -> (
                    Function[{row},
                        Function[{column},
                            <|
                                "Y" -> (row - 1) * cellHeight + 1,
                                "X" -> (column - 1) * cellWidth + 1,
                                "Width" -> cellWidth,
                                "Height" -> cellHeight
                            |>
                        ] /@ Range[columns]
                    ] /@ Range[rows]
                )
            |>;
            
            (* Check whether the colors in each cell are the same for all inputs. *)
            If [And @@ (
                    Function[{cell},
                        MatchQ[
                            DeleteDuplicates@
                            Flatten[
                                Function[{example},
                                    DeleteCases[
                                        Flatten[
                                            example[[
                                                "Input",
                                                "Scene",
                                                1,
                                                cell["Y"] ;; cell["Y"] + cell["Height"] - 1,
                                                cell["X"] ;; cell["X"] + cell["Width"] - 1
                                            ]]
                                        ],
                                        example["Input", "Background"]
                                    ]
                                ] /@ parsedExamples
                            ],
                            {_}
                        ]
                    ] /@ Flatten[res["Cells"]]
                ),
                Return[res, Module]
            ]
        ];
        
        <|"Result" -> False|>
    ]

(*!
    \function ARCCheckForImputedRectangleForSymmetry
    
    \calltable
        ARCCheckForImputedRectangleForSymmetry[examples] '' Checks whether the given examples are of type ImputedRectangleForSymmetry whereby each input has a rectangular corruption that can be fixed by imputation that leverages symmetry.
        ARCCheckForImputedRectangleForSymmetry[image] '' Checks whether the given image appears to be symmetrical. If some pixels appear to be corrupted, they are indicated along with their presumed expected color.
    
    e.g. 9ecd008a
    
    Examples:
    
    ARCCheckForImputedRectangleForSymmetry[ARCParseFile["9ecd008a"]["Train"]]
    
    ===
    
    <|"Type" -> "Imputation", "Pattern" -> "Symmetry", "Output" -> "ImputedRectangle"|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCheckForImputedRectangleForSymmetry]
    
    \maintainer danielb
*)
Clear[ARCCheckForImputedRectangleForSymmetry];
ARCCheckForImputedRectangleForSymmetry[examples_List, findSymmetryResultIn_ : Missing[]] :=
    Module[{example, findSymmetryResult},
        
        (* For now we'll only consider the first example. *)
        example = examples[[1]];
        
        And[
            (* Check whether either the output width is less than the input width or the output
               height is less than the input height. *)
            AllTrue[
                examples,
                Or[
                    ImageWidth[#["Output"]] < ImageWidth[#["Input"]],
                    ImageHeight[#["Output"]] < ImageHeight[#["Input"]]
                ] &
            ]
        ] // Replace[#, False :> Return[False, Module]] &;
        
        findSymmetryResult = Replace[
            findSymmetryResultIn,
            _Missing :> ARCFindSymmetry[example["Input"]]
        ];
        
        If [!SameQ[
                Length[imputations],
                ImageWidth[example["Output"]] * ImageHeight[example["Output"]]
            ],
            (* The number of imputations isn't equal to the number of pixels in the
               output, so return False. *)
            Return[False, Module]
        ];
        
        ARCCheckForImputedRectangleForSymmetry[
            findSymmetryResult
        ]
    ]

ARCCheckForImputedRectangleForSymmetry[findSymmetryResult: _Association | False] :=
    Module[{imputations, imputationLocations},
        
        If [!MatchQ[findSymmetryResult, _Association],
            Return[False, Module]
        ];
        
        imputations = findSymmetryResult["Imputations"];
        
        imputationLocations = imputations[[All, 1]];
        yMin = Min[imputationLocations[[All, 1]]];
        yMax = Max[imputationLocations[[All, 1]]];
        xMin = Min[imputationLocations[[All, 2]]];
        xMax = Max[imputationLocations[[All, 2]]];
        
        If [!SameQ[
                Length[imputations],
                (yMax - yMin + 1) * (xMax - xMin + 1)
            ],
            (* The imputations don't form a rectangle, so return False. *)
            Return[False, Module]
        ];
        
        (* All the of the examples seem to be an imputed rectangle, so return that
           as the rule. *)
        <|
            "Type" -> "Imputation",
            "Pattern" -> "Symmetry",
            "Output" -> "ImputedRectangle"
        |>
    ]

(*!
    \function ARCSymmetryLocations
    
    \calltable
        ARCSymmetryLocations[width, height, position] '' If an image has vertical line and horizontal line symmetry, we can take a position from the top-left quadrant and return the three locations that should be the same.
    
    Examples:
    
    ARCSymmetryLocations[10, 10, {1, 1}] === {{10, 1}, {1, 10}, {10, 10}}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSymmetryLocations]
    
    \maintainer danielb
*)
Clear[ARCSymmetryLocations];
ARCSymmetryLocations[width_Integer, height_Integer, {y_, x_}] :=
    {
        {y, x},
        {height - y + 1, x},
        {y, width - x + 1},
        {height - y + 1, width - x + 1}
    }

(*!
    \function ARCCheckForImputation
    
    \calltable
        ARCCheckForImputation[inputImage, outputImage] '' Checks whether it appears that the input image is a corrupted version of an output image, and if so, attempts to repair the input image.
    
    e.g. 29ec7d0e
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCheckForImputation]
    
    \maintainer danielb
*)
Clear[ARCCheckForImputation];
$patchWidth = 3;
$patchHeight = 3;
ARCCheckForImputation[ARCScene[imageIn_], output: ARCScene[outputImage_] : Missing["Unknown"]] :=
    Module[
        {
            image = imageIn,
            maxPatchesToConsider = 10,
            (* Quite hard to know what number to go with here. If the image is relatively
               small, <= 3 might be required. But that could also lead to a poor choice
               of image patch for most actual examples, so we'll go with 4 for now. *)
            minImagePatchInstanceCount = 4,
            width,
            height,
            rows,
            columns,
            patchPositions,
            patches,
            row
        },
        
        width = ImageWidth[image];
        height = ImageHeight[image];
        
        If [Or[
                width <= 10,
                height <= 10
            ],
            Return[False, Module]
        ];
        
        (* Patches to examine. *)
        $patchWidth = 3;
        $patchHeight = 3;
        rows = Floor[height / $patchHeight];
        columns = Floor[width / $patchWidth];
        
        patches = Function[{i},
            row = Floor[(i - 1) / columns] + 1;
            column = Mod[i - 1, columns] + 1;
            If [row <= rows,
                <|
                    "Row" -> row,
                    "Column" -> column,
                    "Y" -> (row - 1) * $patchHeight + 1,
                    "X" -> (column - 1) * $patchWidth + 1
                |>
                ,
                Nothing
            ]
        ] /@ Range[1, maxPatchesToConsider];
        
        (* Try to find an image patch with a sufficient number of colors and a sufficient
           number of uses within the image. *)
        Function[{patch},
            
            patchImage = image[[
                patch["Y"] ;; patch["Y"] + $patchHeight - 1,
                patch["X"] ;; patch["X"] + $patchWidth - 1
            ]];
            
            patchColorCounts = Counts[Flatten[patchImage]];
            
            If [And[
                    Length[patchColorCounts] >= 3,
                    Length[
                        patchPositions =
                            ReturnIfFailure[
                                (*ResourceFunction["FindSubmatrix"][*)
                                FindSubmatrix[
                                    image,
                                    patchImage,
                                    "Positions"
                                ]
                            ]
                    ] >= minImagePatchInstanceCount
                ],
                
                (*EchoIndented[patch];
                Echo[ARCScene[patchImage]];*)
                
                (* Try using this patch to impute the corrupted parts of the image. *)
                Replace[
                    ARCCheckForImputation[
                        image,
                        Join[
                            patch,
                            <|
                                "Positions" -> patchPositions,
                                "Image" -> patchImage
                            |>
                        ]
                    ],
                    res_ARCScene :> Return[res, Module]
                ]
            ]
            
        ] /@ patches;
        
        False
    ]

ARCCheckForImputation[imageIn_List, patch_Association] :=
    Module[
        {
            image = imageIn,
            width,
            height,
            imagesCenteredOnPatchInstances,
            reapTag,
            patchSurround,
            colorsInDisagreement,
            corruptionColor
        },
        
        width = ImageWidth[image];
        height = ImageHeight[image];
        
        (* Assumes width and height of patches are the same, likewise for images. *)
        patchPadding = Ceiling[(width - $patchWidth) / 2];
        
        imagesCenteredOnPatchInstances =
            Function[{patchPosition},
                (*EchoIndented[patchPosition];*)
                ARCSubImage[
                    image,
                    patchPosition[[1]] - patchPadding,
                    patchPosition[[2]] - patchPadding,
                    patchPosition[[1]] + $patchHeight - 1 + patchPadding,
                    patchPosition[[2]] + $patchWidth - 1 + patchPadding
                ]
            ] /@ patch["Positions"];
        
        (*ARCEcho[ARCScene /@ imagesCenteredOnPatchInstances];*)
        
        centeredImageWidthRange = Range[ImageWidth[imagesCenteredOnPatchInstances[[1]]]];
        centeredImageHeight = ImageHeight[imagesCenteredOnPatchInstances[[1]]];
        
        transposedImages = Transpose[
            imagesCenteredOnPatchInstances,
            {3, 1, 2}
        ];
        
        colorsInDisagreement = ReapList[
            reapTag,
            patchSurround = Function[{y},
                Function[{x},
                    colorCountsAtPosition = Counts[DeleteCases[transposedImages[[y, x]], $outOfBoundsColor]];
                    colorCountAtPosition = Length[colorCountsAtPosition];
                    Which[
                        colorCountAtPosition === 0,
                            (* Always out of bounds. Nothing to do. *)
                            -2,
                        colorCountAtPosition === 1,
                            (* Note that this might end up being the corruption color in
                               some cases, so below we replace these with -1 if any of them
                               end up being the corruption color. *)
                            First[Keys[colorCountsAtPosition]],
                        colorCountAtPosition > 2,
                            (* This implies a universal corruption color wasn't found.
                               This currently assumes a single corruption color -- it would be
                               ideal to support multiple corruption colors. *)
                            (*Echo["UniversalCorruptionColorNotFound1"];*)
                            Return[False, Module],
                        True,
                            Sow[Keys[colorCountsAtPosition], reapTag];
                            colorCountsAtPosition
                    ]
                ] /@ centeredImageWidthRange
            ] /@ Range[centeredImageHeight]
        ];
        
        (*EchoIndented[colorsInDisagreement];*)
        
        corruptionColor = Replace[
            Intersection @@ DeleteCases[colorsInDisagreement, {}],
            {
                {c_} :> c,
                (* A universal corruption color wasn't found. This currently assumes a
                   single corruption color -- it would be ideal to support multiple
                   corruption colors. If `other` is an empty list, it implies that
                   in all examples, this position was corrupted, so we didn't have any
                   patches that showed us how to infer it. *)
                other_ :> (
                    EchoIndented["UniversalCorruptionColorNotFound2" -> other];
                    Return[False, Module]
                )
            }
        ];
        
        (* Resolve any disagreements now that we know the corruption color, to produce
           a complete / uncorrupted surround image for our image patch. *)
        patchSurround =
            Replace[
                patchSurround,
                disagreement_Association :> (
                    First[DeleteCases[Keys[disagreement], corruptionColor]]
                ),
                {2}
            ];
        
        (*ARCEcho[ARCScene[patchSurround]];*)
        
        (* If any of the patch surround pixels ended up always being corrupted, then
           replace them with the $nonImageColor so that when we apply the surround
           image to the main image, it will preserve what pixel color was already there. *)
        patchSurround = Replace[
            patchSurround,
            corruptionColor -> $nonImageColor,
            {2}
        ];
        
        (*ARCEcho[ARCScene[patchSurround]];*)
        
        (* Apply the patch surround image to each patch position to hopefully repair
           the image. *)
        Function[{patchPosition},
            image = ARCDrawSubImage[
                image,
                patchSurround,
                patchPosition[[1]] - patchPadding,
                patchPosition[[2]] - patchPadding
            ]
        ] /@ patch["Positions"];
        
        If [FreeQ[image, corruptionColor],
            ARCScene[image]
            ,
            False
        ]
    ]

(*!
    \function ARCSubImage
    
    \calltable
        ARCSubImage[image, x1, y1, x2, y2] '' Gets a sub-image from a larger image, filling in any pixels outside of the image with -2.
    
    Examples:
    
    ARCSubImage[{{1, 2}, {3, 4}}, 2, 0, 2, 3] === {{-2, 3, 4, -2}}
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSubImage]
    
    \maintainer danielb
*)
Clear[ARCSubImage];
ARCSubImage[image_List, y1In_Integer, x1In_Integer, y2In_Integer, x2In_Integer] :=
    Module[
        {
            width = ImageWidth[image],
            height = ImageHeight[image],
            y1,
            x1,
            y2,
            x2
        },
        If [And[
                x1In >= 1,
                x1In <= width,
                y1In >= 1,
                y1In <= height,
                x2In >= 1,
                x2In <= width,
                y2In >= 1,
                y2In <= height
            ],
            image[[y1In ;; y2In, x1In ;; x2In]]
            ,
            res = ConstantArray[
                $outOfBoundsColor,
                {y2In - y1In + 1, x2In - x1In + 1}
            ];
            
            y1 = Min[Max[y1In, 1], height];
            x1 = Min[Max[x1In, 1], width];
            y2 = Min[Max[y2In, 1], height];
            x2 = Min[Max[x2In, 1], width];
            
            yShift = 1 - y1In;
            xShift = 1 - x1In;
            
            (*EchoTag["y1,x2,y2,x2"][{y1, x1, y2, x2}];
            Echo[res];
            Echo[{yShift, xShift}];*)
            
            If [And[y1 =!= y2, x1 =!= x2],
                res[[
                    y1 + yShift ;; y2 + yShift,
                    x1 + xShift ;; x2 + xShift
                ]] = image[[
                    y1 ;; y2,
                    x1 ;; x2
                ]]
            ];
            
            res
        ]
    ]

ARCSubImage[image_List, object_Association] :=
    ARCSubImage[
        image,
        object["Y"],
        object["X"],
        object["Y2"],
        object["X2"]
    ]

(*!
    \function ARCMappingForReplacedObject
    
    \calltable
        ARCMappingForReplacedObject[inputObject, outputObject] '' Creates a mapping for ARCFindObjectMappings for an object that was replaced.
    
    \maintainer danielb
*)
Clear[ARCMappingForReplacedObject];
ARCMappingForReplacedObject[inputObject_Association, outputObject_Association] :=
    Module[{},
        inputObject -> Sett[
            outputObject,
            {
                "Image" -> outputObject["Image"],
                With[{relativePosition = outputObject["Position"] - inputObject["Position"]},
                    If [relativePosition =!= {0, 0},
                        "Position" -> <|
                            "RelativePosition" -> outputObject["Position"] - inputObject["Position"],
                            "Y" -> outputObject["Position"][[1]],
                            "X" -> outputObject["Position"][[2]]
                        |>
                        ,
                        Nothing
                    ]
                ]
            }
        ]
    ]

(*!
    \function ARCFindSymmetry
    
    \calltable
        ARCFindSymmetry[image] '' Checks to see if the image contains a possibly non-centered symmetry.
    
    Examples:
    
    ARCFindSymmetry[
        ARCParseFile["3631a71a"]["Train"][[1, "Input"]]
    ]
    
    ===
    
    <|"Y" -> 3, "X" -> 3, "Y2" -> 30, "X2" -> 30|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCFindSymmetry]
    
    \maintainer danielb
*)
Clear[ARCFindSymmetry];
$arcFindSymmetryPatchWidth = 3;
$arcFindSymmetryPatchHeight = 3;
$arcFindSymmetryPatchCountY = 5;
$arcFindSymmetryPatchCountX = 5;
ARCFindSymmetry[ARCScene[image_]] :=
    Module[{width, height},
    Block[
        {
            patchesAreaWidth,
            patchesAreaHeight,
            patchesStartX,
            patchesStartY,
            patchXRange,
            additionalImputations,
            originOffset,
            effectiveWidth,
            effectiveHeight,
            corruptionColor
        },
        
        width = ImageWidth[image];
        height = ImageHeight[image];
        
        And[
            (* For now to keep things simple, we'll require a 15x15 image so that our
               patch search area doesn't fall outside of the bounds of the image. *)
            width >= 15,
            height >= 15
        ] // Replace[#, False :> Return[None, Module]] &;
        
        patchesAreaWidth = $arcFindSymmetryPatchWidth * $arcFindSymmetryPatchCountX;
        patchesAreaHeight = $arcFindSymmetryPatchHeight * $arcFindSymmetryPatchCountY;
        patchesStartX = Round[width / 2 - patchesAreaWidth / 2 + 1];
        patchesStartY = Round[height / 2 - patchesAreaHeight / 2 + 1];
        
        (*Echo[{patchesStartY, patchesStartX}];
        Echo[{width, height}];
        Echo[{patchesAreaWidth, patchesAreaHeight}];*)
        
        patchXRange =
            Range[patchesStartX, patchesStartX + patchesAreaWidth - $arcFindSymmetryPatchWidth, $arcFindSymmetryPatchWidth];
        
        (* Loop over grid of patches. *)
        res = Block[{},
            Function[{patchY},
                Function[{patchX},
                    
                    patchImage = image[[
                        patchY ;; patchY + $arcFindSymmetryPatchHeight - 1,
                        patchX ;; patchX + $arcFindSymmetryPatchWidth - 1
                    ]];
                    
                    (*ARCEcho2[{patchY, patchX} -> ARCScene[patchImage]];*)
                    
                    (* If there are at least three colors in this image patch. *)
                    If [Length[DeleteDuplicates[Flatten[patchImage]]] >= 3,
                        Replace[
                            ReturnIfFailure@
                            ARCFindSymmetry[image, patchY, patchX, patchImage],
                            res_Association :> Return[res, Block]
                        ]
                    ];
                    
                ] /@ patchXRange
            ] /@ Range[patchesStartY, patchesStartY + patchesAreaHeight - $arcFindSymmetryPatchHeight, $arcFindSymmetryPatchHeight]
        ];
        
        If [!AssociationQ[res],
            Return[None, Module]
        ];
        
        If [Or[
                res["Y"] =!= 1,
                res["X"] =!= 1,
                res["Y2"] =!= height,
                res["X2"] =!= width
            ],
            
            corruptionColor = res["CorruptionColor"];
            
            (* If the center of symmetry isn't along the 45 degree line down and to the
                right from {0, 0}, then we will need to adjust pixel locations prior to
                calling ARCSymmetryLocations, and then adjust them back. *)
            originOffset = {0, 0};
            If [res["X"] > res["Y"],
                originOffset[[1]] = res["X"] - res["Y"]
            ];
            If [res["Y"] > res["X"],
                originOffset[[2]] = res["Y"] - res["X"]
            ];
            effectiveWidth = Plus[
                res["X2"],
                -res["X"],
                1,
                Max[res["X"] - 1, res["Y"] - 1] * 2
            ];
            effectiveHeight = Plus[
                res["Y2"],
                -res["Y"],
                1,
                Max[res["X"] - 1, res["Y"] - 1] * 2
            ];
            
            (*Echo[{effectiveWidth, effectiveHeight}];*)
            
            (* ARCFindSymmetry only finds and reports on corruptions that are within
                the parts of the image that have all four locations of symmetry, so here
                we check for and fix any additional corruptions that might only have
                one or two symmetrical locations present in the image. *)
            additionalImputations = Function[{additionalCorruptedPixel},
                additionalCorruptedPixel -> Replace[
                    DeleteDuplicates@
                    DeleteCases[
                        Extract[
                            image,
                            Select[
                                (# + originOffset) & /@
                                    ARCSymmetryLocations[
                                        effectiveWidth,
                                        effectiveHeight,
                                        additionalCorruptedPixel + originOffset
                                    ],
                                !ARCOutOfBounds[#, width, height] &
                            ]
                        ],
                        corruptionColor
                    ],
                    {
                        {color_} :> (
                            color
                        ),
                        (* We were unable to find a single color. *)
                        {} | {_, __} :> Return[None, Module]
                    }
                ]
            ] /@ Position[image, corruptionColor, {2}, Heads -> False];
            
            res["Imputations"] = Join[
                res["Imputations"],
                additionalImputations
            ]
        ];
        
        res
    ]
    ]

(* Considers whether an image patch and its flipped variants can detect symmetry. *)
ARCFindSymmetry[image_List, patchY_Integer, patchX_Integer, patchImage_List] :=
    Module[
        {
            width = ImageWidth[image],
            height = ImageHeight[image],
            patchFlipImages,
            horizontallyFlippedImage,
            horizontallyAndVerticallyFlippedImage,
            subImagePositions,
            patchFlipImagePositions,
            possiblySymmetryBounds
        },
        
        (*ARCEcho[ARCScene[patchImage]];*)
        
        patchFlipImages = {
            horizontallyFlippedImage = ARCFlipImage[patchImage, "Horizontal"],
            ARCFlipImage[patchImage, "Vertical"],
            horizontallyAndVerticallyFlippedImage = ARCFlipImage[horizontallyFlippedImage, "Vertical"]
        };
        
        (*Echo[
            ARCIndent[
                {
                    ARCScene /@ {patchImage, horizontallyFlippedImage},
                    ARCScene /@ {patchFlipImages[[2]], patchFlipImages[[3]]}
                },
                "ColumnsAvailable" -> 130
            ]
        ];*)
        
        (* For each patch flip image, see if there are instances of that sub-image
            in the scene either directly below or to the right of our patch
            as appropriate, which might indicate that we've found symmetry. *)
        patchFlipImagePositions = MapIndexed[
            Function[{patchFlipImage, index},
                subImagePositions =
                    ReturnIfFailure[
                        (*ResourceFunction["FindSubmatrix"][*)
                        FindSubmatrix[
                            image,
                            patchFlipImage,
                            "Positions"
                        ]
                    ];
                subImagePositions = Select[
                    subImagePositions,
                    Switch[
                        index,
                        {1},
                            (* Horizontally flipped patch. *)
                            (* Needs to be directly to the right of the patch we're considering. *)
                            And[
                                #[[1]] === patchY,
                                #[[2]] > patchX
                            ],
                        {2},
                            (* Vertically flipped patch. *)
                            (* Needs to be directly below the patch we're considering. *)
                            And[
                                #[[2]] === patchX,
                                #[[1]] > patchY
                            ],
                        {3},
                            (* Vertically and horizontally flipped patch. *)
                            (* Include all of these for now because it's only in pairing it with
                               a vertical or horizontally flipped patch that we can tell if it's
                               a possible match or not. *)
                            True
                    ] &
                ]
            ],
            (* The horizontally and vertically flipped images. *)
            patchFlipImages[[1 ;; 3]]
        ];
        
        (*Echo["patchFlipImagePositions" -> patchFlipImagePositions];*)
        
        patchPairsToConsider = Join[
            (* Horizontal and vertical patch flips. *)
            Flatten[
                Function[{horizontalPatchFlipImagePosition},
                    Function[{verticalPatchFlipImagePosition},
                        {
                            horizontalPatchFlipImagePosition,
                            verticalPatchFlipImagePosition
                        }
                    ] /@ patchFlipImagePositions[[2]]
                ] /@ patchFlipImagePositions[[1]],
                1
            ],
            (* Horizontal and (horizontal + vertical) patch flips. *)
            Flatten[
                Function[{horizontalPatchFlipImagePosition},
                    Function[{verticalAndHorizontalPatchFlipImagePosition},
                        If [horizontalPatchFlipImagePosition[[2]] === verticalAndHorizontalPatchFlipImagePosition[[2]],
                            {
                                horizontalPatchFlipImagePosition,
                                verticalAndHorizontalPatchFlipImagePosition
                            }
                            ,
                            Nothing
                        ]
                    ] /@ patchFlipImagePositions[[3]]
                ] /@ patchFlipImagePositions[[1]],
                1
            ],
            (* Vertical and (horizontal + vertical) patch flips. *)
            Flatten[
                Function[{verticalPatchFlipImagePosition},
                    Function[{verticalAndHorizontalPatchFlipImagePosition},
                        If [verticalPatchFlipImagePosition[[1]] === verticalAndHorizontalPatchFlipImagePosition[[1]],
                            {
                                verticalPatchFlipImagePosition,
                                verticalAndHorizontalPatchFlipImagePosition
                            }
                            ,
                            Nothing
                        ]
                    ] /@ patchFlipImagePositions[[3]]
                ] /@ patchFlipImagePositions[[2]],
                1
            ]
        ];
        
        (*EchoTag["patchPairsToConsider"][patchPairsToConsider];*)
        
        Function[{patchPair},
            Replace[
                ARCFindSymmetry[
                    "Centered",
                    ARCScene@
                    ARCSubImage[
                        image,
                        (* The hypothesized location of the horizontally and vertically
                            flipped image does have the expected image, so we may have
                            found a trio of patches to show us where the symmetry is. *)
                        possiblySymmetryBounds = ARCThreePatchesToPossibleSymmetryBounds[
                            {
                                {patchY, patchX},
                                patchPair[[1]],
                                patchPair[[2]]
                            },
                            $arcFindSymmetryPatchWidth,
                            $arcFindSymmetryPatchHeight,
                            width,
                            height
                        ]
                    ]
                ],
                res_Association :> Return[
                    Join[
                        possiblySymmetryBounds,
                        With[{offset = {possiblySymmetryBounds["Y"], possiblySymmetryBounds["X"]} - {1, 1}},
                            Sett[
                                res,
                                "Imputations" -> Function[{imputation},
                                    ReplacePart[
                                        imputation,
                                        1 -> imputation[[1]] + offset
                                    ]
                                ] /@ res["Imputations"]
                            ]
                        ]
                    ],
                    Module
                ]
            ]
        ] /@ patchPairsToConsider;
        
        None
    ]

ARCFindSymmetry["Centered", ARCScene[image_]] :=
    Module[
        {
            width,
            height,
            halfWidthRange,
            colorsAtPosition,
            symmetryLocations,
            colorCountsAtPosition,
            imputedColor,
            reapTag,
            imputations,
            corruptedLocation,
            corruptedLocations
        },
        
        width = ImageWidth[image];
        height = ImageHeight[image];
        halfWidthRange = Range[width / 2];
        
        imputations = ReapList[
            reapTag,
            Function[{y},
                Function[{x},
                    Replace[
                        Length[
                            DeleteDuplicates[
                                colorsAtPosition = Extract[
                                    image,
                                    symmetryLocations =
                                        ARCSymmetryLocations[width, height, {y, x}]
                                ]
                            ]
                        ],
                        {
                            4 | 3 :> Return[False, Module],
                            (* Symmetrical at this location. Do nothing. *)
                            1 :> Null,
                            2 :> (
                                colorCountsAtPosition = Counts[colorsAtPosition];
                                Which[
                                    Cases[colorCountsAtPosition, 2] =!= {},
                                        (* Only two pixels are the same color, so we need to deter
                                           our decision on what the correct color here is. *)
                                        Sow[
                                            <|
                                                "Position" -> {y, x},
                                                "SymmetryLocations" -> symmetryLocations,
                                                "ColorsAtPosition" -> colorsAtPosition
                                            |>,
                                            reapTag
                                        ],
                                    True,
                                        imputedColor =
                                            First[Keys[Select[colorCountsAtPosition, # === 3 &]]];
                                        corruptedLocation = SelectFirst[
                                            symmetryLocations,
                                            Function[
                                                image[[#[[1]], #[[2]]]] =!= imputedColor
                                            ]
                                        ];
                                        Sow[corruptedLocation -> imputedColor, reapTag]
                                ]
                            )
                        }
                    ]
                ] /@ halfWidthRange
            ] /@ Range[height / 2];
        ];
        
        corruptionColor =
            If [imputations =!= {},
                Extract[
                    image,
                    imputations[[1, 1]]
                ]
                ,
                None
            ];
        
        <|
            "CorruptionColor" -> corruptionColor,
            "Imputations" -> Replace[
                imputations,
                delayedItem_Association :> (
                    imputedColor =
                        FirstCase[delayedItem["ColorsAtPosition"], Except[corruptionColor]];
                    corruptedLocations = Select[
                        delayedItem["SymmetryLocations"],
                        Function[
                            image[[#[[1]], #[[2]]]] =!= imputedColor
                        ]
                    ];
                    Sequence @@ (
                        Function[{corruptedLocation},
                            corruptedLocation -> imputedColor
                        ] /@ corruptedLocations
                    )
                ),
                {1}
            ]
        |>
    ]

(*!
    \function ARCThreePatchesToPossibleSymmetryBounds
    
    \calltable
        ARCThreePatchesToPossibleSymmetryBounds[patchPositions, patchWidth, patchHeight] '' Given three image patches which may have detected symmetry, returns the symmetrical image rectangle that they would imply.
    
    Examples:
    
    ARCThreePatchesToPossibleSymmetryBounds[{{8, 8}, {23, 8}, {23, 23}}, 3, 3, 30, 30]
    
    ===
    
    <|"Y" -> 3, "X" -> 3, "Y2" -> 30, "X2" -> 30|>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCThreePatchesToPossibleSymmetryBounds]
    
    \maintainer danielb
*)
Clear[ARCThreePatchesToPossibleSymmetryBounds];
ARCThreePatchesToPossibleSymmetryBounds[patchPositions_List, patchWidth_Integer, patchHeight_Integer, sceneWidth_Integer, sceneHeight_Integer] :=
    Module[{patchesY1, patchesX1, patchesY2, patchesX2},
        
        (*Echo[{patchPositions, patchWidth, patchHeight, sceneWidth, sceneHeight}];*)
        
        patchesY1 = Min[patchPositions[[All, 1]]];
        patchesX1 = Min[patchPositions[[All, 2]]];
        patchesY2 = Max[patchPositions[[All, 1]]] + patchHeight - 1;
        patchesX2 = Max[patchPositions[[All, 2]]] + patchWidth - 1;
        
        centerY = N[(patchesY1 + patchesY2) / 2];
        centerX = N[(patchesX1 + patchesX2) / 2];
        
        effectiveWidth = Max[{centerX, width + 1 - centerX}] * 2 - 1;
        effectiveHeight = Max[{centerY, height + 1 - centerY}] * 2 - 1;
        
        padY = Min[{patchesY1 - 1, sceneHeight - patchesY2}];
        padX = Min[{patchesX1 - 1, sceneWidth - patchesX2}];
        
        <|
            "CenterY" -> centerY,
            "CenterX" -> centerX,
            "Y" -> patchesY1 - padY,
            "X" -> patchesX1 - padX,
            "Y2" -> patchesY2 + padY,
            "X2" -> patchesX2 + padX
        |>
    ]

(*!
    \function ARCCheckForImputationUsingSymmetry
    
    \calltable
        ARCCheckForImputationUsingSymmetry[examples, findSymmetryResult] '' Checks whether the examples repair corruptions in the inputs using symmetry to perform imputation.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCheckForImputationUsingSymmetry]
    
    \maintainer danielb
*)
Clear[ARCCheckForImputationUsingSymmetry];
ARCCheckForImputationUsingSymmetry[ARCScene[imageIn_], findSymmetryResult_Association] :=
    Module[{image = imageIn},
        If [MatchQ[findSymmetryResult["Imputations"], {__}],
            
            (* Repair the image. *)
            Function[{imputation},
                image[[Sequence @@ imputation[[1]]]] = imputation[[2]]
            ] /@ findSymmetryResult["Imputations"];
            
            ARCScene[image]
            ,
            (* There were no corruptions to repair. *)
            False
        ]
    ]

(*!
    \function ARCCheckForSceneRepairUsingImputationQ
    
    \calltable
        ARCCheckForSceneRepairUsingImputationQ[examples] '' Performs some preliminary checks and returns True if we should spend the time to do more in-depth checks of whether these examples involve repairing corruptions using imputation.
    
    Examples:
    
    ARCCheckForSceneRepairUsingImputationQ[ARCParseFile["3631a71a"]["Train"]] === True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCheckForSceneRepairUsingImputationQ]
    
    \maintainer danielb
*)
Clear[ARCCheckForSceneRepairUsingImputationQ];
ARCCheckForSceneRepairUsingImputationQ[examples_List] :=
    Module[{image, colorCounts, diffProportion},
        AllTrue[
            examples,
            Function[{example},
                image = example[["Input", 1]];
                And[
                    Or[
                        And[
                            (* If the input and output images aren't the same size, abort. *)
                            And[
                                ImageWidth[example["Input"]] === ImageWidth[example["Output"]],
                                ImageHeight[example["Input"]] === ImageHeight[example["Output"]]
                            ],
                            colorCounts = Counts[Flatten[image]];
                            (* If the image doesn't have at least 3 colors, abort. *)
                            Length[colorCounts] >= 3,
                            (* If the image's most common color fills > 70% of the space, abort.
                               For example, 3631a71a is 59% black. *)
                            N[Max[colorCounts] / Total[colorCounts]] < 0.7,
                            (* If the percentage difference from input to output is more than 22.5%, abort. *)
                            With[{pixelComparisons = Counts[SameQ @@@ Transpose[{Flatten[image], Flatten[example[["Output", 1]]]}]]},
                                diffProportion = N[pixelComparisons[False] / Total[pixelComparisons]];
                                diffProportion < 0.225
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ]

(*!
    \function ARCCheckForRepeatingPattern
    
    \calltable
        ARCCheckForRepeatingPattern[patternImage, image] '' Check whether image can be created by applying the given `patternImage` repeatedly.
    
    Examples:
    
    With[
        {example = ARCParseFile["d13f3404"]["Train", 1]},
        ARCCheckForRepeatingPattern[
            Replace[example["Input"], 0 -> -1, {3}],
            Replace[example["Output"], 0 -> -1, {3}]
        ]
    ]
    
    ===
    
    <|
        "Type" -> "PatternFill",
        "Pattern" -> ARCScene[{{6, 1, -1}, {3, -1, -1}, {-1, -1, -1}}],
        "Start" -> {1, 1},
        "Trajectory" -> {1, 1}
    |>
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCCheckForRepeatingPattern]
    
    \maintainer danielb
*)
Clear[ARCCheckForRepeatingPattern];
Options[ARCCheckForRepeatingPattern] =
{
    "Background" -> Automatic,          (*< The background color to use. *)
    "SemiParsedExamples" -> Automatic   (*< If the work to form scene objects has already been done, that can be passed in to avoid duplicate work. *)
};
ARCCheckForRepeatingPattern[examples_List, OptionsPattern[]] :=
    Module[
        {
            background,
            backgrounds = <||>,
            rules,
            inputColorCounts,
            outputColorCounts,
            index,
            rule,
            semiParsedExamples = OptionValue["SemiParsedExamples"]
        },
        
        (* Fail-fast checks to decide whether to check whether the outputs are pattern
           fills of the inputs. *)
        index = 0;
        AllTrue[
            examples,
            Function[{example},
                And[
                    (* Disabled these conditions since they aren't compatible with examples like
                       8eb1be9a. *)
                    (* The input image is not large. (width <= 8 and height <= 8) *)
                    (*ImageWidth[example["Input"]] <= 8,
                    ImageHeight[example["Input"]] <= 8,*)
                    (* It should be the case that either/both the output width is at least
                       1.5x the input width or the output height is at least 1.5x the
                       input width, since the input is just a pattern that is being applied
                       a number of times. *)
                    (*Or[
                        ImageWidth[example["Output"]] >= ImageWidth[example["Input"]] * 1.5,
                        ImageHeight[example["Output"]] >= ImageHeight[example["Input"]] * 1.5
                    ],*)
                    Or[
                        ImageWidth[example["Output"]] >= ImageWidth[example["Input"]],
                        ImageHeight[example["Output"]] >= ImageHeight[example["Input"]]
                    ],
                    (* The colors used in the input and output are the same. *)
                    index++;
                    background = backgrounds[index] =
                        Replace[
                            OptionValue["Background"],
                            Automatic :> (
                                If [ListQ[semiParsedExamples],
                                    semiParsedExamples[[index, "Input", "Background"]]
                                    ,
                                    ReturnIfFailure@
                                    ARCInferBackgroundColor[example["Input"]]
                                ]
                            )
                        ];
                    inputColorCounts = KeyDrop[
                        KeySort[Counts[Flatten[example["Input"][[1]]]]],
                        background
                    ];
                    outputColorCounts = KeyDrop[
                        KeySort[Counts[Flatten[example["Output"][[1]]]]],
                        background
                    ];
                    Keys[inputColorCounts] === Keys[outputColorCounts],
                    (* The proportions of colors used in the input and output scenes have each
                       color proportion within 30%. *)
                    inputColorProportions = N[inputColorCounts / Total[inputColorCounts]];
                    outputColorProportions = N[outputColorCounts / Total[outputColorCounts]];
                    AllTrue[
                        Values[N[inputColorProportions / outputColorProportions]],
                        Function[{colorProportion},
                            0.7 < colorProportion < 1.3
                        ]
                    ]
                ]
            ]
        ] // Replace[False :> Return[False, Module]];
        
        rules = MapIndexed[
            Function[{example, exampleIndex},
                background = backgrounds[First[exampleIndex]];
                Replace[
                    ReturnIfFailure@
                    ARCCheckForRepeatingPattern[
                        Replace[example["Input"], background -> -1, {3}],
                        Replace[example["Output"], background -> -1, {3}]
                    ],
                    {
                        rule_Association :> KeyDrop[rule, "Pattern"],
                        False :> Return[False, Module]
                    }
                ]
            ],
            examples
        ];
        
        (*ARCEcho2[rules];*)
        
        (* If all inputs found the same rule, then return it. *)
        If [SingleUniqueValueQ[rules],
            Return[
                rules[[1]],
                Module
            ]
        ];
        
        (* TODO: For each property of the rules, if they don't have consistent values,
                 try inferring their value from scene properties. *)
        
        If [!ListQ[semiParsedExamples],
            semiParsedExamples = MapIndexed[
                Function[{example, index},
                    <|
                        "Input" -> ARCSceneObject[
                            example["Input"],
                            backgrounds[First[index]],
                            Missing[]
                        ]
                    |>
                ],
                examples
            ]
        ];
        
        (*ARCEcho2[examples2];*)
        
        rule = <||>;
        
        (* Try to produce dynamic expressions for propety values that aren't constant. *)
        Function[{property},
            If [SingleUniqueValueQ[rules[[All, property]]],
                (* This property has a predictable constant value. *)
                rule[property] = rules[[1, property]]
                ,
                (* This propety's value varies, so we'll try to produce a dynamic expression
                   that can be used to compute its value. *)
                (*Echo[property -> rules[[All, property]]];*)
                rule[property] = Replace[
                    ARCGeneralizeConclusionValueNonRecursive[
                        property,
                        rules[[All, property]],
                        semiParsedExamples
                    ],
                    _Missing :> Return[False, Module]
                ]
            ]
        ] /@ DeleteDuplicates[Flatten[Keys[rules]]];
        
        (*ARCEcho2[rule];*)
        
        rule
    ]

ARCCheckForRepeatingPattern[ARCScene[patternImageIn_], ARCScene[image_]] :=
    Module[
        {
            patternImage = patternImageIn,
            subImagePositions,
            firstDerivative,
            firstDerivatives,
            trajectory,
            rule,
            originalRule
        },
        
        (* Crop the pattern if there are outer portions that are purely the background
           color. *)
        (* But wait, if like feca6190 example 2 the pattern has empty space to the left
           and right, then the output image should have empty space (whether within the
           scene or outside of the scene) in those locations, so perhaps we don't want
           to prune empty space here. And more importantly, if we prune the space on
           the left for feca6190, it would mean that the "Start" location is no longer
           consistant. For the moment we'll deal with this by not pruning on the top
           and on the left, but this will need more thought to support cases where
           the start location is anchored to the left or bottom of the scene where
           the pattern has empty space on that side. *)
        (* Left *)
        (*While[
            MatchQ[patternImage[[All, 1]], {Repeated[Verbatim[$nonImageColor]]}],
            patternImage = patternImage[[All, 2 ;; -1]]
        ];*)
        (* Right *)
        While[
            MatchQ[patternImage[[All, -1]], {Repeated[Verbatim[$nonImageColor]]}],
            patternImage = patternImage[[All, 1 ;; -2]]
        ];
        (* Top *)
        (*While[
            MatchQ[patternImage[[1]], {Repeated[Verbatim[$nonImageColor]]}],
            patternImage = patternImage[[2 ;; -1]]
        ];*)
        (* Bottom *)
        While[
            MatchQ[patternImage[[-1]], {Repeated[Verbatim[$nonImageColor]]}],
            patternImage = patternImage[[1 ;; -2]]
        ];
        
        (*ARCEcho2[ARCScene[patternImage]];*)
        
        (* Produce a pattern that replaces the background color with a Blank[] so that
           we can find instances of the pattern without the background color pixels
           causing issues. *)
        patternForPatternImage = Replace[
            patternImage,
            $nonImageColor -> _,
            {2}
        ];
        
        (* Find all of the instances of the pattern image within the larger image. *)
        subImagePositions = Replace[
            ReturnIfFailure[
                (*ResourceFunction["FindSubmatrix"][*)
                FindSubmatrix[
                    image,
                    patternForPatternImage,
                    "Positions"
                ]
            ],
            (* If we didn't find any instances, or only found one, then abort. *)
            {} | {_} :> Return[False, Module]
        ];
        
        (*Echo[subImagePositions];*)
        
        (* If one of the ends of the sequence starts at an X or Y value of one, favor that
           as the start. e.g. feca6190 *)
        If [Or[
                And[
                    MatchQ[Last[subImagePositions], {_, 1}],
                    !MatchQ[First[subImagePositions], {_, 1}]
                ],
                And[
                    MatchQ[Last[subImagePositions], {1, _}],
                    !MatchQ[First[subImagePositions], {1, _}]
                ]
            ],
            subImagePositions = Reverse[subImagePositions]
        ];
        
        (* Calculate the "first derivative" along the sequence of positions found. *)
        firstDerivative = Function[{pair},
            pair[[2]] - pair[[1]]
        ] /@ Partition[subImagePositions, 2, 1];
        
        firstDerivatives = DeleteDuplicates[firstDerivative];
        
        (*Echo[firstDerivatives];*)
        
        (* Have we found a constant first derivative along the sequence of positions? *)
        If [Length[firstDerivatives] === 1,
            trajectory = First[firstDerivatives]
            ,
            Return[False, Module]
        ];
        
        (* A candidate rule to consider. *)
        rule = originalRule = <|
            "Type" -> "PatternFill",
            "Pattern" -> ARCScene[patternImage],
            "StartY" -> First[subImagePositions][[1]],
            "StartX" -> First[subImagePositions][[2]],
            "TrajectoryY" -> trajectory[[1]],
            "TrajectoryX" -> trajectory[[2]]
        |>;
        
        (*ARCEcho2[rule];*)
        
        (* Try applying the rule to see if it produces the full image. *)
        output = ConstantArray[
            $nonImageColor,
            {ImageHeight[image], ImageWidth[image]}
        ];
        
        output = ReturnIfFailure[ARCApplyPatternFill[output, rule]];
        
        (*ARCEcho2[ARCScene[output]];*)
        
        If [output === image,
            rule
            ,
            (* If the rule didn't work, check if it works in the opposite direction. *)
            rule["StartY"] = Last[subImagePositions][[1]];
            rule["StartX"] = Last[subImagePositions][[2]];
            trajectory = trajectory * -1;
            rule["TrajectoryY"] = trajectory[[1]];
            rule["TrajectoryX"] = trajectory[[2]];
            (*ARCEcho2[rule];*)
            output = ConstantArray[
                $nonImageColor,
                {ImageHeight[image], ImageWidth[image]}
            ];
            output = ReturnIfFailure[ARCApplyPatternFill[output, rule]];
            (*ARCEcho2[ARCScene[output]];*)
        ];
        
        If [output === image,
            rule
            ,
            (* If the rule didn't work, check if we need to apply it in both directions. *)
            rule = originalRule;
            rule["Bidirectional"] = True;
            (*ARCEcho2[rule];*)
            output = ConstantArray[
                $nonImageColor,
                {ImageHeight[image], ImageWidth[image]}
            ];
            output = ReturnIfFailure[ARCApplyPatternFill[output, rule]];
            (*ARCEcho2[ARCScene[output]];*)
            If [output === image,
                rule
                ,
                False
            ]
        ]
    ]

(*!
    \function ARCApplyPatternFill
    
    \calltable
        ARCApplyPatternFill[image, patternFill] '' Applies a pattern fill to the given image.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCApplyPatternFill]
    
    \maintainer danielb
*)
Clear[ARCApplyPatternFill];
ARCApplyPatternFill[imageIn_List, patternFill_Association] :=
    Module[
        {
            image = imageIn,
            trajectory = {patternFill["TrajectoryY"], patternFill["TrajectoryX"]},
            startPosition = {patternFill["StartY"], patternFill["StartX"]},
            position,
            scene,
            patternObject
        },
        
        If [Or[
                !MatchQ[trajectory, {_Integer, _Integer}],
                trajectory === {0, 0}
            ],
            ReturnFailure[
                "InvalidTrajectory",
                "The pattern fill trajectory is invalid.",
                "Trajectory" -> trajectory
            ]
        ];
        
        scene = <|
            "Position" -> {1, 1},
            "Y" -> 1,
            "X" -> 1,
            "Width" -> ImageWidth[image],
            "Height" -> ImageHeight[image]
        |>;
        
        patternObject = <|
            "Image" -> patternFill["Pattern"],
            "Position" -> TODO,
            "Y" -> TODO,
            "X" -> TODO,
            "Width" -> ImageWidth[patternFill["Pattern"]],
            "Height" -> ImageHeight[patternFill["Pattern"]]
        |>;
        
        Function[{directionModifier},
            trajectory *= directionModifier;
            position = startPosition;
            While[
                ARCOverlapQ[
                    patternObject = Sett[
                        patternObject,
                        {
                            "Position" -> position,
                            "Y" -> position[[1]],
                            "X" -> position[[2]]
                        }
                    ],
                    scene
                ],
                image = ARCDrawSubImage[image, patternObject];
                position += trajectory
            ]
        ] /@
            If [TrueQ[patternFill["Bidirectional"]],
                {1, -1}
                ,
                {1}
            ];
        
        image
    ]

(*!
    \function ARCOverlapQ
    
    \calltable
        ARCOverlapQ[object1, object2] '' Returns True if the two objects overlap wrt their bounding boxes.
    
    Examples:
    
    ARCOverlapQ[object1, object2] === TODO
    
    \maintainer danielb
*)
Clear[ARCOverlapQ];
ARCOverlapQ[object1_Association, object2_Association] :=
    And[
        ARCVerticalOverlapQ[object1, object2],
        ARCHorizontalOverlapQ[object1, object2]
    ]

(*!
    \function ARCSceneObject
    
    \calltable
        ARCSceneObject[image, background, objects] '' Produces an object for the scene itself.
    
    Examples:
    
    See function notebook
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`ARCSceneObject]
    
    \maintainer danielb
*)
Clear[ARCSceneObject];
ARCSceneObject[image_ARCScene, background_, objects_] :=
    Module[{},
        <|
            "Background" -> background,
            "Width" -> ImageWidth[image],
            "Height" -> ImageHeight[image],
            With[{grids = Select[objects, MatchQ[#, KeyValuePattern["GridOrDivider" -> _Association]] &]},
                If [MatchQ[grids, {_}],
                    (* There is a single grid in the scene. *)
                    "Grid" -> KeyDrop[grids[[1, "GridOrDivider"]], {"Type", "Orientation"}]
                    ,
                    Nothing
                ]
            ],
            "Scene" -> image,
            If [!MissingQ[objects],
                Sequence @@ {
                    "Objects" -> objects,
                    (* e.g. d0f5fe59 *)
                    "ObjectCount" -> Length[objects]
                }
                ,
                Nothing
            ],
            KeyTake[
                ARCObjectFromAllPixels[image, background],
                {
                    "Colors",
                    "Color",
                    "ColorCount",
                    "MostUsedColor",
                    "SecondMostUsedColor",
                    "YMiddle",
                    "XMiddle",
                    "Length",
                    "PrimarySizeDimension",
                    "AspectRatio",
                    "Area",
                    "FilledArea",
                    "FilledProportion",
                    "SurfacePixelCount",
                    "VerticalLineSymmetry",
                    "HorizontalLineSymmetry",
                    "VerticalAndHorizontalLineSymmetry",
                    "HollowCount"
                }
            ]
        |>
    ]

(*!
    \function SingleUniqueValueQ
    
    \calltable
        SingleUniqueValueQ[list] '' Given a list, returns True if the list only contains a single unique value.
    
    Examples:
    
    SingleUniqueValueQ[{1, 1, 1}] === True
    
    Unit tests:
    
    RunUnitTests[Daniel`ARC`SingleUniqueValueQ]
    
    \maintainer danielb
*)
Clear[SingleUniqueValueQ];
SingleUniqueValueQ[list_List] :=
    MatchQ[list, {Repeated[value_]}]

End[]

EndPackage[]

If [TrueQ[DevTools`$DebugLoad], Print["Done: Daniel`ARC`"]];