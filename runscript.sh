#!/bin/sh

echo " "
echo "Designed by Mehmet K Sonmez"

while read url; do
	echo " "
	echo "$url"

###	It creates output directory
	mkdir output

###	It creates a directory with name of URL
	mkdir "output/$url"

###	Performs a script scan -sC
###	Extensive version detection -sV
	nmap -sC -sV -oA "output/$url/scan-result" "$url" -v
	xsltproc "output/$url/scan-result.xml" -o "output/$url/scan-result.html"

###      Use a list of URLs

done </app/targets.txt





