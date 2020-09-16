//
//  ViewController.swift
//  segment200911
//
//  Created by JunHee Jo on 2020/09/11.
//  Copyright © 2020 JunHee Jo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func controlNumber(_ sender: UISegmentedControl) {
        
        
        // 선택하는 세그먼트의 타이틀 값을 어떻게 가져와야하는지 Developer Documentation를 한참 찾아보고 메서드를 확인했는데 현재 내가 클릭한 타이틀을 바로 반환해주는 함수는 못찾았습니다 ㅠㅠ 그래서 그중에 있는 선택된 세그먼트의 인덱스를 반환해주는 메서드와 Int인 index를 넣으면 그 타이틀을 반환해주는 메서드가 있어서 사용하려했는데 반환값이 옵셔널이여서 이렇게 사용하는건지는 모르지만 옵셔널바인딩을 이용한 guard 구문으로 추출한뒤에 값을 사용했습니다.
        
        
        
//        var sum = 0
//
//        let selectedIndex = sender.selectedSegmentIndex
//
//        guard let titleNumber = sender.titleForSegment(at: selectedIndex) else {
//            return
//        }
//
//        guard let upperBound = Int(titleNumber) else {
//            return
//        }
//
//        for i in 0 ... upperBound {
//            sum += i
//        }
//
        
        //switch를 사용해서 해보기
        //가독성이 더 좋아보임
        
        
        let index = sender.selectedSegmentIndex
        var sum = 0
        var upperBound = 0
        
        switch index {
        case 0:
            upperBound = 100
        case 1:
            upperBound = 1000
        case 2:
            upperBound = 10000
        case 3:
            upperBound = 100000
        default:
            break
        }
        
        
        for i in 0 ... upperBound {
            sum += i
        }
        
        
        
        
        
        
        
        //preferredStyle이 뭔지, stylr과 handler가 뭔지 개발문서를 읽었지만 아직 이해는 못했다.
        let alert = UIAlertController(title: "결과", message: "\(sum)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(okAction)
        
        //다 만들고 이 줄을 추가 안하니 경고창이 안떴다. 마지막에 꼭 추가하자
        present(alert, animated: true, completion: nil)
        
        

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

