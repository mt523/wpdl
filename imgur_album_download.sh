#!/bin/bash
curl "$1" \
	| grep 'image" content=' \
	| sed 's/^.*content="//' \
	| sed 's/".*//' \
	| xargs -l1 wget -q -nc -P /home/michael/Pictures/wallpapers
