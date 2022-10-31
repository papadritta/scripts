NC="\e[0m"           # no color
CYAN="\e[1m\e[1;96m" # cyan color

function printLogo {
  bash <(curl -s https://raw.githubusercontent.com/papadritta/scripts/main/logo.sh)
}

function printLine {
  echo "---------------------------------------------------------------------------------------"
}

function printCyan {
  echo -e "${CYAN}${1}${NC}"
}

function addToPath {
  source $HOME/.bash_profile
  PATH_EXIST=$(grep ${1} $HOME/.bash_profile)
  if [ -z "$PATH_EXIST" ]; then
    echo "export PATH=$PATH:${1}" >>$HOME/.bash_profile
  fi
}
