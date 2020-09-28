//
//  ViewController.swift
//  sendValue200925
//
//  Created by JunHee Jo on 2020/09/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? SecondViewController else { return }
        vc.value = passwordField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

