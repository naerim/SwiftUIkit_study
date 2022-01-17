//
//  ViewController.swift
//  firebaseTest
//
//  Created by 김내림 on 2022/01/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
        
    @IBAction func loginBtn(_ sender: UIButton) {
        guard let id = self.idTextField.text else { return
        }
        guard let pw = self.pwTextField.text else {
            return
        }
        printuserInfo(id: id, pw: pw)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc fileprivate func printuserInfo(id:String, pw:String) {
        print(id, pw)
    }


}

