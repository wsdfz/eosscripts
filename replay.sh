#!/bin/sh

./run_mongo.sh

nohup ./_replay.sh > replay.log &
