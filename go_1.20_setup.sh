#!/bin/bash

# Check if Go is installed
if [ ! -f /usr/bin/go ]; then
    echo "Go is not installed. Installing..."

    # Change directory to home
    cd ~

    # Download and execute the installation script
    wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash

    # Set up Go environment variables
    export GOROOT=$HOME/.go
    export PATH=$GOROOT/bin:$PATH
    export GOPATH=$HOME/go

    # Append environment variable exports to ~/.bash_profile
    echo 'export GOROOT=$HOME/.go' >> ~/.bash_profile
    echo 'export GOPATH=$HOME/go' >> ~/.bash_profile
    echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile

    # Source ~/.bash_profile to apply changes
    source ~/.bash_profile

    echo "Go installation complete."
else
    echo "Go is already installed."
fi
