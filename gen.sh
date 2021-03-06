#!/bin/sh

lib=../lib
classpath=$lib/xalan.jar:$lib/serializer.jar
schema=$lib/smsgenerate.xsl

if [ ! -f "$schema" ]; then
    echo "ERROR: Schema not found"
    exit 1
fi

rm -f -r java

java_cmd="java -classpath $classpath org.apache.xalan.xslt.Process -in application.xml -xsl $schema"

echo $java_cmd

$java_cmd
