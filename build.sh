#!/bin/bash

echo "Building for Windows AMD64"
export GOOS="windows"
export GOARCH="amd64"
go build -o build/UnAutoIt-windows-amd64.exe

echo "Building for Windows i686"
export GOOS="windows"
export GOARCH="386"
go build -o build/UnAutoIt-windows-i686.exe

echo "Building for Linux AMD64"
export GOOS="linux"
export GOARCH="amd64"
go build -o build/UnAutoIt-linux-amd64.bin

echo "Building for Linux i686"
export GOOS="linux"
export GOARCH="386"
go build -o build/UnAutoIt-linux-i686.bin

unset GOOS
unset GOARCH
