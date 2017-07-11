//: https://stackoverflow.com/questions/30958427/pixel-array-to-uiimage-in-swift

import UIKit


var r = PixelData(a:255,r:255,g:0,b:0)
var b = PixelData(a:255,r:  0,g:0,b:0)



var buf = [r,b,b,b,r,
           b,r,b,b,r,
           b,r,b,b,r]


var myList = [2,3,5,7,11,13]



guard var im = imageFromBitmap(
    pixels:buf,
    width:5,
    height:3
    )  else {
    fatalError("failedToCreateImage")
}

let imageView = UIImageView(image: im)

imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 30)



import PlaygroundSupport

PlaygroundPage.current.liveView = imageView
//PlaygroundPage.current.needsIndefiniteExecution = true
