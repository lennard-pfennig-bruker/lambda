package main

import (
	"context"
	"fmt"
	"github.com/aws/aws-lambda-go/lambda"
)

type MyEvent struct {
	Name string `json:"name"`
}

func HandleRequest(ctx context.Context, name MyEvent) (string, error) {
	return fmt.Sprintf("Dajum? '%s' -- %s --aaa!", name.Name, name), nil
}

func main() {
	lambda.Start(HandleRequest)
}
