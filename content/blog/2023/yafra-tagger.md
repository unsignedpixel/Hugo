+++
title = "yafra tagger"
date =  2023-01-08T22:13:29+01:00
draft = false
+++
The long overdue macOS companion for [Yafra](/yafra) is finally under development.
<!--more-->
Apart from fixing a little visual glitch, Yafra has not seen much development lately. But late last year, I got two analog films [back from the lab](https://christianscheer.com/blog/2022/khrome/) and wanted to add the meta data recorded with Yafra to the scans in Lightroom. My first idea was to write a small command line tool to modify the data in the scanned film images. Then I noticed that the scans were in reverse chronological order. Add sort options to the tool? What if the digital images are in different folders? Having an UI would make it much easier to handle the files than from the command line. So it is going to be a macOS app that supports dragging exposure data onto image previews.
#### Details
I use Lightroom to manage all my photos. AFAIK, Adobe does not provide an API for Lightroom to modify the exif data of the cataloged pictures. So my idea was to enable XMP sidecar files in Lightroom and modify those files. In theory, the meta data could be written via Adobes XMP toolkit. The complexity lies in the way different image files formats embed XMP data. Plus some glue code between the XMP toolkit and the Swift code would be required as well. After some research, I decided to use [Phil Harvey's exiftool](https://exiftool.org) instead. And modify the images themselves instead of manipulating XMP files. It seems like a good choice, the app is already providing basic functionality... I hope to come up with a better name, but for now it is called Yafra Tagger.
#### Update (21.01.2023)
"Yafra Tagger" should be available in the App Store. This seems to be in conflict with using exiftool. Why? In order to be in the App Store, the app needs to be sandboxed. A sandboxed app can only write to user selected files (that is, files that are opened or dragged into the app by the user) or needs special entitlements. Unfortunately, exiftool does not write directly to the file it is supposed to modify. Instead, it creates a tmp file based on the name of the original file. This is, at least in theory, covered by the sandbox restrictions, but has to be handled in the app's code (quoting from the Apple documentation: "To handle this situation, you must use an NSFileCoordinator object to coordinate access to the file. Before you rename the file, call the itemAtURL:willMoveToURL: method. After you rename the file, call the itemAtURL:didMoveToURL: method."). When calling external code like exiftool, that is not possible. So my plan is to evaluate using Apple's Image I/O instead.
#### Update (14.02.2023)
Prototyping some functionality with Image I/O was going well. That was, until I tried to tag .tiff instead of .jpeg files. Without going into detail, there are different options to update meta data in an image file and Apples documentation is lacking. Searching the traditional way (Google, SO) revealed a lot of code that wasn't much better than my own. Why not give chatGPT a try, I thought. The first results were not much better than what I already had, but after explaining the exact problem, it spit out promising code that will serve as a base for building upon.
#### Update (13.03.2023)
Basic functionality is in place, the UI needs some more polish, [stay tuned...](/links)
#### Update (11.05.2023)
Finally resolved an issue when trying to write the exposure compensation to .jpeg files.

