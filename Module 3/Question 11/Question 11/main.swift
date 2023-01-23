//
//  main.swift
//  Question 11
//
//  Created by mac on 11/01/23.
//  Copyright © 2023 mac. All rights reserved.
//

import Foundation

protocol data {
    func getdata(id: Int, name: String)
    func getcontact(Mobile : Double)
}

class detail: data {
    func getdata(id: Int, name: String) {
        print("Id is :", id)
        print("Name is :", name)
    }
    
    func getcontact(Mobile: Double) {
        print("Mobile Number is :", Mobile)
    }
}

var dt = detail()
dt.getdata(id: 7, name: "Yogiraj")
dt.getcontact(Mobile: 9728252424)

