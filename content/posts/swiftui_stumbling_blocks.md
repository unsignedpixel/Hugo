+++
title = "swiftui stumbling blocks"
date = "2021-01-24T23:14:02+01:00"
draft = false
+++

As mentioned in [retro 2020]({{<ref "retro2020.md">}}), I am currently rewriting [Yafra](https://unsignedpixel.com/yafra) and SwiftUI is a mixed bag. After wrapping my head around `@ObservableObject` and its siblings, there was quick progress and I like the idea of having only a single source of truth. But there are still a lot of rough edges in SwiftUI. Like misleading or plain wrong documentation. A TextField should accept a binding to any type, like this: `TextField("default",value: $binding,formatter:NumberFormatter)`. The code compiles, doesn't crash at runtime, but fails to update the binding. Took me while to read on Stackoverflow that it does not work although the documentation lists a similar implementation as an example.

