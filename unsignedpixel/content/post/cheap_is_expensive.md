+++
date = "2016-05-28T23:12:43+02:00"
share = false
subtitle = ""
tags = ["bootstrapping"]
title = "cheap is expensive"

+++
The plan was to automate static generation of the site to the point where I just add/edit a post, run a script that builds the site and do an automatic upload.
<!--more--> Later on, building should be via [Jenkins](https://jenkins.io/index.html) or a similar tool. But my cheap hoster gives me no `ssh` or `rsync` access and I spent the better part of the evening trying to figure out how to automate the upload of the files. This was rather expensive in terms of time, I could have spent programming ...