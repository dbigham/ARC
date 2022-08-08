# c0f76784

## Examples

![ARC examples for c0f76784](examples.png?raw=true)

## Rules (DSL)

![DSL rules for c0f76784](rules.png?raw=true)

## Notes

### Finding Rules


#### Scene Parsing

We parse the input and output scenes into objects.

The objects in the output scenes each have two component images.

e.g.


![image 1](image1.png?raw=true)


#### Mapping Input Objects to Output Objects

For each input object, there is only one object in the output scene with a matching color and shape, making it straightforward to produce a mapping from input objects to output objects. Each mapping involves an AddComponents transform.

e.g.


![image 2](image2.png?raw=true)


#### Finding Rules from Object Mappings

We notice that if we group the object mappings by the image of their input object, the transformation applied is consistent.


![image 3](image3.png?raw=true)
