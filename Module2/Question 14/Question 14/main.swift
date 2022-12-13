//
//  main.swift
//  Question 14
//
//

import Foundation

var setA:Set=["A","B","C"]
var setB:Set=["B","C","D"]

var setAandsetB = setA.union(setB)

print("union is : ",setAandsetB)

var setAandsetB2 = setA.intersection(setB)
print("Intersection is : ",setAandsetB2)
