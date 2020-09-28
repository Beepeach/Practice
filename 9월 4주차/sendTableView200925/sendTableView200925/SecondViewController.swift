//
//  SecondViewController.swift
//  sendTableView200925
//
//  Created by JunHee Jo on 2020/09/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    var value: Person?

    
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addressLabel.text = value?.address

    }
    

}
