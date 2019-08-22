#!/bin/bash

base_command="docker-compose"
command=""

exe=false
help=false
invalid=false
prune=false

help_message="
$(basename "$0") [-bcdehiprsS] [-C n] program to startup docker compose\n\n

where:\n
  -b | --build builds all or chosen container[s]\n
  -c | --config shows compose config\n
  -d | --dev starts all or chosen container[s] with logs\n
  -e | --enter opens shell of chosen container[s]\n
  -h | --help shows this help message\n
  -i | --info shows running docker images
  -p | --prune prunes unused containers and network\n
  -r | --rebuild rebuilds all or chosen container[s]\n
  -s | --start starts all or chosen container[s]\n
  -S | --stop stops compose\n\n

  -C | --container [n] inserts chosen container[s] into command\n
"

while (( "$#" )); do

  case "$1" in

    # base commands

    -b | --build)
      command="build"
      shift;;

    -c | --config)
      command="config"
      break;;

    -C | --container)
      shift
      command="$command $@"
      break;;

    -d | --dev)
      command="up"
      shift;;

    -e | --enter)
      base_command="docker"
      command="exec -it"
      exe=true
      shift;;

    -h | --help)
      help=true
      break;;

    -i | --info)
      base_command="docker ps"
      break;;

    -p | --prune)
      prune=true
      break;;

    -r | --rebuild)
      command="build --no-cache"
      shift;;

    -s | --start)
      command="up -d"
      shift;;

    -S | --stop)
      command="down"
      break;;

    -* | --*)
      invalid=true
      break;;

  esac

done

if $exe; then
  command="$command /bin/bash"
fi

case true in

  $help)
  echo -e $help_message;;

  $invalid)
  echo -e "Invalid command\n $help_message";;

  $prune)
  docker container prune -f && docker network prune -f;;

  *)
  $base_command $command;;

esac
