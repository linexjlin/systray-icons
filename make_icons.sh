#!/bin/bash
go get github.com/cdujeu/crossicon
go install github.com/cdujeu/crossicon

mkdir text-style 
cd text-style
crossicon -i ../png/text-style.png --bytes --ico text-style -o icon -p icon
cd ..


