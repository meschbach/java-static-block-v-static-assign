#!/bin/sh +xe

javac StaticOrdering.java
javap -c -s -l -p StaticOrdering.class >StaticOrdering.tclass
cat StaticOrdering.tclass
