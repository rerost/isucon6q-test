#!/bin/bash

# $ ls
# ~/deploy/db$ ls
# goose.sh  isuda  isutar
# $ ls isuda/db/
# dbconf.yml

# prese prepare DBNAME/dbconf.yml and set dbnames=("DBNAME1", "DBNAME2")

# ./goose.sh all status
# ./goose.sh DBNAME status

SCRIPT_DIR=$(cd $(dirname $0);pwd)
dbnames=("isuda" "isutar")

set -e

if [ $1 = "all" ]; then
  for db in ${dbnames[@]}; do
    echo "DBNAME = $db"
    cd $SCRIPT_DIR/$db
    $GOPATH/bin/goose ${@:3:($#-2)}
    cd ../
    echo -e "---------------------------------------\n\n"
  done
else
  echo "DBNAME = $1"
  cd $SCRIPT_DIR/$1
  $GOPATH/bin/goose ${@:3:($#-2)}
  cd ../
  echo -e "---------------------------------------\n\n"
fi


