#!bin/bash
mkdir Music
cp -R Desktop/music/* Music
echo "Flag is: $(ls -a | grep -o '[0-9a-zA-Z]\{28\}')"
