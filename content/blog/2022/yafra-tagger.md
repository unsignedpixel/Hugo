+++
date = "2022-12-08T10:42:44+02:00"
tags = ["yafra"]
title = "yafra-tagger"
draft = true
+++

A long overdue utility for [Yafra](/yafra) is under development.
<!--more-->
Apart from fixing a little visual glitch, Yafra has not seen much development lately. But I got two analog films back from a lab and wanted to add the data recorded with Yafra in my Lightroom meta data for the scanned images. So currently, I am writing a small tool for the command line that will let me write the meta data into the image files. After importing them, the meta data will show up in Lightroom and is searchable as well.
#### Details
In theory, the meta data could be written via Adobes XMP toolkit. That would allow for a completely self contained app. The complexity lies in the way different image files formats embed XMP data. Plus some glue code between the XMP toolkit and the Swift code would be required as well. So in order to make some fast progress, I have deceided to use the (Phil Harvey's exiftool)[https://exiftool.org] library. This in turn will require some setup for anyone using yafra-tagger, but for the moment, that should be ok.

