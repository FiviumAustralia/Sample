#!/bin/bash
dir=$PWD
cd /var/www/openeyes/protected

echo "Generating Unique Codes..."
./yiic generateuniquecode --interactive=0

echo "Generating Operation Booking Sessions"
./yiic generatesessions --interactive=0

cd "$dir"
