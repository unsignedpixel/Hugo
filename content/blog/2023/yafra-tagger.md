+++
title = "yafra tagger"
date =  2023-01-08T22:13:29+01:00
draft = false
+++
The long overdue macOS companion for [Yafra](/yafra) is finally under development.
<!--more-->
Apart from fixing a little visual glitch, Yafra has not seen much development lately. But late last year, I got two analog films [back from the lab](https://christianscheer.com/blog/2022/khrome/) and wanted to add the meta data recorded with Yafra to the scans in Lightroom. My first idea was to write a small command line tool to modify the data in the scanned film images. Then I noticed that the scans were in reverse chronological order. Add sort options to the tool? What if the digital images are in different folders? Compared to aHaving a UI would make it much easier to handle the files. So it is going to be a macOS app that supports dragging exposure data onto image previews.
#### Details
I use Lightroom to manage all my photos. AFAIK, Adobe does not provide an API for Lightroom to modify the exif data of the cataloged pictures. So my idea was to enable XMP sidecar files in Lightroom and modify those files. In theory, the meta data could be written via Adobes XMP toolkit. The complexity lies in the way different image files formats embed XMP data. Plus some glue code between the XMP toolkit and the Swift code would be required as well. After some research, I decided to use [Phil Harvey's exiftool](https://exiftool.org) instead. And modify the images themselves instead of manipulating XMP files. It seems like a good choice, the app is already providing basic functionality... I hope to come up with a better name, but for now it is called Yafra Tagger.
