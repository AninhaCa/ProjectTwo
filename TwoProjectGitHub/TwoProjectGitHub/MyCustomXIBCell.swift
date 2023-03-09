//
//  MyCustomXIBCell.swift
//  TwoProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 08/03/23.
//

import UIKit

class MyCustomXIBCell: UITableViewCell {

    @IBOutlet var labelXIB: UILabel!
    @IBOutlet var imageXIB: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(womanXIB: Woman) {
        labelXIB.text = womanXIB.name
        imageView?.image = UIImage(named: womanXIB.image)
    }
}
