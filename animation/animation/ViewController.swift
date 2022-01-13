//
//  ViewController.swift
//  animation
//
//  Created by 김내림 on 2022/01/13.
//

import UIKit

class ViewController: UIViewController {
    
    // constraint 접근
    var someViewBottomConstraint : NSLayoutConstraint?
    
    override func loadView() {
        super.loadView()
        print("ViewController - loadView()")
        view.backgroundColor = UIColor(named: "Mint")
        
        let someView = UIView()
        someView.backgroundColor = UIColor(named: "Pink")
        someView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(someView)
        someView.layer.cornerRadius = 8
        NSLayoutConstraint.activate([
            someView.widthAnchor.constraint(equalToConstant: 100),
            someView.heightAnchor.constraint(equalToConstant: 50),
            someView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            someView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        someViewBottomConstraint = NSLayoutConstraint(item: someView, attribute: .bottom, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1.0, constant: 0)
        someViewBottomConstraint?.isActive = true
        
        // button
        let moveViewUpBtn = UIButton(type: .system)
        moveViewUpBtn.translatesAutoresizingMaskIntoConstraints = false
        moveViewUpBtn.backgroundColor = .white
        moveViewUpBtn.setTitle("위로 올리기", for: .normal)
        moveViewUpBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        moveViewUpBtn.setTitleColor(.black, for: .normal)
        moveViewUpBtn.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        moveViewUpBtn.layer.cornerRadius = 8
        moveViewUpBtn.addTarget(self, action: #selector(moveViewUp), for: .touchUpInside)
        
        self.view.addSubview(moveViewUpBtn)
        moveViewUpBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        moveViewUpBtn.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        
    }
    
    @objc fileprivate func moveViewUp(){
        print("Viewcontroller - moveViewUp() called")
        someViewBottomConstraint?.constant -= 100
        UIViewPropertyAnimator(duration: 0.5, curve: .easeOut, animations: { [weak self] in
            guard let self = self else { return }
            self.view.layoutIfNeeded()
        }).startAnimation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }


}

#if DEBUG
import SwiftUI

struct ViewControllerRepresentable: UIViewControllerRepresentable {
    // update
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    // makeui
    @available(iOS 13.0, *)
    func makeUIViewController(context: Context) -> UIViewController {
        ViewController()
    }
}
struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
            .previewDevice("iPhone 11")
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewDisplayName("아이폰 11")
    }
}

#endif

