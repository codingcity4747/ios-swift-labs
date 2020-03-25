//
//  ViewController.swift
//  EmployeeManager
//
//  Created by Ashraf on 3/25/20.
//  Copyright © 2020 com.ashraf. All rights reserved.
//

import UIKit
extension String{
       func toDouble() ->Double?{
        return NumberFormatter().number(from: self)?.doubleValue
       }
}
extension Double{
    func toString()->String{
        String(format: "%.2f", self)
    }
}
class ViewController: UIViewController {

    
    @IBAction func empBtn(_ sender: Any) {
        var enteredSalary = salaryTF.text?.toDouble()
        var employee = Employee(baseSalary: enteredSalary ?? 0.0)
        salaryTV.text = employee.getSalary().toString()
    }
    @IBAction func manBtn(_ sender: Any) {
        var enteredSalary = salaryTF.text?.toDouble()
        var manager = Manager(baseSalary: enteredSalary ?? 0.0)
        salaryTV.text = manager.getSalary().toString()
    }
    @IBOutlet weak var salaryTV: UILabel!
   
    @IBOutlet weak var salaryTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   

}

