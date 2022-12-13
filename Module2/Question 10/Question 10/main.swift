//
//  main.swift
//  Question 10
//


import Foundation

print("Enter number A :")
var a=Int(readLine()!)!

print("Enter number B :")
var b=Int(readLine()!)!

print("Enter number C :")
var c=Int(readLine()!)!

print("Enter number D :")
var d=Int(readLine()!)!


if a>b && a>c && a>d
{
    print("A is Maximum")
}
else if b>a && b>c && b>d {
    print("B is Maximum")
}
else if c>a && c>b && c>d {
    print("C is Maximum")
}
else {
    print("D is Maximum")
}
