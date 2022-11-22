# How it Works

## Summary

In general here's how my approach works:

1. Parse a scene into objects. Do this for both the input scene and output scene, for all input/output pairs of the task.

2. For each input/output pair, find the mapping from input objects to output objects. i.e. Given an object in the input, which object in the output does it correspond with (if any)? If the mapping involves a transform (e.g. movement), then annotate the mapping with the parameters of the transform. If an object in the input _doesn't_ correspond with any object in the output, then it was removed. Objects in the output without any corresponding object from the input are _added_ objects.

3. Try to find a list of rules that can be used to transform any input scene of the task to its corresponding output scene. Each rule has a left side, which is a pattern that specifies which input objects it should be applied to, and a right side, which describes the transform to apply to the object.

When finding rules, it is useful to first consider what "referenceable" objects there are. For example, if every input has a blue object in the scene, then Object[<|"Colors" -> {"Blue"}] can be added to our list of referenceable things, and the rule finder can check whether any of the property values of those blue objects are useful to dependably infer any transform parameters.

And of course, when searching for rules, we consider different left-hand sides for our rules (the pattern portion) using the property values we see in the scene. For example, if the transformed objects in our scene are always either red or yellow, then we can consider the objects of one color at a time to see whether we can find any rules that can dependably transform objects of that color, etc.

## Examples

Here's a simple example:

[Training Task 0ca9ddb6](TaskNotes/0ca9ddb6/notes.md)

Implemented tasks with notes are linked from the ["Tasks Implemented" section of the REAMDE page](README.md#tasks-implemented).