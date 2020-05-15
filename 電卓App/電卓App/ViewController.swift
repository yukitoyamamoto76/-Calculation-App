//
//  ViewController.swift
//  電卓App
//
//  Created by 山本優気人 on 2019/11/03.
//  Copyright © 2019 YukitoYamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0; // 画面上の数字
    var previousNumber:Double = 0; // 前回表示されていた数字
    var performingMath = false  // 計算してもいい？の判断値
    var operation = 0; //  + , - , × , ÷

    @IBOutlet weak var textLabel: UILabel!
    //
    //
    @IBAction func numbers(_ sender: UIButton) {textLabel.text = String(sender.tag-1)// 数字ボタンを取り扱い可能
            if performingMath == true{
                textLabel.text = String(sender.tag-1)  // numberOnScreen の値が上書きされる
                numberOnScreen = Double(textLabel.text!)!
                performingMath = false
            }
            else{
                textLabel.text = textLabel.text! + String(sender.tag-1)  // String(sender.tag-1) 数字が代入
                numberOnScreen = Double(textLabel.text!)!  // 数字が表示
            }
        }
    //
    @IBAction func buttons(_ sender: UIButton) {
                 if textLabel.text != "" && sender.tag != 11 && sender.tag != 16{   //数字が表示されていた場合の処理
                previousNumber = Double(textLabel.text!)!
                if sender.tag == 12{ // ÷
                    textLabel.text = "÷";
                }
                else if sender.tag == 13{  // ×
                    textLabel.text = "×";
                }
                else if sender.tag == 14{  // -
                    textLabel.text = "-";
                }
                else if sender.tag == 15{  // +
                    textLabel.text = "+";
                }
                operation = sender.tag
                performingMath = true;
            }
            else if sender.tag == 16 // = が押された時の処理
            {
                if operation == 12{
                    textLabel.text = String(previousNumber / numberOnScreen)
                }
                else if operation == 13{
                    textLabel.text = String(previousNumber * numberOnScreen)
                }
                else if operation == 14{
                    textLabel.text = String(previousNumber - numberOnScreen)
                }
                else if operation == 15{
                    textLabel.text = String(previousNumber + numberOnScreen)
                }
            }
            else if sender.tag == 11{ // C が押された時の処理
                textLabel.text = ""
                previousNumber = 0;
                numberOnScreen = 0;
                operation = 0;
            }
        if textLabel.text != "" && sender.tag != 11 && sender.tag != 16{   //数字が表示されていた場合の処理
                previousNumber = Double(textLabel.text!)!
                if sender.tag == 12{ // ÷
                    textLabel.text = "÷";
                }
                else if sender.tag == 13{  // ×
                    textLabel.text = "×";
                }
                else if sender.tag == 14{  // -
                    textLabel.text = "-";
                }
                else if sender.tag == 15{  // +
                    textLabel.text = "+";
                }
                operation = sender.tag
                performingMath = true;
            }
            else if sender.tag == 16 // = が押された時の処理
            {
                if operation == 12{
                    textLabel.text = String(previousNumber / numberOnScreen)
                }
                else if operation == 13{
                    textLabel.text = String(previousNumber * numberOnScreen)
                }
                else if operation == 14{
                    textLabel.text = String(previousNumber - numberOnScreen)
                }
                else if operation == 15{
                    textLabel.text = String(previousNumber + numberOnScreen)
                }
            }
            else if sender.tag == 11{ // C が押された時の処理
                textLabel.text = ""
                previousNumber = 0;
                numberOnScreen = 0;
                operation = 0;
            }
}



 
 
 
 
 
 override func viewDidLoad() {
     super.viewDidLoad()
     // Do any additional setup after loading the view, typically from a nib.
 }

}
