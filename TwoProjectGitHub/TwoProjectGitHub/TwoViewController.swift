//
//  TwoViewController.swift
//  TwoProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 08/03/23.
//

import UIKit

class TwoViewController: UIViewController {

    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var followTwo: UIButton!
    @IBOutlet var imageTwo: UIImageView!
    
    var womanTwo: Woman = Woman(name: "", descriptionWoman: "", createdWoman: "", info: "", image: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func back(_ sender: Any) {
    }
    @IBAction func follow(_ sender: Any) {
    }
}
