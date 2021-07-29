+++
title = "bookscan"
date =  2021-07-28T16:47:49+02:00
draft = false
image = "bookscan.png"
+++

We have lots of books and a rather large bookshelf in the hallway. Books are being added, some get sold and sometimes we lend them to friends and colleagues. 
Time to start another side project and get organized.
<!-- more --> 
The idea is to start with a simple scanning app, based on `VNDocumentCameraViewController` to capture images and decompose them into rectangles. Each rectangle should represent the spine of a book that carries title and author. Running text recognition on each rectangle should find this information. The trick is probably to provide the right image orientation for `VNRecognizeTextRequest` to do its magic.

This could mean that each rectangle needs to be run through the text recognition multiple times. Some books have the text on their spine rotated to the left, some to the right and a few rare cases with wide spines have no rotation at all. I don't know what kind of accuracy to expect from the detection, so no plans yet on how to store the data, match it against online data bases, further processing or features of the app in general. But a rough sketch for the app icon is already in place:smile:.

