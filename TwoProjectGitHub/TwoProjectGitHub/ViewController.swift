//
//  ViewController.swift
//  TwoProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 08/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myTableView: UITableView!
    
    var arreyWoman: [Woman] = [Woman(name: "", descriptionWoman: "", createdWoman: "", info: "", image: "")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        let XIB = UINib(nibName: "MyCustomXIBCell", bundle: nil)
        myTableView.register(XIB, forCellReuseIdentifier: "cellXIB")
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreyWoman.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 4 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyCustomCell {
                cell.setup(womanCell: arreyWoman[indexPath.row])
                return cell
            }
        } else {
            if let cellXIB = tableView.dequeueReusableCell(withIdentifier: "cellXIB", for: indexPath) as? MyCustomXIBCell {
                cellXIB.setup(womanXIB: arreyWoman[indexPath.row])
                return cellXIB
            }
        }
        return UITableViewCell()
    }
}

