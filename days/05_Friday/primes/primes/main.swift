//
//  main.swift
//  primes
//
//  Created by π on 07/07/2017.
//  Copyright © 2017 π. All rights reserved.
//

import Foundation

func isPrime(N:Int) -> Bool {
    for i in 2 ..< N {
        let dividesExactly = (N%i == 0)
        if dividesExactly {
            print( "Nope, \(i) divides \(N) !!!" )
            return false
        }
    }
    return true
}

var ret = isPrime(N: 1003)
print(ret)
