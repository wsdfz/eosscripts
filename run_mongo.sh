#!/bin/sh

# OPEN MONGODB
ps -ef | grep "mongod" | grep -v "grep" && exit

mkdir -p /mnt/mongodb/data
nohup ~/opt/mongodb/bin/mongod --dbpath /mnt/mongodb/data > mongo.log &





