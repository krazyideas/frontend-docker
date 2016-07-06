#!/bin/bash

commandScrBackend=.backendUrl=\"http://$BACKEND_HOST:8080\"
githubCallback=.providers.github.callbackURL=\"http://$FRONTEND_HOST:3000/auth/github/callback\"
facebookCallback=.providers.facebook.callbackURL=\"http://$FRONTEND_HOST:3000/auth/facebook/callback\"

cat conf/config.json | ./jq-linux64 $githubCallback > test.json
cat test.json | ./jq-linux64 $githubCallback > test2.json
cat test2.json | ./jq-linux64 $facebookCallback> testFinal.json

mv testFinal.json conf/config.json

npm start
