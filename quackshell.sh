function banner(){
echo "${white}
                                            
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
}
function menuopt(){
echo "${green}

             Quackshell Options:        
   
${green}[${yellow}01${green}] ${white}SMS Attack              ${green}[${yellow}06${green}] ${white}POD Attack
${green}[${yellow}02${green}] ${white}NTP Attack              ${green}[${yellow}07${green}] ${white}Slowloris 
${green}[${yellow}03${green}] ${white}TCP Attack              ${green}[${yellow}08${green}] ${white}Memcached 
${green}[${yellow}04${green}] ${white}UDP Attack              ${green}[${yellow}09${green}] ${white}HTTP DDoS 
${green}[${yellow}05${green}] ${white}SYN Attack              ${green}[${yellow}10${green}] ${white}NjRAT    
 
"${white}
read -p "${yellow}Select an option: "${white} menuopt
if [[ "${menuopt}" == "01" || "${menuopt}" == "1" ]]
then
quacksms
elif [[ "${menuopt}" == "02" || "${menuopt}" == "2" ]]
then
quacktype="NTP"
quackip
elif [[ "${menuopt}" == "03" || "${menuopt}" == "3" ]]
then
quacktype="TCP"
quackip
elif [[ "${menuopt}" == "04" || "${menuopt}" == "4" ]]
then
quacktype="UDP"
quackip
elif [[ "${menuopt}" == "05" || "${menuopt}" == "5" ]]
then
quacktype="SYN"
quackip
elif [[ "${menuopt}" == "06" || "${menuopt}" == "6" ]]
then
quacktype="POD"
quackip
elif [[ "${menuopt}" == "07" || "${menuopt}" == "7" ]]
then
quacktype="SLOWLORIS"
quackip
elif [[ "${menuopt}" == "08" || "${menuopt}" == "8" ]]
then
quacktype="MEMCACHED"
quackip
elif [[ "${menuopt}" == "09" || "${menuopt}" == "9" ]]
then
quackhttp
elif [ "${menuopt}" == "10" ]
then
quacktype="NJRAT"
quackip
else
echo "${red}Invalid option."
sleep 2s
banner
menuopt
fi
}
function quacksms(){
read -p "${green}Target number: "${white} target
read -p "${green}Timeout: "${white} timeout
read -p "${green}Threads: "${white} threads
read -p "
${green}Target: ${yellow}${target}${green}, Timeout: ${yellow}${timeout}${green}, Threads: ${yellow}${threads}

${white}Continue? y/N - "${yellow} yesno
if [[ "$yesno" == "y" || "$yesno" == "Y" ]]
then
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
function quackip(){
read -p "${green}Target IP: "${white} target
read -p "${green}Timeout: "${white} timeout
read -p "${green}Threads: "${white} threads
read -p "
${green}Target: ${yellow}${target}${green}, Timeout: ${yellow}${timeout}${green}, Threads: ${yellow}${threads}

${white}Continue? y/N - "${yellow} yesno
if [[ "$yesno" == "y" || "$yesno" == "Y" ]]
then
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
function quackhttp(){
read -p "${green}Target URL: "${white} target
read -p "${green}Timeout: "${white} timeout
read -p "${green}Threads: "${white} threads
read -p "
${green}Target: ${yellow}${target}${green}, Timeout: ${yellow}${timeout}${green}, Threads: ${yellow}${threads}

${white}Continue? y/N - "${yellow} yesno
if [[ "$yesno" == "y" || "$yesno" == "Y" ]]
then
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
banner
menuopt
