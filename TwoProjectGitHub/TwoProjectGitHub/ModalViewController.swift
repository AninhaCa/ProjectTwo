//
//  ModalViewController.swift
//  TwoProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 08/03/23.
//

import UIKit

class ModalViewController: UIViewController {

    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func play(_ sender: Any) {
        if let navigation = self.storyboard?.instantiateViewController(identifier: "navi") {
            button.backgroundColor = .black
            self.present(navigation, animated: true)
        }
    }
}
