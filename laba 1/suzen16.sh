#!/bin/bash
echo "Flag is: $(id | grep -o '[0-9a-zA-Z]\{28\}')"
