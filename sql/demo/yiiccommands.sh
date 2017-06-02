#!/bin/bash
dir=$PWD
cd /var/www/openeyes/protected

bash yiic generateuniquecode
bash yiic generatesessions

cd "$dir"
