+++
share = false
tags = ["programming"]
subtitle = ""
title = "1.0.1"
date = 2019-04-02T22:32:05+02:00
draft =  false
image = "release.jpg"
+++

This post should be named 1.0(Build 6) because that was the first [Yafra](https://unsignedpixel.com/yafra) build I actually released to the App Store. 

<!--more-->

But iOS 12.2 was out the same week, so I decided to require 12.2 in order to benefit from the included Swift runtime. The download would fit on a 3.5" floppy drive, it is just 1.2MB. 
Backward compatibility with previous beta builds wasn't a concern either, so I changed some aspects of the JSON encoding as well and was quite happy when I pressed the "release" button last week. 

Unfortunately, most of the screenshots were missing, so the App Store entry looked rather meh. Because one can't update the previews or screenshots for a version that is "ready for sale", I submitted version 1.0.1. 
It fixes a minor bug and gave me the chance to add the missing screenshots plus the app preview video. A tedious process, even when automating it via fastlane. And it is slow as well. Eight hours after the release, I still see the old version in the store....
