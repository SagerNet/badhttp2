#!/usr/bin/env bash

PROJECTS=$(dirname "$0")/../..

go get -x github.com/sagernet/sing@$(git -C $PROJECTS/sing rev-parse HEAD)
go get -x github.com/sagernet/badhttp@$(git -C $PROJECTS/badhttp rev-parse HEAD)
go mod tidy
