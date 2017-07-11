# Course objectives

Uber-Objective is to get moving under your own steam. To give you a birds-eye view
 of the world of iOS-dev so that you can direct your dive-in.

We'll cover:  
 - Remote Linux WebServer / HTML / JS / ssh / etc.
 - Swift language (plus C -> ObjC -> Swift)
 - XCode -- build code to device, debug
 - iOS API + navigate Apple's documentation
 - Using available **Resources** -- Stack Overflow / IRC / Apple Dev site: doc, ibooks, forums, [blogs](https://www.quora.com/What-are-some-good-blogs-about-Apple-Swift) / ...
 - collaboration using GitHub / Gitter
 - alternative frameworks (Unity3D, JUCE) https://clutch.co/app-development/cross-platform
 - Monetizing (iAds etc)


## RESOURCES: SWIFT

https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/  
Take the tour (using the playground), Language Guide  
Notice iBooks (at top) -- same material! **Download the iBook!**

QuickRefs: https://www.gitbook.com/book/azuritul/swift-syntax-quick-reference  https://learnxinyminutes.com/docs/swift/

## Taster

Building Your First Swift App Video (6min) https://developer.apple.com/swift/blog/?id=16


## IBM Swift Sandbox

https://swift.sandbox.bluemix.net/

```swift
for i in 1...8 {
	print( i % 3 )  // what?
}  // i exists only within the scope of the loop, so it doesn't exist at this point

var i = 12
print("hello \(i)")  // this \(...) is known as 'escaping'

while(i < 50) {
	i += 5  // same as: i=i+5
	print(i)
}

if i > 50  &&  i < 75 {
	print("i between 51 and 74")
}
else if i == 10 {  // NOTE: = vs ==
	print("i is 10")
}
else {
  print("what?")
}

var x = 3 > 2
print(type(of: x))  // what?
print(true && false)  // what?

var x:Int
x = 6
```

# FizzBuzz

Think "if it is red and a bus do this, otherwise if it is red blablabla"
```swift
for i in 1...100 {
    if i%3==0  &&  i%5==0 {
        print("FizzBuzz") 
    }        	
    else if i%3==0 {
        print("Fizz") 
    }   
    else if i%5==0 {
        print("Buzz") 
    }   
    else {
        print(i) 
    }
}
```

Or ...

```swift
for i in 1...100 {
    var s = ""
    if i % 3 == 0 {
        s += "fizz" 
    }        	
    if  i % 5 == 0 {
        s += "buzz"
    }   
    if s == "" { 
        s += "\(i)" 
    } 
    print (s)
}
```
