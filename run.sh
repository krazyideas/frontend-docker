#!/bin/bash

commandScrBackend=.backendUrl=\"http://$BACKEND_PORT_8080_TCP_ADDR:8080\"

cat conf/config.json | ./jq-linux64 $commandScrBackend > test.json

mv test.json conf/config.json

npm start
