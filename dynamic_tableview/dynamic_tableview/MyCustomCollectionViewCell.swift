//
//  MyCustomCollectionViewCell.swift
//  dynamic_tableview
//
//  Created by 김내림 on 2022/01/15.
//

import Foundation
import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var profileImg: UIImageView!
    
    var imageName: String = "" {
        didSet{
            print("imageName - didSet() \(imageName)")

            self.profileImg.image = UIImage(systemName: imageName)
            self.profileLabel.text = imageName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        self.contentView.layer.cornerRadius = 8
        self.contentView.layer.borderWidth = 1
        self.contentView.layer.borderColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
    }
}
