+++
share = false
tags = ["programming","learning"]
subtitle = ""
title = "status (bar)"
date = 2019-03-16T14:28:25+01:00
draft =  false
+++

Finally (and a little early), I submitted [Yafra](https://unsignedpixel.com/yafra) for review for the App Store. 25 hours later, the status changed to "Pending Developer Release" :-)

<!--more-->

But I want to introduce a file format change that is not backward compatible and so I am not going to release the app yet. 
Another thing that kept me from going public was an optical glitch. The status bar for the film view had (default) black 
symbols on a black translucent background and light symbols for the settings view. 
After spending way too much time on stack overflow to find a fix, I finally used Xcodes View Debugger to figure out what was going wrong.
Yafra is based on the Master-Detail-Template and uses an `UISplitViewController`. Doing the usual dance of 
setting `navigationController.navigationBar.barStyle` in a view had no effect, because the views navigation controller is contained 
in an `UISplitViewController` and therefore not the outermost view controller. The solution was to subclass `UISplitViewController` and to 
`override var preferredStatusBarStyle: UIStatusBarStyle`.
