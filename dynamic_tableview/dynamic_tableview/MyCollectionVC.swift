//
//  MyCollectionVC.swift
//  dynamic_tableview
//
//  Created by 김내림 on 2022/01/13.
//

import Foundation
import UIKit

class MyCollectionVC: UIViewController {
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var MySegmentControl: UISegmentedControl!
    
    fileprivate let systemImageNameArray = [
        "moon", "zzz", "sparkles", "cloud", "tornado", "smoke.fill", "tv.fill", "gamecontroller", "headphones", "flame", "bolt.fill", "hare", "tortoise", "moon", "zzz", "sparkles", "cloud", "tornado", "smoke.fill", "tv.fill", "gamecontroller", "headphones", "flame", "bolt.fill", "hare", "tortoise", "ant", "hare", "car", "airplane", "heart", "bandage", "waveform.path.ecg", "staroflife", "bed.double.fill", "signature", "bag", "cart", "creditcard", "clock", "alarm", "stopwatch.fill", "timer"
    ]
    
    // MARK: - lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 콜렉션 뷰에 대한 설정
        myCollectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        // 사용할 콜렉션 뷰 셀을 등록
        // 닙 파일 가져온다
        let myCustomCollectionViewCellNib = UINib(nibName: String(describing: MyCustomCollectionViewCell.self), bundle: nil)
        // 가져온 닙파일로 콜렉션뷰에 셀로 등록
        self.myCollectionView.register(myCustomCollectionViewCellNib, forCellWithReuseIdentifier: String(describing: MyCustomCollectionViewCell.self))
    }
}

// 데이터와 관련
extension MyCollectionVC: UICollectionViewDataSource {
    // 각 섹션에 들어가는 아이템 갯수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.systemImageNameArray.count
    }
    // 각 콜렉션뷰 셀에 대한 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // let cellId = String(describing: MyCollectionViewCell.self) // MyCollectionViewCell
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MyCustomCollectionViewCell.self), for: indexPath) as! MyCustomCollectionViewCell
        
        cell.imageName = self.systemImageNameArray[indexPath.item]
//        cell.contentView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
//        cell.contentView.layer.cornerRadius = 8
//        cell.contentView.layer.borderWidth = 1
//        cell.contentView.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        //        // 이미지 설정
//        cell.profileImg.image = UIImage(systemName: self.systemImageNameArray[indexPath.item])
//        // 라벨 설정
//        cell.profileLable.text = self.systemImageNameArray[indexPath.item]
        return cell
    }
}

// 액션과 관련
extension MyCollectionVC: UICollectionViewDelegate {
    
}
