//
//  ThreeViewController.swift
//  TwoProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 08/03/23.
//

import UIKit

class ThreeViewController: UIViewController {

    @IBOutlet var buttonThree: UIButton!
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var imageThree: UIImageView!
    
    var womanThree: Woman = Woman(name: "", descriptionWoman: "", createdWoman: "", info: "", image: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = womanThree.name
        labelTwo.text = womanThree.createdWoman
        imageThree.image = UIImage(named: womanThree.image)
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
        if let four = self.storyboard?.instantiateViewController(identifier: "four") as? FourViewController {
            four.womanFour = self.womanThree
            buttonThree.backgroundColor = .black
            self.navigationController?.pushViewController(four, animated: true)
        }
    }
}
