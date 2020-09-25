//
//  ViewController.swift
//  insertImage200923
//
//  Created by JunHee Jo on 2020/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    // ?가 붙어있어서 ?? 로 없을때 nil을 반환하도록 했다.
    let beepeach = UIImage(named: "Beepeach") ?? nil
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 이걸 추가해야 화면에 나타났다.
        imageView.image = beepeach
    
        // Do any additional setup after loading the view.
    }

}

