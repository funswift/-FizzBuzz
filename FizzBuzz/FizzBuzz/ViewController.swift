//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Mugi on 2022/10/06.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    
    @IBOutlet var fizzbuzzLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func cocuntButton(_ sender: Any) {
        count = count + 1
        countLabel.text = String(count)
        fizzbuzzLabel.text = FizzBuzz(i: count)
    }
}

//for i in 1...100{
//      switch (i % 3, i % 5){
//          case (0, 0) :
//            print("FizzBuzz")
//          case (0, _) :
//            print("Fizz")
//          case (_, 0) :
//            print("Buzz")
//        default:
//          print(i)
//      }
//
//}

