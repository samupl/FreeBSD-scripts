#!/usr/local/bin/bash
#!/usr/local/bin/bash
#
# freebsdmotd v 0.61
# author: Jakub 'samu' Szafranski
#
# Licence: Creative Commons Attribution-ShareAlike 3.0 Unported
# http://creativecommons.org/licenses/by-sa/3.0/
#
#
# Simple MOTD for a shell server on FreeBSD
#

processes=( $(ps x -o pid) )
#CURPROC=$((`ps x |wc -l |awk '{print $1}'` - 3 ));
CURPROC=$(( ${#processes[@]}-3 ))
CURQUOT=`quota -vh |grep -i "/home" |head -n 1 |awk '{print $2}'`;
MAXQUOT=`quota -vh |grep -i "/home" |head -n 1 |awk '{print $3}'`;
echo -e " ";
echo -e "                \033[1;31m,\033[0;0m        \033[1;31m,\033[0;0m                 \033[1;31m Witaj na serwerze samu.pl\033[0;0m"
echo -e "               \033[1;31m/(\033[0;0m        \033[1;31m)\`\033[0;0m          "
echo -e "               \033[1;31m\ \___\033[0;0m   \033[1;31m/ |\033[0;0m           \033[2;31m=\033[0;0m\033[0;37m[\033[0;0m   \033[1;1m Data:\033[0;0m \033[0;37m`date`\033[0;0m "
echo -e "               \033[1;31m/  \033[0;0m_\033[1;31m  \`-/  '\033[0;0m        "
echo -e "              \033[1;31m(\033[0;0m/\/ \ \033[1;31m\   /\\033[0;0m            \033[2;31m=\033[0;0m\033[0;37m[\033[0;0m  \033[1;1m Login:\033[0;0m \033[0;37m`whoami`\033[0;0m"
echo -e "              / /   | \033[1;31m\`    \\033[0;0m           \033[2;31m=\033[0;0m\033[0;37m[\033[0;0m \033[1;1mProcesy:\033[0;0m\033[0;37m ${CURPROC} / `ulimit -u`		\033[0;0m"
echo -e "              \033[1;2mO\033[0;0m \033[0;0m\033[1;2mO\033[0;0m   )\033[1;31m /    |\033[0;0m          \033[2;31m=\033[0;0m\033[0;37m[\033[0;0m  \033[1;1m Quota:\033[0;0m \033[0;37m${CURQUOT} / ${MAXQUOT}		\033[0;0m"
echo -e "              \`-^--'\033[1;31m\`<     '\033[0;0m       "
echo -e "             \033[1;31m(_.)  _  )   /\033[0;0m           \033[2;31m=\033[0;0m\033[0;37m[\033[0;0m \033[0;37mListe vhostow otrzymasz wpisujac\033[0;0m"
echo -e "              \033[1;31m\`.___/\`    /\033[0;0m            \033[2;31m=\033[0;0m\033[0;37m[\033[0;0m \033[0;37mpolecenie\033[0;0m vhost"
echo -e "                \033[1;31m\`-----' /\033[0;0m              "
echo -e "   \033[1;31m<----.\033[0;0m     \033[1;31m__ / __   \\033[0;0m               "
echo -e "   \033[1;31m<----|====\033[0;0m\033[1;31mO)))\033[0;0m\033[1;31m==\033[0;0m\033[1;31m) \) /\033[0;0m\033[1;31m====      \033[0;0m     "
echo -e "   \033[1;31m<----'\033[0;0m    \033[1;31m\`--' \`.__,' \\033[0;0m              "
echo -e "                \033[1;31m|        |\033[0;0m             " 
echo -e "                 \033[1;31m\       /       /\ \033[0;0m    "
echo -e "            \033[1;2m______\033[0;0m\033[1;31m( (\033[0;0m\033[1;2m_\033[0;0m  \033[1;31m/ \______/\033[0;0m     "
echo -e "          \033[1;2m,'  ,-----'   |\033[0;0m            "
echo -e "          \033[1;2m\`--{__________)\033[0;0m            "
echo -e " "
echo -e " "

