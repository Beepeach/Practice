//
//  SecondViewController.swift
//  sendValue200925
//
//  Created by JunHee Jo on 2020/09/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    var value: String?

    @IBOutlet weak var passwordShowLabel: UILabel!
    
    override func viewDidLoad() {
        passwordShowLabel.text = value
        super.viewDidLoad()
    }
    

}
