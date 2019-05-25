#!/bin/bash
rm [0-9]*.txt [a-z]*.png test-*.log [0-9][0-9].txt
echo "Flag is: $(ls -a | grep -o '[0-9a-zA-Z]\{28\}')"
