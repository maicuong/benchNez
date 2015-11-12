#!/bin/sh

MOZ="/Users/tsunade/Documents/workspace/moz/build/moz"
JAVA_MOZ="bytecode/java8.moz"
JS_MOZ="bytecode/javascript4.moz"
JAVA="../nez-sample/_/java"
JS="../nez-sample/_/js"

echo "#### bench java files ####\n"
COUNT=0
for file in ${JAVA}/*.java
do
  echo ${file}
  COUNT=`expr $COUNT + 1`
  ${MOZ} -p ${JAVA_MOZ} -i ${file} -s -n 5
done

echo ${COUNT}

echo "#### bench javascript files ####\n"
COUNT=0
for file in ${JS}/*.js
do
  echo ${file}
  COUNT=`expr $COUNT + 1`
  ${MOZ} -p ${JS_MOZ} -i ${file} -s -n 5
done

echo ${COUNT}
