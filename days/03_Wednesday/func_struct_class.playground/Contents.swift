// FUNCTIONs

func squareIt(x:Double) -> Double {
    return x*x
}
squareIt(x:4) // test our function


func anotherFunction(externalName localName:Double) -> Double {
    return localName*localName
}
anotherFunction(externalName:4)


func thirdTry(_ x:Double) -> Double {
    return x*x
}
thirdTry(4)  // Notice no external name required!


// Challenge:
//    calcArea(width:2, height:3)  // Write the function!!!


func calcArea(width x:Double, height y:Double) -> Double {
    return x*y
}
calcArea(width:2, height:3)


// Another way:
func calcArea2(width:Double, height:Double) -> Double {
    return width*height
}
calcArea2(width:2, height:3)



// STRUCTS
struct Vector {
    var x:Double
    var y:Double
    
    func getLength() -> Double {
        let lengthSquared:Double = x*x + y*y
        return lengthSquared.squareRoot()
    }
}

var v = Vector(x:3,y:4)

var w = Vector(x:5, y:12)


v.getLength()
w.getLength()


// CLASSES
class Vector2 {
    var x:Double
    var y:Double
    
    // class requires an initializer!
    init(_ x_:Double, _ y_:Double) {
        x = x_
        y = y_
    }
}

var v2 = Vector2(2,3)


