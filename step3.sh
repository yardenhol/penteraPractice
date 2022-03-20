#!/bin/bash
var="test1"
change="<h1>$var</h1>"
echo $change > /var/www/html/index.nginx-debian.html
echo $change > /usr/share/nginx/html/index.html
echo done