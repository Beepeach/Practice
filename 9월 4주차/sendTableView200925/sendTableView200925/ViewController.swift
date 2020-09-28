//
//  ViewController.swift
//  sendTableView200925
//
//  Created by JunHee Jo on 2020/09/25.
//

import UIKit

class ViewController: UIViewController {
    
    var list: [Person] = [
        Person(name: "Beepeach", address: "Korea"),
        Person(name: "Zelda", address: "Hyrule"),
        Person(name: "Apple", address: "US")
    ]
    
    @IBOutlet weak var listTableVies: UITableView!
    
    // 1. 테이블뷰가 인덱스를 알려준다.
    // 2. 알려준 인덱스의 주소를 vc.value에 넣는다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let cell = sender as? UITableViewCell,
              let indexPath = listTableVies.indexPath(for: cell),
              let vc = segue.destination as? SecondViewController else { return }
        vc.value = list[indexPath.row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let p = list[indexPath.row]
        cell.textLabel?.text = p.name
        cell.detailTextLabel?.text = String(p.address)
        
        return cell
    }
    
    
}

