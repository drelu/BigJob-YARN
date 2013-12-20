#!/bin/bash

export HADOOP_HOME=/usr/local/hadoop-2.2.0
export HADOOP_CONF_DIR=/usr/local/hadoop-2.2.0/etc/hadoop
export YARN_CONF_DIR=/usr/local/hadoop-2.2.0/etc/hadoop

yarn --config /usr/local/hadoop-2.2.0/etc/hadoop/ -jar  target/BigJob-YARN-0.1-SNAPSHOT-jar-with-dependencies.jar  com.bigjob.Client -jar target/BigJob-YARN-0.1-SNAPSHOT-jar-with-dependencies.jar  -debug -shell_command /bin/date
