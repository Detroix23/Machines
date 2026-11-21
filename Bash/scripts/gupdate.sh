#!/bin/bash
# Update all packages in one go.

COMMANDS=(
  "apt-get update --assume-yes"
  "apt-get upgrade -assume-yes"
  "dnf update --assumeyes"
  "flatpak update --assumeyes"
  "npm -g update"
  "rustup update"
  "rustup self update"
  "opam update"
  "opam upgrade"
  "code --update-extensions"
)
COLOR_END="\033[0m"
COLOR_HEADER="\033[1;34m"
COLOR_RED="\033[0;31m"
COLOR_GREEN="\033[0;32m"

function exists() {
  command="$1";
  command -v "${command%% *}" >/dev/null 2>&1
}

function root_status() {
  if [[ $EUID > 0 ]]; then
    echo -en "${COLOR_RED}not root${COLOR_END}";
  else
    echo -en "${COLOR_GREEN}root${COLOR_END}";
  fi;
}

function commands_print {
  for command in "${COMMANDS[@]}"; do
    echo -n "| ";  
    if exists "${command}"; then
      echo -en "${COLOR_GREEN}";
    else
      echo -en "${COLOR_RED}";
    fi;
      
    echo -e "\`${command}\`${COLOR_END} ";
  done
}

function case_no {
  echo "Process canceled by user.";
}

function case_yes {
  echo "Starting updates.";
  for command in "${COMMANDS[@]}"; do
    if exists "${command}"; then
      echo -e "${COLOR_HEADER}(?) Executing \`${command}\`. ${COLOR_END}"
      eval "${command}";
      echo "";
    fi;
  done;
}

function main {
  echo "Proceed with packages and system update ? ";

  echo -n "+ Status : "
  root_status;
  echo "";

  echo "+ Commands : ";
  commands_print;
  echo "";

  echo -n "+ Answer (yes|no) [no] : ";
  read answer;

  case $answer in
    Y | y | yes) case_yes;;
    *) case_no;;
  esac;
}

main;
