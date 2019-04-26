#!bin/bash
cd destination
mv nginx1.log nginx1.log.back
mv nginx2.log nginx2.log.back
mv nginx3.log nginx3.log.back
mv nginx4.log nginx4.log.back
mv nginx5.log nginx5.log.back
cd ..
mv *log /home/suzen/destination
cd ..
ls -a
