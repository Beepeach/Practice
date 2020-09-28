//
//  ViewController.swift
//  rockScissorPaper200926
//
//  Created by JunHee Jo on 2020/09/27.
//

import UIKit

class ViewController: UIViewController {
    
    
    func presentAlert(message: String) {
        let makeAlert = UIAlertController(title: "결과", message: message, preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "확인", style: .default)
        makeAlert.addAction(actionAlert)
        
        present(makeAlert, animated: false)
    }
    
    
    func makeStartingImage(slectedImage: UIImageView, imageName: String = "rock") {
        return slectedImage.image = UIImage(named: imageName) ?? nil
    }
    
    
    func makeImage(slectedImage: UIImageView, hand: RockScissorsPaper) {
        return slectedImage.image = UIImage(named: "\(hand)") ?? nil
    }
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBAction func runGameButton(_ sender: Any) {
        makeStartingImage(slectedImage: leftImageView)
        makeStartingImage(slectedImage: rightImageView)
        
        let leftNum = Int.random(in: -1 ... 1)
        let rightNum = Int.random(in: -1 ... 1)
        let myHand = RockScissorsPaper(rawValue: leftNum)
        let yourHand = RockScissorsPaper(rawValue: rightNum)
        
        guard let mine = myHand,let yours = yourHand else { return }
        makeImage(slectedImage: leftImageView, hand: mine)
        makeImage(slectedImage: rightImageView, hand: yours)
        
        guard let myHandRawValue = myHand?.rawValue,
              let yourHandRawValue = yourHand?.rawValue else { return }
        let result = myHandRawValue - yourHandRawValue

        switch result {
        case 0:
            presentAlert(message: "비김😅")
        case -1, 2:
            presentAlert(message: "승😀")
        default:
            presentAlert(message: "패😢")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        leftImageView.layer.cornerRadius = leftImageView.frame.width / 2
        rightImageView.layer.cornerRadius = rightImageView.frame.width / 2
    }
    
    
}


