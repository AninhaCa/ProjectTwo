//
//  ViewController.swift
//  TwoProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 08/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myTableView: UITableView!
    
    var arreyWoman: [Woman] = [Woman(name: "1", descriptionWoman: "1", createdWoman: "1", info: "1", image: "")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
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

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let two = self.storyboard?.instantiateViewController(identifier: "two") as? TwoViewController {
            two.womanTwo = arreyWoman[indexPath.row]
            self.navigationController?.pushViewController(two, animated: true)
        }
    }
}
