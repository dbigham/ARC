# 1caeab9d

## Examples

![ARC examples for 1caeab9d](examples.png?raw=true)

## Rules (DSL)

![DSL rules for 1caeab9d](rules.png?raw=true)

## Notes

### Finding Rules


#### Scene Parsing

* We parse the input and output scenes into objects.
* When parsing the output scene of example 2, we only get 1 contiguous object since the rectangles are touching.
   * However, this object does have three (colored)  components. i.e. <|..., “Components” -> {..., ..., ...}, ...|>
   * Strategy: If there are any composite objects, do further analysis to decide whether they should be kept or any parts broken off.
       * For each composite object, if we can map it directly to an object in the other scene, keep it.
       * Otherwise, for each part of the component, check if it can uniquely map to a top-level object in the corresponding input/output scene.
       * If we can, we will remove it from the composite object and treat it as a top-level object.

#### Mapping Input Objects to Output Objects

For each input object, there is only one object in the output scene with a matching color and shape, making it straightforward to produce a mapping from input objects to output objects. Each mapping involves a Move transform.

e.g.



![image 1](image1.png?raw=true)


#### Finding Rules from Object Mappings

* It is straightforward to notice that if an object is blue, it stays constant, and that red and yellow objects always move.
* Before we can specify the rules for red and yellow, objects, we first need to notice that there are always the following objects:
   * A red object: Object[<|”Colors” -> {“Red”}|>]
   * A yellow object: Object[<|”Colors” -> {“Yellow”}|>]
   * A blue object: Object[<|”Colors” -> {“Blue”}|>]
* Given the above referenceable objects, upon considering the move transforms for one of the remaining colors (yellow or red), we can check whether the parameters of those move transforms can be reliably inferred using any of the properties of any of the referenceable objects.
   * In our case, we notice that ObjectValue[<|"Colors" -> {"Blue"}|>, "Y"] can be used to infer the "Y" value of the move transforms. 
   * We also notice that the “X” coordinate doesn’t change, so we can eliminate it from the move transforms.


![image 2](image2.png?raw=true)

* A further improvement would be to notice that all of the color rules except for one uses the same transform, and to merge them, generalizing the pattern to be: <|”Colors” -> Except[{“Blue”}]|>
* As of August 20 2022, we now have rule simplification code that does this:


![image 3](image3.png?raw=true)
