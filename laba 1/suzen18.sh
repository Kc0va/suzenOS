#!/bin/bash
echo "Flag is: $(man diary | grep -o '[0-9a-zA-Z]\{28\}')"

