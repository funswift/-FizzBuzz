//
//  ViewController.swift
//  1020052_fizzbuzz_all
//
//  Created by 高野希澄 on 2022/10/12.
//

import UIKit

class ViewController: UIViewController {
    
    var number = 0;

    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var fizzbuzz: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        count.text = String(number)
        fizzbuzz.text = "0"
    }
    
    @IBAction func button(_ sender: Any) {
        number += 1
        count.text = String(number)
        
        switch (number%3, number%5){
        case (0, 0):
            fizzbuzz.text = "fizzbuzz"
        case (0, _):
            fizzbuzz.text = "fizz"
        case (_, 0):
            fizzbuzz.text = "buzz"
        default:
            fizzbuzz.text = String(number)
        }
    }
    

}

