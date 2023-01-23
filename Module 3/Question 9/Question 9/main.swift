//
//  main.swift
//  Question 9
//
//  Created by mac on 11/01/23.
//  Copyright © 2023 mac. All rights reserved.
//

import Foundation

class student: NSObject {
    func data(id:Int) {
        print("student id :", id)
    }
}

class secondstudent: student {
     func data(id: Int,name:String) {
        print("Second Student id :", id)
        print("Second Student name :",name)
    }
       override func data(id: Int) {
        print("Third Student id :", id)
            
    }
}


var st = student()
st.data(id: 10)

var sest = secondstudent()
sest.data(id: 20, name: "yogi")
sest.data(id: 40)

