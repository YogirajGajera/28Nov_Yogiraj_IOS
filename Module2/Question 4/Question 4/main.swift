//
//  main.swift
//  Question 4
//

//

import Foundation

print("Enter Number A : ")
var a=Int(readLine()!)!
print("Enter Number B : ")
var b=Int(readLine()!)!
print("Enter Number C : ")
var c=Int(readLine()!)!


if a>b
{
    if a>c
    {
        print("A is Maximum")
    }
    else {
        print("C is Maximum")
    }

}else {
    if b>c {
        print("B is Maximum")
    }
    else {
        print("C is Maximum")
    }
}

