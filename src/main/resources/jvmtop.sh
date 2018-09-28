#!/bin/sh

if [ -z $JAVA_HOME ]; then
   echo "Please set JAVA_HOME"
   exit 1
fi
exec java -Xmx1G -Djava.library.path="$JAVA_HOME/jre/bin" -cp "$0:$JAVA_HOME/lib/tools.jar" com.jvmtop.JvmTop "$@"

