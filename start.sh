#!/bin/bash
echo "launching mosquitto subscribing..."
cd $HOME/domotik/mosquitto_sub
./syslog.sh
./mongodb.sh
echo "launching web interface"
cd $HOME/domotik/web
npm install
bower install
npm start &
echo "go to http://localhost:3000"