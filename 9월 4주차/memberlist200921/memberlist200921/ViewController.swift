//
//  ViewController.swift
//  memberlist200921
//
//  Created by JunHee Jo on 2020/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var ageField: UITextField!
    
    @IBOutlet weak var changeSort: UISwitch!
    
    @IBAction func typeChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: //이름순정리
            list.sort {
                guard let name1 = $0["name"], let name2 = $1["name"] else { return false }
                return name1 < name2
                
            }
        case 1:
            list.sort {
                guard let age1 = $0["age"], let age2 = $1["age"] else { return false }
                return age1 < age2
            }
        default:
            break
        }
        
        listTableView.reloadData()
    }
    
    
    
    
    
    
    @IBAction func add(_ sender: Any) {
        // trimming 도 추가해야한다.
        let charSet = CharacterSet.whitespacesAndNewlines
        
        // 순서도 중요하다.
        // guard let str = name.trimmingCharacters(in: charSet) 은 rhs가 옵셔널 표현식이 아니므로 바인딩 할 수 없다.
        guard let name = nameField.text?.trimmingCharacters(in: charSet), name.count > 0 else {
            print("이름 없음")
            return
        }
        
        
        // 위와 같은 효과
        guard let age = ageField.text, age.trimmingCharacters(in: charSet).count > 0 else {
            print("나이 없음")
            return
        }
        
//        var dict = [String: String]()
////        let dict = [String: String](name: age) error!!
//        dict.updateValue(age, forKey: name)
        
        let newPerson = ["name": name, "age": age]
        list.append(newPerson)
        //키로 값을 가져오면 옵셔널로 가져온다.
//            return lhs["name"] < rhs["name"]
//        list.sort {
//            guard let name1 = $0["name"], let name2 = $1["name"] else { return false }
//            return name1 < name2
//        }
//        더 짧게 만든 코드
//        list.sort { $0["name"] ?? "" < $1["name"] ?? "" }

        print(list)
        
        // list가 변하지만 Tableview는 변한거를 모른다.
        // 우리가 알려줘야한다.
//        list.sort { (lhs, rhs) -> Bool in
//            //딕셔너리 정렬 후 키 비교
//
//            lhs.keys  rhs.keys
//        }
        
        // reloadData에서 애니메이션 추가
        listTableView.reloadSections(IndexSet(integer: 0), with: .left)
        
        //초기화
//        nameField.text = ""
//        ageField.text = ""
        nameField.text = nil
        ageField.text = nil
        nameField.becomeFirstResponder()
    }
    
    @IBOutlet weak var listTableView: UITableView!
    
    // 바로 저장 x
    // 배열로 저장
    // 편집이 가능 해야한다. 그러니 var
    
    // [String: String] 와의 차이를 구별하자. 이건 딕셔너리를 만드는것
    var list = [
        ["name": "김떙떙", "age": String(Int.random(in: 0...100))],
        ["name": "하땡떙", "age": String(Int.random(in: 0...100))],
        ["name": "박땡땡", "age": String(Int.random(in: 0...100))],
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

// RxSwift, Combine

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
//        let dict = list[indexPath.row]
        cell.textLabel?.text = list[indexPath.row]["name"]
        cell.detailTextLabel?.text = list[indexPath.row]["age"]
        
        return cell
    }
    
    // 삭제구현 스타일만
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
}



extension ViewController: UITableViewDelegate {
    // 삭제구현 코드작성
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        list.remove(at: indexPath.row)
        
        tableView.deleteRows(at: [indexPath], with: .automatic)
        
        
//        tableView.reloadData()
    }
}




// 과제
// 스위치를 켜면 오름차순, 끄면 내림차순
