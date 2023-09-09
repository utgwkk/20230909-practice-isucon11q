#!/bin/sh
set -eux

git pull
go build -o isucondition
sudo systemctl restart isucondition.go.service
