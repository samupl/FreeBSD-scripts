#!/bin/sh
#
# service 0.1
# author: Jakub 'samu' Szafranski <samu@pirc.pl>
#
# Licence: Creative Commons Attribution-ShareAlike 3.0 Unported 
# http://creativecommons.org/licenses/by-sa/3.0/
# 
#
# Simple service command wrapper for FreeBSD >= 6.2
#
# All it does is check if the service ($1) exists
# in both /etc/rc.d and /usr/local/etc/rc.d and
# then execute it, optionally with a parameter ($2)
#
# eg. service nginx reload
#     service abi start
#     service nginx
#
#

DIR1="/etc/rc.d";
DIR2="/usr/local/etc/rc.d";

if [ -e "${DIR1}/${1}" ]; then
        ${DIR1}/${1} ${2};
else
	if [ -e "${DIR2}/${1}" ]; then
	        ${DIR2}/${1} ${2};
		exit
	fi
echo "Nie ma takiego skryptu startowego!";
fi

