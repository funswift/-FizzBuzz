//
//  ViewController.swift
//  Counter
//
//  Created by 涌井春那 on 2022/10/11.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    
    @IBOutlet weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(countLabel.text)
    }
    @IBAction func CountDownButton(_ sender: Any) {
        //-ボタンを押すとラベルの文字をカウントダウン
        count = count - 1  //count -= 1でも可
        countLabel.text = String(count)
    }
    @IBAction func CountUpButton(_ sender: Any) {
        //+ボタンを押すとラベルの文字をカウントアップ
        count = count + 1   //count += 1でも可
        countLabel.text = String(count)
        //10以上になったら文字の色を緑に変更
    }
}

