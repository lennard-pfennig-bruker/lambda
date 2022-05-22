set -e

export GOOS=linux
export GOARCH=386

go build -o main main.go

zip deployment.zip main
