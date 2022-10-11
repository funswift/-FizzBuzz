//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Mugi on 2022/10/06.
//

import UIKit

class ViewController: UIViewController {
    //ラベルのインスタンス
    let label = UILabel()
    let labelCount = UILabel()
    //カウンター
    var count = 0
    
    let num: Int = 100
    let FizzStr: String = "Fizz"
    let BuzzStr: String = "Buzz"
    let FizzBuzzStr: String = "FizzBuzz"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // スクリーンの横縦幅
        let screenWidth:CGFloat = self.view.frame.width
        let screenHeight:CGFloat = self.view.frame.height
        // ボタンのインスタンス
        let button = UIButton()
//        //コンソールに表示するために呼び出す
//        self.FizzBuzzCount()
        // ViewControllerの背景色
        self.view.backgroundColor = UIColor.init(named: "Background")
        
        // ボタンの位置とサイズを設定
        button.frame = CGRect(x:25, y:screenHeight/2, width:screenWidth-50, height:50)
        // ボタンのタイトルを設定
        button.setTitle("Counter", for:UIControl.State.normal)
        // タイトルの色
        button.setTitleColor(UIColor.black, for: .normal)
        // ボタンのフォントサイズ
        button.titleLabel?.font =  UIFont.systemFont(ofSize: 36)
        // 背景色
        button.backgroundColor = UIColor.white
        // Viewにボタンを追加
        self.view.addSubview(button)
        // タップされたときのaction
        button.addTarget(self,
                         action: #selector(ViewController.buttonTapped(sender:)),
                         for: .touchUpInside)
        
        // ラベルのサイズを設定
        label.frame = CGRect(x:screenWidth/4, y:600, width:screenWidth/2, height:50);
        labelCount.frame = CGRect(x:screenWidth/4, y:200, width:screenWidth/2, height:50);
        // ラベルの文字を設定
        label.text = "0"
        labelCount.text = "0"
        // 文字を中央にalignする
        label.textAlignment = NSTextAlignment.center
        labelCount.textAlignment = NSTextAlignment.center
        // ラベルのフォントサイズ
        label.font = UIFont.systemFont(ofSize: 36)
        labelCount.font = UIFont.systemFont(ofSize: 36)
        // Viewにラベルを追加
        self.view.addSubview(label)
        self.view.addSubview(labelCount)
    }
    
    @objc func buttonTapped(sender: Any) {
        count += 1
        label.text = fizzBuzzCheck(i: count)
        labelCount.text = String(count)
    }
    
    /*
     funciton name: FizzBuzzCheck
     return String
     */
    func fizzBuzzCheck(i: Int) -> String {
        switch (i%3, i%5) {
        case (0, 0):
            label.text = FizzBuzzStr
            return FizzBuzzStr
        case (0, _):
            label.text = FizzStr
            return FizzStr
        case (_, 0):
            label.text = BuzzStr
            return BuzzStr
        default:
            label.text = String(i)
            return String(i)
        }
    }
    
    /*
     funciton name: FizzBuzzCount
     return void
     */
    func fizzBuzzCount() {
        for x in 1...num {
            print(fizzBuzzCheck(i: x))
        }
    }
}

