+++
title = "swiftui stumbling blocks"
date = "2021-01-24T23:14:02+01:00"
draft = false
+++

As mentioned in [retro 2020]({{<ref "retro2020.md">}}), I am currently rewriting [Yafra](https://unsignedpixel.com/yafra) and SwiftUI is a mixed bag. After wrapping my head around `@ObservableObject` and its siblings, there was quick progress and I like the idea of having only a single source of truth. But there are still a lot of rough edges in SwiftUI. Like misleading or plain wrong documentation. I thought I was adhering to the documentation, when trying to implement a Textfield that accepts only integer values like this: `TextField("default",value: $binding,formatter:NumberFormatter)` 

