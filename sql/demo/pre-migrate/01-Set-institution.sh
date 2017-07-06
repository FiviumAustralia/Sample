#!/bin/bash

icode=$(grep -oP '(?<=institution_code. => .).*?(?=.,)' /var/www/openeyes/protected/config/local/common.php)

if [ ! -z $icode ]; then

echo "

setting institution to $icode

"

echo "UPDATE institution SET remote_id = '$icode' WHERE id = 1;" > /tmp/openeyes-mysql-institute.sql

mysql -uroot "-ppassword" -D openeyes < /tmp/openeyes-mysql-institute.sql

rm /tmp/openeyes-mysql-institute.sql


fi
