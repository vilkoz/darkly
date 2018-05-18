#!/bin/bash
wget -e robots=off -r -np -m --reject "*robots.txt*" "http://10.0.2.15/.hidden/"
find 10.0.2.15/.hidden/ -name "README" -exec cat "{}" >> test_file \;
cat test_file | awk "{print $1}" | sort -u
