pwd=$(pwd)
source ${pwd}/svar.sh
function banner {
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
}
sleep 0.5
clear
banner
echo -e "${green}Updating packages..."${white}
apt update -y
apt upgrade -y
sleep 0.5
clear
banner
echo -e "${green}Installing python..."${white}
apt install -y python
sleep 0.5
clear
banner
echo -e "${green}Installing python2..."${white}
apt install -y python2
sleep 0.5
clear
banner
echo -e "${green}Installing pip packages..."${white}
pip install phonenumbers
pip install requests
pip install scapy
pip install wget
pip install argparse
chmod 777 quackshell.sh
sleep 0.5
clear
banner
echo -e "${green}Install successfuly."${white}
echo -e "${green}Run the command: ${white}./quackshell.sh"