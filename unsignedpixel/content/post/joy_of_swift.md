+++
date = "2016-09-27T22:17:19+02:00"
share = false
subtitle = ""
tags = ["Swift"]
title = "joy of swift"

+++

When I wrote this [post]({{< ref "post/swift_fun.md">}}) back in April, I didn't know that there was so much more to enjoy when coding in Swift. <!--more--> 

I needed some kind of caching in an app and faked it at first by using a dictionary with some fabricated entries   
`private var cache = [URL:URL?]()`  
The fun began after implementing the actual cache, adding `subscript` get/set functions and dropping in the actual cache simply by replacing the dictionary with  
`private var cache = MyCacheImplementation()`.  
The syntax for accessing the cache didn't change at all and the new implementation can still be accessed using the subscript operator `[]` like this  
`if let url = cache["http:\\server\file.mp3"]{...`  

Very nice!

To some, this might be merely syntactic sugar and one could argue that writing a stub for the cache first or using dependency injection would be a better implementation for the situation. True, but not the point. I like the simplicity of the resulting code at the call site.
