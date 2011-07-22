#!/bin/sh
#
# GlobalConfig 0.1
# author: samu <samu@pirc.pl>
#
# Licence: Creative Commons Attribution-ShareAlike 3.0 Unported
# http://creativecommons.org/licenses/by-sa/3.0/
#
# This script invokes make config for every missing port, which will
# be required by the port which you are about to compile, preventing
# make config from appearing during the compile process. This allows
# you to leave the compile process and go for a coffee ;-)

echo "Fetching missing ports names, this could take a while...";

CWD=`/bin/pwd`;
MISSING=`/usr/bin/make missing`;
MISCNT=`echo $MISSING |wc -w |awk '{print $1}'`;
BASEPATH="/usr/ports";

TMP=1;

for port in $MISSING; do
	echo -n "[ ${TMP}/${MISCNT} ] ";
	echo -n "${port} ";
	/usr/bin/cd ${BASEPATH}/${port};
	/usr/bin/make config;
	TMP=$(( TMP + 1 ));
done

/usr/bin/cd $CWD;
echo "Done. Port is ready to compile";
