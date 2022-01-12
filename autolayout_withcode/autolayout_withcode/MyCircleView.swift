//
//  MyCircleView.swift
//  autolayout_withcode
//
//  Created by 김내림 on 2022/01/12.
//

import Foundation
import UIKit

class MyCircleView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print("MyCircleView - layoutSubview() called")
        self.layer.cornerRadius = self.frame.height / 2
    }
}
