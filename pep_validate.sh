#!/bin/bash
set -e

if [ ! -f "setup.cfg" ]; then
    # If we are not already in a setup directory
    cd /repo
fi

if [ "$nopython" != "1" ]; then
    echo Validating syntax
    for X in $(find . -name "*.py") ; do cat $X | python3 -c "import sys, os; compile(sys.stdin.read(), sys.argv[1], 'exec')" $X ; done
fi

pep8 .
