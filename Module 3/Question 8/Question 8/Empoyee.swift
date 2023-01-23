//
//  Empoyee.swift
//  Question 5
//
//  Created by mac on 09/01/23.
//  Copyright © 2023 mac. All rights reserved.
//

import Cocoa

class Employee : NSObject{
        var empid = 0
        var empnm = ""
        var empsal = Double()
        
        func data()
        {
            print("Enter Employee id : ")
            empid = Int(readLine()!)!
            print("Enter Employee name : ")
            empnm = readLine()!
            print("Enter Employee salary : ")
            empsal = Double(readLine()!)!
        }
    }



