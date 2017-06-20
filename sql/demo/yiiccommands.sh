#!/bin/bash
dir=$PWD

cd /var/www/openeyes/protected

echo "Generating Unique Codes..."
./yiic generateuniquecode

echo "Generating Operation Booking Sessions"
./yiic generatesessions

cd "$dir"
 
