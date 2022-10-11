//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Mugi on 2022/10/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      for i in 1...100{
          if(i%3==0 && i%5==0){
              print("FizzBuzz")
          }else if(i%3==0){
              print("Fizz")
          }else if(i%5==0){
              print("Buzz")
          }else{
              print (i)
          }
      }
      
    }

}

