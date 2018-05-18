#!/bin/bash

URL_PATH=$1
if [ -z "$URL_PATH" ]; then
	# echo "ZERO LENGTH"
	URL_PATH=""
fi
# echo "curl \"http://10.0.2.15/.hidden/\"$URL_PATH"
HTML=$(curl "http://10.0.2.15/.hidden/$URL_PATH" 2> /dev/null)
# echo -n "HTML:"
# echo $HTML
LINKS=$(echo $HTML | grep -Eo "href=\".*\"" | grep -Eo "[a-Z]+/")
README_TEXT=$(curl "http://10.0.2.15/.hidden/${URL_PATH}README" 2> /dev/null)
echo "$README_TEXT" >> all_phrases
echo $README_TEXT
for name in ${LINKS}; do
	sh find_file.sh ${URL_PATH}${name}
done
