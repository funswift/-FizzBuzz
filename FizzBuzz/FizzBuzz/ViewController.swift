//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Mugi on 2022/10/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UILabel!
    var i:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.text=String(i)
        // Do any additional setup after loading the view.
        /*
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
      }*/
    }

    @IBAction func countup(_ sender: UIButton) {
        i=i+1
        input.text=String(i)
        
    }
}

