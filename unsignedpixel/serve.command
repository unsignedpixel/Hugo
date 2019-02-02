#!/bin/bash
# script to start the hugo server
cd /Users/chris/Documents/unsignedpixel/hugo/unsignedpixel/
#Start Safari in the background and then launch hugo. 
open -a safari http://localhost:1313/blog &
hugo_311 server --buildDrafts --theme=hugo-theme-casper 
