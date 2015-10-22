#!/bin/bash

# Initially created by Peter Funk. Extended by J.R.I.B.-Wein.
# https://www.wayneandlayne.com/blog/2013/02/27/kicad-tutorial-using-the-autorouter/

cd $HOME

if [ ! -d FreeRouting ]; then
    git clone https://github.com/nikropht/FreeRouting
fi
	
cd FreeRouting
git pull

# 1. Check prerequisites:
if [ ! -f /usr/share/java/jh.jar ] || [ ! -f /usr/share/icedtea-web/netx.jar ]; then
    sudo aptitude install javahelp2 icedtea-netx-common
fi

# 2. Compile:
if javac -classpath /usr/share/java/jh.jar:/usr/share/icedtea-web/netx.jar `find . -type f -name "*.java"`
then
   	jar cfe fr.jar gui.MainApplication `find . -type f -name "*.class" -o -name "*.properties"`
else echo "*** Some .java file was not compiled. See above" 1>&2
	exit 1
fi
# 3. Run:
java -jar fr.jar
