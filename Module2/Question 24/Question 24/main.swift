//
//  main.swift
//  Question 24
//
//

import Foundation

var data = ["a","b","c","d","e","f","g"]
print("Enter Position to Remove : ")

var remove=Int(readLine()!)!
data.remove(at: remove)
print(data)

