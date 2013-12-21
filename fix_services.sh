#! /bin/bash

cd target
mkdir tmp

BIGJOB_JAR=`ls *-jar-with-dependencies.jar`
echo "unzip"
unzip $BIGJOB_JAR -d tmp

echo "copy services config"
cp ../src/main/resources/META-INF/services/* tmp/META-INF/services/

cd tmp
jar -cvfm $BIGJOB_JAR META-INF/MANIFEST.MF *

cp $BIGJOB_JAR ..