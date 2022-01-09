//
//  MyTableViewCell.swift
//  dynamic_tableview
//
//  Created by 김내림 on 2022/01/09.
//

import Foundation
import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userProfileImg: UIImageView!
    @IBOutlet weak var userContent: UILabel!
    
    // 셀이 렌더링(그릴때) 될때
    override func awakeFromNib() {
        super.awakeFromNib()
        print("MyTableViewCell - awakeFromVib() called")
        
        userProfileImg.layer.cornerRadius = userProfileImg.frame.height / 2
    }
}
