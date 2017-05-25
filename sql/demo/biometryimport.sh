#!/bin/bash

dir=$PWD
cd /home/iolmaster

rm -rf incomming
mkdir incomming

cd test
if [ ! -d ".git" ]; then
    git clone https://github.com/openeyes/DICOM_test_files.git .
fi

cd test
git pull

cp *.dcm ../incomming
cp Archive/*.dcm ../incomming

cd "$dir"
