#!/bin/bash
dir=$PWD
cd /var/www/openeyes/protected

rm -rf runtime/fields

mkdir runtime/fields
mkdir runtime/fields/legacy
mkdir runtime/fields/out
mkdir runtime/fields/err
mkdir runtime/fields/dups

cp modules/OphInVisualfields/tests/fields/legacy/* runtime/fields/legacy/

./yiic importlegacyvf import --importDir=runtime/fields/legacy --archiveDir=runtime/fields/out --errorDir=runtime/fields/err --dupDir=runtime/fields/dups

chown -R www-data:www-data files
chmod -R 774 files

cd "$dir"
