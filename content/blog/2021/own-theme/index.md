+++
title = "own theme"
date =  2021-07-15T11:19:00+02:00
draft = false
+++

**unsignedpixel.com** is now based on my own [hugo](gohugo.io) theme!
<!-- more --> 
As mentioned in [new theme]({{< ref "new_theme.md" >}}) earlier this year,
I wanted a theme for this site that satisfies at least these requirements
* no Javascript
* no tracking/external dependencies (like google or font delivery via CDN)
* (nice typography)

Typing `hugo new theme` is easy. Actually filling the created template with code requires HTML and CSS skills. Some basic understanding of how hugo works is required as well. A welcome opportunity to learn something new. I started with writing HTML for the hugo layouts and used Andy Brewer's [mvp.css](https://github.com/andybrewer/mvp) as a temporary stylesheet. The idea was to style the resulting semantic HTML with my own CSS. In the process of adding (and learning) CSS, I introduced some classes, so the markup is not pure semantic HTML. The CSS isn't finished yet and still requires cleanup and some visual changes (like the usage of color).


The fonts used in this theme are:
- [Jetbrains Mono](https://www.jetbrains.com/lp/mono/)
- [Museo Sans](https://www.myfonts.com/fonts/exljbris/museo-sans/500/)

I choose Jetbrains Mono because it provides the technical look that the site should have while still being legible. To add a little contrast, Museo is used for headings.

There are still a lot of things on the todo list, but it is always better to release early and often than to polish the code to death.



