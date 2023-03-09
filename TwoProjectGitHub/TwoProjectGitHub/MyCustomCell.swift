//
//  MyCustomCell.swift
//  TwoProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 08/03/23.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet var imageCell: UIImageView!
    @IBOutlet var labelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setup(womanCell: Woman) {
        
    }
}
