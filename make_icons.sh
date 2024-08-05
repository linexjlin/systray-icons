#!/bin/bash

#go get github.com/cdujeu/crossicon
#go install github.com/cdujeu/crossicon

icon=$1
mkdir $icon
cd $icon
crossicon -i ../png/$icon.png --bytes --ico $icon -o icon -p icon
cd ..