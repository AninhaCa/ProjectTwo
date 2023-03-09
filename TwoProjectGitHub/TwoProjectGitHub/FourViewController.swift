//
//  FourViewController.swift
//  TwoProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 08/03/23.
//

import UIKit

class FourViewController: UIViewController {

    @IBOutlet var buttonFour: UIButton!
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var image: UIImageView!
    
    var womanFour: Woman = Woman(name: "", descriptionWoman: "", createdWoman: "", info: "", image: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = womanFour.name
        labelTwo.text = womanFour.info
        image.image = UIImage(named: womanFour.image)
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
        if let modal = self.storyboard?.instantiateViewController(identifier: "modal") {
            buttonFour.backgroundColor = .black
            self.present(modal, animated: true)
        }
    }
}
