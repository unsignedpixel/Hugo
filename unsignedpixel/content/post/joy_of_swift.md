+++
date = "2016-09-27T22:17:19+02:00"
share = false
subtitle = ""
tags = ["Swift"]
title = "joy of swift"

+++

When I wrote this [post]({{< ref "post/swift_fun.md">}}) back in April, I didn't know that there was so much more to enjoy when coding in Swift. <!--more--> Knowing that I needed some kind of caching in an app, I faked it at first by using a dictionary with some fabricated entries   
`private var cache = [URL:URL?]()`  
The fun began after implementing the actual cache, adding `subscript` get/set functions and dropping in the actual cache by replacing the dictionary with  
`private var cache = MyAwsomeCache()`.  
The syntax for accessing the cache didn't change at all and the actual cache can still accessed using the subscript operator `[]` like this  
`if let url = cache["http:\\server\file.mp3"]{...`
