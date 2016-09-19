#!/bin/bash

#Script to create an alias to the current directory
BASHALIASES=$HOME/.bash_aliases;
CURRDIR=$(PWD);


echo "$CURRDIR;" >> $BASHALIASES;
