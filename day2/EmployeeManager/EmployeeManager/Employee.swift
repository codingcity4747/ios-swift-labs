//
//  Employee.swift
//  EmployeeManager
//
//  Created by Ashraf on 3/25/20.
//  Copyright © 2020 com.ashraf. All rights reserved.
//

import Foundation

class Employee :Person{
    
    override init(baseSalary empBaseSalary:Double){
        super.init(baseSalary: empBaseSalary)
    }
    override func getSalary() -> Double {
        return salary * 2
    }
    
    
}
