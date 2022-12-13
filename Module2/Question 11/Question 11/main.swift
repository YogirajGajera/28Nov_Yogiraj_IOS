//
//  main.swift
//  Question 11
//
//

import Foundation

print("Enter number A :")
var a=Int(readLine()!)!

print("Enter number B :")
var b=Int(readLine()!)!

print("Enter number C :")
var c=Int(readLine()!)!

if a<b
{
    if a<c {
        print("A is Minimum")
    }
    else {
        print("C is Minimum")
    }
}
else {
    if b<c {
        print("B is Minimum")
    }
    else {
        print("C is Minimum")
    }
}
