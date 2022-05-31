#!/usr/bin/env bash
FUNC=maybeGo

rm main main.zip

set -e

GOOS=linux GOARCH=amd64 go build main.go
zip main.zip main
aws lambda update-function-code --function-name  "$FUNC" --zip-file fileb://main.zip > lambda.log
rm main main.zip

sleep 3
curl -i https://hx3ydnm5ttc5klozhoyzf7ctre0cntbh.lambda-url.eu-central-1.on.aws/
echo
curl https://hx3ydnm5ttc5klozhoyzf7ctre0cntbh.lambda-url.eu-central-1.on.aws/?name=123
echo
