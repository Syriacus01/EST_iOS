//
//  ViewController.swift
//  UIKit_저학년 계산기
//
//  Created by 조수원 on 2/25/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtNumber1: UITextField!
    @IBOutlet weak var txtNumber2: UITextField!
    @IBOutlet weak var txtOper: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnResult(_ sender: Any) {
        var num1: Int = Int(  txtNumber1.text ?? "0" )!
        var num2: Int = Int(  txtNumber2.text ?? "0" )!
        var oper: String =  txtOper.text ?? "+"
        var result: Int = Int(lblResult.text ?? "0") ?? 0
        
        if oper == "+" {
            result = num1 + num2
        } else if oper == "-" {
            result = num1 - num2
        } else {
            lblResult.text = "다시 입력해주세요."
        }
        lblResult.text = "결과: \(num1) \(oper) \(num2) = \(result)"
        print("결과:", num1, oper, num2, "=", result)
        
    }
    
}

