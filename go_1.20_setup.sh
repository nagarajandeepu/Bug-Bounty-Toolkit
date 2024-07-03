#!/bin/bash

# Check if Go is installed
if [ ! -f /usr/bin/go ]; then
    echo "Go is not installed. Installing..."

    # Change directory to home
    cd ~

    # Download and execute the installation script
    sudo apt-get update
    wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz
    sudo tar -xvf go1.21.0.linux-amd64.tar.gz
    sudo mv go /usr/local
    go version

    # Set up Go environment variables
    export GOROOT=/usr/local/go
    export GOPATH=$HOME/go
    export PATH=$GOPATH/bin:$GOROOT/bin:$PATH


    # Source ~/.bash_profile to apply changes
    source ~/.bash_profile
    source ~/.profile #IMPORTANT

    echo "Go installation complete."
else
    echo "Go is already installed."
fi
