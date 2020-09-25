//
//  ViewController.swift
//  join200919
//
//  Created by JunHee Jo on 2020/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    func presentAlert(title: String, message: String) {
        let makeAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actAlert = UIAlertAction(title: "확인", style: .default)
        makeAlert.addAction(actAlert)
        present(makeAlert, animated: true)
    }
    
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var genderSelector: UISegmentedControl!
    
    
    @IBAction func joinUs(_ sender: Any) {
        
        // 이메일 정규 표현식
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        // Id를 한글자라도 입력을 해야하고, 입력한 문자열이 정규식에 포함이 돼야만 바인딩 성공
        guard let id = idField.text,
              let range = id.range(of: emailRegEx, options: [.regularExpression]),
              id.count > 0,
              range.upperBound == id.endIndex && range.lowerBound == id.startIndex else {
            idField.becomeFirstResponder()
            presentAlert(title: "⚠️", message: "이메일 형식의 ID를 입력해 주세요.\n 예) example@gmail.com" )
            return
        }
        
        // 6 ~ 20글자 사이의 비밀번호.
        // 구두점과 특수문자를 포함해야한다.
        var myCharSet = CharacterSet(charactersIn: "!@#$%^&*()_+~`=-")
        myCharSet.formUnion(CharacterSet.punctuationCharacters)
        
        guard let password = passwordField.text,
              (6...20).contains(password.count),
              password.rangeOfCharacter(from: myCharSet) != nil else {
            passwordField.becomeFirstResponder()
            presentAlert(title: "⚠️", message: "특수문자를 포함한 6 ~ 20 자리 비밀번호를 입력해 주세요.")
            return
        }
        
        // 생성한 비밀번호와 같은 비밀번호를 입력해야한다.
        guard let confirmPassword = confirmField.text, confirmPassword == password else {
            confirmField.becomeFirstResponder()
            presentAlert(title: "⚠️", message: "비밀번호가 다릅니다.")
            return
        }
        
        // 이름은 2 ~ 17자 이고 숫자와 특수문자가 있으면 안된다.
        let numberCharSet = CharacterSet(charactersIn: "0123456789")
        myCharSet.formUnion(numberCharSet)
        
        guard let name = nameField.text,
              (2...17).contains(name.count),
              name.rangeOfCharacter(from: myCharSet) == nil else {
            nameField.becomeFirstResponder()
            presentAlert(title: "⚠️", message: "올바른 이름을 입력해 주세요.")
            return
        }
        
        // 나이는 숫자만 받는다.
        guard let age = ageField.text,
              let ageNum = Int(age),
              (0...150).contains(ageNum),
              age.rangeOfCharacter(from: numberCharSet) != nil else {
            ageField.becomeFirstResponder()
            presentAlert(title: "⚠️", message: "")
            return
        }
        
        // 가입 성공시 나올 문구
        let msg = """
        ID: \(id)
        Name: \(name)
        Age: \(age)
        """
        
        // 남자를 선택하거나 여자를 선택 선택을 안하면 성별을 선택해주세요라는 문구 출력
        
        switch genderSelector.selectedSegmentIndex {
        case 0:
            presentAlert(title: "가입 완료", message: msg + "\nGender: Male")
        case 1:
            presentAlert(title: "가입 완료", message: msg + "\nGender: Female")
        default:
            presentAlert(title: "⚠️", message: "성별을 선택해주세요.")
            return
        }
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

