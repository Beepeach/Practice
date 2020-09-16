//
//  ViewController.swift
//  200911_3
//
//  Created by JunHee Jo on 2020/09/11.
//  Copyright © 2020 JunHee Jo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var resultLabel: UILabel!
    
}


extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 100
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row + 1)"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row + 1)
        
        // 0부터 선택한 수까지의 합을 레이블에 출력
        let range = 0 ... (row + 1)
        var sum = 0
        for i in range {
            sum += i
        }
        
        resultLabel.text = "\(sum)"
  

    }
}

//target-acrion patten
//delegate patten
