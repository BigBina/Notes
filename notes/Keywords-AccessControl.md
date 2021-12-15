---
title: Keywords-AccessControl
created: '2021-12-10T15:16:37.288Z'
modified: '2021-12-13T18:20:19.221Z'
---

# Keywords-AccessControl

#### Lazy
Lazy is used to defined variables. It essentially puts off work until you need it. It is very memory-friendly keyword, that only gets an value when its called

## Access Control
Restricts what a user has access to. Mostly used in APIs or libraries like UIKit, SpriteKit etc.

### <mark>Private</mark>
Private limts an object to the class its declared in. It is able to be accessed in an extension of that class. Private cannot be accessed outside of the file. Usually code that is considered to be configuration, are private. The code that is intended for useage, should be anything but private

### <mark>FilePrivate</mark>
fileprivate is exclusive to a file. 

### <mark>Internal</mark>
Internal is quite like the default setting we have for objects where we have access to the obects.

### <mark>Open</mark>
Everything in a library that we import and has classes that are open, we as developers, have access to it. Meaning that we can subclass it for our class. Creating your own 3rd party framework library is what open is often used for

### <mark>Public</mark>

