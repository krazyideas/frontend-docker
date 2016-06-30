#!/bin/bash

commandScrBackend=.backendUrl=\"http://backend:8080\"

cat conf/config.json | ./jq-linux64 $commandScrBackend > test.json

mv test.json conf/config.json

npm start
