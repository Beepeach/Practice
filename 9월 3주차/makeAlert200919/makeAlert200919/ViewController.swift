//
//  ViewController.swift
//  makeAlert200919
//
//  Created by JunHee Jo on 2020/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    func presentAlert(title: String, message: String) {
        let makeAlert = UIAlertController(title: title, message: message, preferredStyle: .alert )
        let actionAlert = UIAlertAction(title: "확인", style: .default)
        
        makeAlert.addAction(actionAlert)
        present(makeAlert, animated: true)
    }
    
    
    
    @IBAction func popAlert(_ sender: Any) {
        
        
        presentAlert(title: "경고창", message: "버튼을 눌렀습니다.")
        
        
        
        
        
        //선언만했다. 사용을 안했다.
        let makeAlert = UIAlertController(title: "경고창", message: "버튼을 눌렀습니다.", preferredStyle: .alert)
        //이걸해도 아직까지 안나왔다. 아직까지 선언만 했다.
        let actionAlert = UIAlertAction(title: "뭐가바뀔까", style: .default)

        //이제 만든 상수를 사용했는데 아무 반응이 없다.
        makeAlert.addAction(actionAlert)

        //이거까지 하니까 나왔다, false면? false도 출력이 된다.
        present(makeAlert, animated: true, completion: nil)
        //Pass true to animate the presentation; otherwise, pass false.
        //presentation을 animate하려면 true를 아니면 false를... animate안하려면 false인거같은데 왜 될까?

        
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

