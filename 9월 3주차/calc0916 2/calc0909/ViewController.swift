//
//  ViewController.swift
//  calc0909
//
//  Created by JunHee Jo on 2020/09/09.
//  Copyright © 2020 JunHee Jo. All rights reserved.
//

import UIKit
import Foundation



class ViewController: UIViewController {
    
    @IBOutlet weak var leftField: UITextField!
    
    @IBOutlet weak var centerField: UITextField!
    
    @IBOutlet weak var rightField: UITextField!
    
    //경고창 출력 함수
    func presentAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        present(<#T##viewControllerToPresent: UIViewController##UIViewController#>, animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
        
        // _ in 꼭 기억하자. parameter를 쓰지 않겠다고 명시 하거나 $n 을 다 써야한다
        let okAction = UIAlertAction(title: "확인", style: .default) { _ in
            print("확인을 눌렀어!!")
//            //self를 꼭
//            self.leftField.text = nil
//            self.rightField.text = nil
//            self.centerField.text = nil
        }
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: { print("프레젠테이션 완료")})
        //여긴 가능
        //leftField.text = ""
    }
    
    
    //초기화 함수
    //만들었지만 한번밖에 안쓰여서 실용성이 없어보여 굳이 해야하는지 의문
    func resetNumber() {
        leftField.text = nil
        rightField.text = nil
        centerField.text = nil
    }
    
    
    
    
    @IBAction func calc(_ sender: Any) {
        
        
        
        
        guard let leftStr = leftField.text, let leftNum = Double(leftStr) else {
            leftField.becomeFirstResponder()
            presentAlert(title: "⚠️", message: "왼쪽 칸에 숫자를 입력해주세요.")
            return
        }
        
        
        guard let rightStr = rightField.text, let rightNum = Double(rightStr)  else {
            rightField.becomeFirstResponder()
            presentAlert(title: "⚠️", message: "오른쪽 칸에 숫자를 입력해주세요.")
            return
        }
        
        guard let op = centerField.text else {
            presentAlert(title: "⚠️", message: "올바른 연산자( +, -, *, / )를\n 입력해주세요." )
            //bindingSuccess = false
            //여기도 분명 커서를 중간으로 옮겼는데, 다른곳이 클릭이 됐을땐 커서가 옮겨지지 않는다.
            centerField.becomeFirstResponder()
            return
        }
        var result: Double = 0
        
        func makeMsg(op: String, point: Int ) -> String {
            let msg = "\(String(format: "%.0f", leftNum)) \(op) \(String(format: "%.0f", rightNum)) = \(String(format: "%.\(point)f", result))"
            return msg
        }
        
        
        
        switch op {
        case "+":
            result = leftNum + rightNum
            presentAlert(title: "결과", message: makeMsg(op: op, point: 0))
        case "-":
            result = leftNum - rightNum
            presentAlert(title: "결과", message: makeMsg(op: op, point: 0))
        case "*":
            result = leftNum * rightNum
            presentAlert(title: "결과", message: makeMsg(op: "X", point: 0))
        case "/":
            result = leftNum / rightNum
            presentAlert(title: "결과", message: makeMsg(op: "÷", point: 2))
        default:
            centerField.becomeFirstResponder()
            presentAlert(title: "⚠️", message: "지원하지 않는 연산자 입니다.\n올바른 연산자( +, -, *, / )를\n 입력해주세요." )
//            centerField.text = nil
            return
        }
        
        resetNumber()
        leftField.becomeFirstResponder()
        
        //기존에 여기서 마지막에 리셋이 있어서 지원하지 않는 연산자를 입력할 경우에도 리셋이 된다.
        //왼쪽,오른쪽 연산자값이 모두 바인딩 되면  리셋을 하고 싶어서 여러가지 방법을 생각해보았다.
        //bindingSuccess = false 이 계속 반복이 돼서 안좋아 보인다.
        //문제가 switch문에서 break를 하면 switch문만 빠져나오는게 문제였는데 메서드안에 구현됐으니 혹시 return을 하면 아래 코드가 실행 안되고 메서드가 종료되지 않을까 하고 return으로 변경하니 아래코드가 실행이 안됐다. 그래서 bindingSuccess = false 도, 아래 주석처리된 코드도 필요가 없어졌다.
        
        //커서문제를 계속 고민해봤는데 아직도 고치지 못했다.
        //becomeFirstResponder()메서드의 문제인가해서 개발문서를 읽어보니 Calling this method is not a guarantee that the object will become the first responder. 보장하지 않는다고 나와있는데 커서문제에 대한 말로 이해했고 바꾸고 싶다면 custom responders에서 override해서 사용할수 있다고 나와있는거 같은데 이에 대한 강의를 아직 듣지 못해서 바꾸지 못했다.
        
        // 나눗셈에서 버려지는 수가 생겨서 Double로 입력을 받고 결과값만 소숫점 2번쨰 자리까지 나오게 구현했다.
        // 곱셈을 할땐 출력창에 X로 나눗셈을 할땐 출력창에 ÷ 을 출력하고 싶었고, 덧셈,뺼셈,곱셈은 출력창에 소숫점이 안나오게, 나머지만 소숫점이 나오게 출력하고 싶었는데 switch 분기할때마다 결과값을 각각 넣는 코드를 생각했다가 그럼 msg 생성코드가 계속 반복이 돼서 함수로 구현을 했는데 함수선언 위치를 위에 올려 메서드로 생성을 하면 옵셔널바인딩한 leftNum, rightNum 을 인식하지못해서 nested func으로 구현을 했는데 함수선언위치가 여기 있어도 괜찮은지 의문이다.
        // 커서문제를 제외하고 원하는 대로 구현은 됐는데 코드의 가독성이나 좋은 알고리즘인가에 대해서는 잘모르겠다.
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
}






// 1. +, - , *, / 만 지원, 나머지 다른 문자를 입력하면 경고창 표시
// 2. 결과를 도출하는 코드를 if 나 switch로 구현
//-------------------------------------------------
// 3. 사칙 연산을 수행하는 함수/메소드 만들기
// 4. 변수를 하나 만들고 입력된 연사자에 따라서 적절한 함수를 변수에 저장
// 5. 변수에 저장된 함수/메서드를 호출해서 결과를 도출


