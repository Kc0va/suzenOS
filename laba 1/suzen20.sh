#!/bin/bash
cd ~john/
rm -rf ./*
cd ~suzen/
echo "Flag is: $(ls -a | grep -o '[0-9a-zA-Z]\{28\}')"

