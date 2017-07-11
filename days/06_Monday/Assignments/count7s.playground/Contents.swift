func containsASeven(_ k:Int) -> Bool {
    var s = String(k)
    for char in s.characters {
        if char == "7" {
            return true
        }
    }
    return false
}

func containsASeven_mkII(_ k:Int) -> Bool {
    var i = k
    while i > 0 {
        let lastDigit = i % 10
        if lastDigit == 7 {
            return true
        }
        i = (i - lastDigit) / 10
    }
    
    return false
}

var tot = 0
for i in 1...30 {
    if containsASeven_mkII(i) {
        tot = tot + i
        // can also do:
        //    tot += i
    }
}

print( tot )


var x = 5
x+=1

var w = 123
String(w)

123 % 10
120
12

12 % 10
10
4

