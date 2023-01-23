//
//  main.swift
//  Question 4
//
//  Created by mac on 23/01/23.
//  Copyright © 2023 mac. All rights reserved.
//

import Foundation

func swap(a:inout Int,b:inout Int) {
    let c = a
    a = b
    b = c
}
var a = 5
var b = 6
swap(a: &a, b: &b)
//print("a=\(a), b=\(b)")
print("a=",a, "b=",b)
