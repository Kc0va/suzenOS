#!/bin/bash
echo "Flag is: $(id root | grep -o '[0-9a-zA-Z]\{28\}')"
