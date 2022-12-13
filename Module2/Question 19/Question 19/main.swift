//
//  main.swift
//  Question 19
//
//

import Foundation

var data = ["a","b","c","d","e","f","g"]
print("Enter a element : ")
var ele=readLine()!
var result = data.contains(ele)
if result  {
    print(ele)
}
else {
    print("[]")
}
