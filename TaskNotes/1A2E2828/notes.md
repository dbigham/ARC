# 1A2E2828

## Examples

![ARC examples for 1A2E2828](examples.png?raw=true)

## Rules (DSL)

![DSL rules for 1A2E2828](rules.png?raw=true)

## Notes
My very first implementation of occlusion detection only supported lines occluding each other, so to get this input to work, I enhanced that function to also support both lines and rectangles occluding each other in the way they do here.

In making occlusion detection more general, it caused some other inputs to break, because it was detecting some false positive occlusions. I fixed those by adding additional heuristics, but this is more evidence that a better solution for occlusion detection would be to train an ML model so that it could learn the nuances of when something is an occlusion or not.
