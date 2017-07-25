#!/bin/bash
dir=$PWD
cd /var/www/openeyes/protected

cp -R modules/sample/sql/demo/files/* files/

chown -R www-data:www-data files
chmod -R 774 files

cd "$dir"
