# 5bd6f4ac

## Examples

![ARC examples for 5bd6f4ac](examples.png?raw=true)

## Rules (DSL)

![DSL rules for 5bd6f4ac](rules.png?raw=true)

## Notes
This example makes use of the parsing mode that, upon there being no rule set found, notices that the input size is always a multiple of the output size, and so uses that as a hint to try using the size of the output to break the input up into a “grid” of objects of that size.

As of September 9 2022, a nice improvement would be to enhance the function that simplifies certain rules to instead use an Except pattern, which should ideally simplify the deletion rule.
