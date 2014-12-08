#!/bin/sh +xe

javac StaticBlock.java StaticConstruction.java
javap -c -s -l -p StaticBlock.class >StaticBlock.tclass
javap -c -s -l -p StaticConstruction.class >StaticConstruction.tclass
diff StaticBlock.tclass StaticConstruction.tclass
