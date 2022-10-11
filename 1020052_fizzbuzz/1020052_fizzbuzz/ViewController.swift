//
//  ViewController.swift
//  1020052_fizzbuzz
//
//  Created by 高野希澄 on 2022/10/10.
//

import UIKit

class ViewController: UIViewController {
    
    var n = 0

    @IBOutlet weak var countNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countNumber.text = String(n)
        
    }
    @IBAction func button(_ sender: Any) {
        n += 1
        countNumber.text = String(n)
    }
    

}

