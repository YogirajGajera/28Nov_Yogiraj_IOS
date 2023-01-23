//
//  BANK PERSON.swift
//  Question 7
//
//  Created by mac on 11/01/23.
//  Copyright © 2023 mac. All rights reserved.
//

import Cocoa

class BANK_PERSON: NSObject
{
    var acnm = ""
    var acmo = Double()
    var acno = Double()
    var acem = ""
    
    func data()
    {
        print("Enter Account Holder Name : ")
        acnm = readLine()!
        print("Enter Account Holder Mobile : ")
        acmo = Double(Int(readLine()!)!)
        print("Enter Account Holder Ac. Number : ")
        acno = Double(readLine()!)!
        print("Enter Account Holder Email : ")
        acem = readLine()!
    }
    
}
