//
//  main.swift
//  Question 1
//
//  Created by mac on 04/01/23.
//  Copyright © 2023 mac. All rights reserved.
//

import Foundation

var arr=["rajkot","surat","baroda"]
if let i = arr.firstIndex(of: "rajkot") {
    arr[i]="Jetpur"
}
print(arr)


