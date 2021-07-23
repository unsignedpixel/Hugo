---
title: "joy of swiftui"
date: 2021-03-14T18:42:27+01:00
draft: false
toc: false
images:
tags:
  - Swift
  - Programming
---
Although I [complained]({{< ref "swiftui_stumbling_blocks.md">}}) a bit about SwiftUI, it really helped moving forward with the rewrite of [Yafra](https://unsignedpixel.com/yafra) . It is so easy to experiment with new ideas. 

For example, I have a list of presets that the user can use to load a new film or to switch cameras. I wanted the operations on these lists to be easy to discover and choose not to implement my own swipe to edit gestures. SwiftUI supports a swipe to delete for list elements out of the box, but no way to add any other gestures like it was possible in UIKit.

But one can put a list in `EditMode`, which allows for deletion and reordering of list elements. Strange enough, `EditMode` does not support editing of actual list elements. Poking around in Apples own apps, it turns out that the Clock app can have a list of alarm clocks. If that list is in `EditMode`, the elements show a chevron that opens an editor when tapped. It took only a couple of minutes to add a chevron button that would show up in `EditMode` on the preset list. And since I already had an editor to create new presets, a new and long missing feature from the old UIKit version of Yafra was quickly created. 
