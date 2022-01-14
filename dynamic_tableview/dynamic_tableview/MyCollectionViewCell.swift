//
//  MyCollectionViewCell.swift
//  dynamic_tableview
//
//  Created by 김내림 on 2022/01/14.
//

import Foundation
import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileLable: UILabel!
    
    var imageName: String = "" {
        didSet{
            print("imageName - didSet() \(imageName)")

            self.profileImg.image = UIImage(systemName: imageName)
            self.profileLable.text = imageName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        self.contentView.layer.cornerRadius = 8
        self.contentView.layer.borderWidth = 1
        self.contentView.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
}
