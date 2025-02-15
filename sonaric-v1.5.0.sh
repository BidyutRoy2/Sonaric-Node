#!/bin/bash

export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[1;33m'
export NC='\033[0m'  # No Color

prompt() {
    local message="$1"
    read -p "$message" input
    echo "$input"
}

execute_and_prompt() {
    local message="$1"
    local command="$2"
    echo -e "${YELLOW}${message}${NC}"
    eval "$command"
    echo -e "${GREEN}Done.${NC}"
}

echo
execute_and_prompt "Stopping sonaric node..." "sudo systemctl stop sonaricd"
echo
execute_and_prompt "Updating packaging lists..." "sudo apt update"
echo
execute_and_prompt "Upgrading sonaric node..." "sudo apt upgrade sonaric"
echo
execute_and_prompt "Reloading systemd manager config..." "sudo systemctl daemon-reload"
echo
execute_and_prompt "Restarting sonaric node..." "sudo systemctl restart sonaricd"
echo
execute_and_prompt "Checking sonaric node status..." "sudo systemctl status sonaricd"
echo

echo -e '\e[40m\e[92m'

echo -e ' ##   ##   ######  #####    #####    #######  ##    ## '
echo -e ' ##   ##     ##    ##  ##   ##  ##   ##       ###   ## '
echo -e ' ##   ##     ##    ##   ##  ##   ##  ##       ## #  ## '
echo -e ' #######     ##    ##   ##  ##   ##  #####    ##  # ## '
echo -e ' ##   ##     ##    ##   ##  ##   ##  ##       ##   ### '
echo -e ' ##   ##     ##    ##  ##   ##  ##   ##       ##    ## '
echo -e ' ##   ##   ######  #####    #####    #######  ##    ## '
                                                      
echo -e '        #####     #######  ##     ## '
echo -e '       ##   ##    ##       ###   ### ' 
echo -e '       ##         ##       ## # # ## '  
echo -e '       ##  #####  #####    ##  #  ## '  
echo -e '       ##   ## #  ##       ##     ## '  
echo -e '       ##   ## #  ##       ##     ## '  
echo -e '        #####     #######  ##     ## '

echo -e ' Wellcome To Hidden Gem Node Running Installation Guide '

echo -e '\e[0m'

