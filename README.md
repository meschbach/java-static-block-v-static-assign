## Background
I was recently in a discussion with a person knowledge about the inner workings of the JVM.  We had a difference of opinion in regards to the initialization phases of a class and the assignment of class variable value.  One person postulated all class variables would be initailized prior to the execution a static block.  The other person postulated the variables would be initialized in textual order of the source file, interspersed with the static blocks.

# `<clinit>`
One question resulting from the discussion was if the assignemnt occured with <clinit> or a different class initialziation phase.  This expiriment utilized the source files `StaticBlock.java` and `StaticConstruction.java` using the proceedure defined in `generate_diff.sh`.  The results are as follows:

```diff
1,2c1,2
< Compiled from "StaticBlock.java"
< public class StaticBlock {
---
> Compiled from "StaticConstruction.java"
> public class StaticConstruction {
6c6
<   public StaticBlock();
---
>   public StaticConstruction();
25,26c25
<       line 7: 0
<       line 8: 12
---
>       line 4: 0
```

As you can see, both result in the <clinit> static block being generated and are byte code equivelent with the exception of hte names and line numbers.

