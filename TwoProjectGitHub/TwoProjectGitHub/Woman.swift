//
//  Woman.swift
//  TwoProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 08/03/23.
//

import UIKit

class Woman: NSObject {
    var name: String
    var descriptionWoman: String
    var createdWoman: String
    var info: String
    var image: String
    
    init(name: String, descriptionWoman: String, createdWoman: String, info: String, image: String) {
        self.name = name
        self.descriptionWoman = descriptionWoman
        self.createdWoman = createdWoman
        self.info = info
        self.image = image
    }
}
