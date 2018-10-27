#!/bin/sh
# to debug startup issues, add this to command line: >>app.log 2>&1

DIR=`dirname "$0"`
cd "$DIR"
cd ../../..
"$DIR"/GP "$DIR"/runtime/lib/*.gp "$DIR"/runtime/startup.gp
