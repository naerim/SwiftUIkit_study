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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        // 이미지 설정
        cell.profileImg.image = UIImage(systemName: self.systemImageNameArray[indexPath.item])
        // 라벨 설정
        cell.profileLable.text = self.systemImageNameArray[indexPath.item]
        return cell
    }
}

// 액션과 관련
extension MyCollectionVC: UICollectionViewDelegate {
    
}
