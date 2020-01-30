+++
share = false
tags = ["programming","ios"]
subtitle = ""
title = "Concurrency"
date = 2020-01-30T22:13:09+01:00
draft =  false
+++

Due to my day job, there is hardly any time to add planned features to Yafra. When on the train to work, I test code fragments in iPad Playgrounds. That code gets eventually integrated, might fail to run in the app’s context (never `wait()` on the main thread) and is reworked a couple of days later. After some painfully slow iterations like that, I managed to properly capture async function results. The app does now reverse geocoding of exposure locations. 
There are plenty of reverse geocoding examples on the net, but they merely print out the results of `Geocoder.reverseGeocode()` and don't explain how to

- capture the result that is returned asynchronous
- queue the calls properly 

The code operates on a model called Film, which is the smallest entity that is serialized to disk. A *Film* contains *Exposures* that carry locations. An `async` closure iterates over the Film and queues the exposures for reverse geocoding of their locations one at a time. Successful  geocoding will mark the film as dirty via a completion handler passed to  `reverseGeocode`. Calls in the async closure are serialized via `DispatchGroup.enter()/leave()`. After processing all exposures, the film is saved, if it was marked dirty in the process. 