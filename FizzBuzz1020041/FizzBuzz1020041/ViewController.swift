//
//  ViewController.swift
//  FizzBuzz1020041
//
//  Created by 涌井春那 on 2022/10/10.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for x in 1...100 {
            switch (x % 3, x % 5) {
            case (0, 0):
                print("FizzBuzz")
            case (_, 0):
                print("Buzz")
            case (0, _):
                print("Fizz")
            default:
                print(x)
            }
        }
    }
    
    
}

