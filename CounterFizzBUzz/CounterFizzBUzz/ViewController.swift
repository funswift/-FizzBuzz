//
//  ViewController.swift
//  CounterFizzBUzz
//
//  Created by 涌井春那 on 2022/10/11.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    
    @IBOutlet weak var FizzBuzzLabel: UILabel!
    @IBOutlet weak var CountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(CountLabel.text)
    }
    @IBAction func CountDownButton(_ sender: Any) {
        //-ボタンを押すとラベルの文字をカウントダウン
        count = count - 1  //count -= 1でも可
        CountLabel.text = String(count)
        changeFizzBuzz()
    }
    
    @IBAction func CountUpButton(_ sender: Any) {
        //+ボタンを押すとラベルの文字をカウントアップ
        count = count + 1   //count += 1でも可
        CountLabel.text = String(count)
        changeFizzBuzz()
    }
    //カウントした数字によってFizzBuzzを表示するメソッドを定義する
    func changeFizzBuzz() {
        switch (count % 3, count % 5) {
        case (0, 0):
            FizzBuzzLabel.text = "FizzBuzz"
        case (_, 0):
            FizzBuzzLabel.text = "Buzz"
        case (0, _):
            FizzBuzzLabel.text = "Fizz"
        default:
            FizzBuzzLabel.text = String(count)
        }
    }
    
}

