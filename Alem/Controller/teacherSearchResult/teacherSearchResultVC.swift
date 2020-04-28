//
//  teacherSearchResultVC.swift
//  Alem
//
//  Created by Ahmed farid on 4/14/20.
//  Copyright © 2020 E-bakers. All rights reserved.
//

import UIKit

class teacherSearchResultVC: UIViewController {
    
    @IBOutlet weak var teacherCollectionVew: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teacherCollectionVew.delegate = self
        teacherCollectionVew.dataSource = self
        teacherCollectionVew.register(UINib(nibName: "teacherCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        
        
        setUpNav(logo: true, menu: false, notifaction: false, back: true)
        let rightBarButtonItem = UIBarButtonItem.init(image: UIImage(named: "Group 225"), style: .done, target: self, action: #selector(self.filter))
        self.navigationItem.rightBarButtonItem = rightBarButtonItem
    }
    
    
    @objc func filter() {
    
        }
    
}

extension teacherSearchResultVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? teacherCell {
            return cell
        }else {
            return teacherCell()
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        
        return CGSize(width: teacherCollectionVew.frame.size.width - 8 , height: 182)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = teacherDitelsVC(nibName: "teacherDitelsVC", bundle: nil)
        self.navigationController!.pushViewController(vc, animated: true)
        print("xxxxx")
    }
}

