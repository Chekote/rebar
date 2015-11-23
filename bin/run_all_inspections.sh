#!/bin/bash

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

echo "Clearing out previous inspection reports..."
rm -rf "$ROOT"/reports/*

echo "Running PHP Mess Detector checks..."
"$ROOT"/vendor/bin/phpmd "$ROOT" text cleancode,codesize,controversial,design,naming,unusedcode \
  --reportfile "$ROOT"/reports/phpmd.txt \
  --exclude "$ROOT"/vendor

case $? in
  1)
    echo "An error occured running PHP Mess Detector checks."
    exit 1
    ;;
  2)
    echo "Code did not pass PHP Mess Detector checks."
    exit 1
    ;;
esac

echo "All changes passed inspection."
exit 0;
