// BAD

//func fib(_ n:Int) -> Int {
//    if n <= 2 {
//        return 1
//    }
//    else {
//        return fib(n-1) + fib(n-2)
//    }
//}
//
//fib(3) // TEST

//var i = 1
//var tot = 0
//while(true) {
//    var f = fib(i)
//    if f > 4_000 {break}
//    if isEven(f) {
//        tot += f
//        print(tot)
//    }
//    i += 1
//}



func isEven(_ i:Int) -> Bool {
    return i%2 == 0
}

isEven(42)
isEven(43)


var __x = 1
var _x = 2

var tot = _x

while (true) {
    let x = __x + _x
    
    if x > 4_000_000 {
        break
    }
    
    if isEven(x) {
        tot += _x
        print(tot)
    }
    
    (__x, _x) = (_x, x)
}

