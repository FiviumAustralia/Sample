#!/bin/bash

dir=$PWD
cd /home/iolmaster

rm -rf incoming
mkdir incoming

cd test

if [ ! -d ".git" ]; then
    echo "Cloning sample dicom files"
    git clone https://github.com/openeyes/DICOM_test_files.git .
fi

git pull

echo "copying dicom files to import directory"
cp *.dcm ../incoming
cp Archive/*.dcm ../incoming

cd "$dir"
