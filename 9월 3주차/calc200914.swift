//
//  ViewController.swift
//  calc0909
//
//  Created by JunHee Jo on 2020/09/09.
//  Copyright © 2020 JunHee Jo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftField: UITextField!
    
    @IBOutlet weak var centerField: UITextField!
    
    @IBOutlet weak var rightField: UITextField!
    
    //경고창 출력 함수
    func presentAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    

    @IBAction func calc(_ sender: Any) {
        
        if let leftStr = leftField.text, let _ = Int(leftStr) {
            leftField.backgroundColor = .white
        } else {

        }
        
        
        guard let leftStr = leftField.text, let leftNum = Int(leftStr) else {
            //경고창
            presentAlert(title: "⚠️", message: "왼쪽 칸에 숫자를 입력해주세요.")
            leftField.becomeFirstResponder()
            return
        }
        
        guard let rightStr = rightField.text, let rightNum = Int(rightStr)  else {
            //경고창
            presentAlert(title: "⚠️", message: "오른쪽 칸에 숫자를 입력해주세요.")
            rightField.becomeFirstResponder()
            return
        }
        
        guard let op = centerField.text else {
            return
        }
        
        var result = 0
        
        switch op {
        case "+":
            result = leftNum + rightNum
        case "-":
            result = leftNum - rightNum
        case "*":
            result = leftNum * rightNum
        case "/":
            result = leftNum / rightNum
        default:
            presentAlert(title: "⚠️", message: "올바른 연산자(+, -, *, /)\n를 입력해주세요" )
            break
        }
        
        let msg = "\(leftNum) \(op) \(rightNum) = \(result)"
        leftField.becomeFirstResponder()
        
        presentAlert(title: "결과", message: msg)
        
        leftField.text = nil
        rightField.text = nil
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftField.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }
    
    
}






// 1. +, - , *, / 만 지원, 나머지 다른 문자를 입력하면 경고창 표시
// 2. 결과를 도출하는 코드를 if 나 switch로 구현
//-------------------------------------------------
// 3. 사칙 연산을 수행하는 함수/메소드 만들기
// 4. 변수를 하나 만들고 입력된 연사자에 따라서 적절한 함수를 변수에 저장
// 5. 변수에 저장된 함수/메서드를 호출해서 결과를 도출

