//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Mugi on 2022/10/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UILabel!
    @IBOutlet weak var output: UILabel!
    var i:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.text=String(i)
        output.text=String(i)
        // Do any additional setup after loading the view.
    }

    @IBAction func countup(_ sender: UIButton) {
        i=i+1
        input.text=String(i)
        if(i%3==0 && i%5==0){
            output.text="FizzBuzz"
        }else if(i%3==0){
            output.text="Fizz"
        }else if(i%5==0){
            output.text="Buzz"
        }else{
            output.text=String(i)
        }
    }
}

