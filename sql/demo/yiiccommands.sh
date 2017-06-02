#!/bin/bash
dir=$PWD
cd /var/www/openeyes/protected

yiic generateuniquecode
yiic generatesessions

cd "$dir"
