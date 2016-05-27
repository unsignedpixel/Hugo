+++
date = "2016-03-10T22:34:49+01:00"
#draft = false
title = "About"
tags = ["about","unsigned pixel"]
subtitle = "What does the name mean?"
layout = "page"
bigimg = "/img/darkroom.jpg"
+++

So why is this **unsigned pixel** ?

tl;dr: There are no **signed** pixels, but there is a signature, pixels are related to photography and it is just a nerdy title for my programming related website.

In computing, there are numbers. They exist in signed and unsigned versions. With the sign, we can distinguish between number greater or less than zero. A negative sign ('-') denotes numbers less than zero (-5, -2, etc.) whereas a positive or no explicit sign denotes numbers larger or equal to zero ('+10', '4', etc).

Now on to pixels. A pixel describes a dot on a computer screen or a dot on camera sensor. This dot has a color. And the color is usually expressed as the amount of red, green and blue (RGB) of that particular pixel. Let's assume that the values for these three colors cover the range from 0 to 127.

A pixel with an RGB value of 0,0,47 would have some shade of blue (no red, no green, but 47 units of blue). Likewise a value of 0,0,0 would be white, because the values for all three colors are zero. If the three colors are all at their maximum of 127, the resulting color would be black (127,127,127).

We have signed and unsigned numbers. And colors are made of unsigned numbers (0 to some positive number like 127). The color of Pixels is described with unsigned numbers because signed numbers wouldn't make any sense. What color would our example pixel have, if its value were 0,0,-47? We don't know. There is no such thing as a negative color value just like you can't (technically) own a negative number of bicycles or potatoes.

So **unsigned pixel** does not make sense. Nevertheless, it refers to programming, photography and there is even a signature in the logo.

