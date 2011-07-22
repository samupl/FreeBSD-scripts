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
#
# TODO: make config for dependencies denepdencies, etc.

CWD=`/bin/pwd`
missing=`/usr/bin/make all-depends-list`
miscnt=`echo $missing |wc -w |awk '{print $1}'`

tmp=1

for port in $missing; do
	echo -n "[ ${tmp}/${miscnt} ] "
	echo -n "${port} "
	cd ${port}
	/usr/bin/make config
	tmp=$(( tmp + 1 ))
done

echo "Done. Port is ready to compile"
