//
//  ViewController.swift
//  stackview
//
//  Created by 김내림 on 2022/01/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet var phoneNumberBtns: [CircleButton]!
    @IBOutlet weak var phoneCallBtn: CircleButton!
    
    // 실시간 변경
    var phoneNumberString = ""{
        didSet {
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.phoneNumberLabel.textColor = .black
                self.phoneNumberLabel.text = self.phoneNumberString
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for btnItem in phoneNumberBtns {
            btnItem.addTarget(self, action: #selector(onNumberBtnClicked(sender:)), for: .touchUpInside)
        }
        
        phoneCallBtn.addTarget(self, action:  #selector(onPhoneCallBtnClicked(_:)), for: .touchUpInside)
    }
    
    @objc fileprivate func onNumberBtnClicked(sender: UIButton) {
        guard let inputString = sender.titleLabel?.text else { return }
        phoneNumberString.append(inputString)
    }

    @objc fileprivate func onPhoneCallBtnClicked(_ sender: UIButton) {
        phoneNumberString.removeAll()
    }

}

