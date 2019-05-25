#!bin/bash
echo "Flag is: $(less flag | grep -o '[0-9a-zA-Z]\{28\}')"

