//
//  homeVC.swift
//  Alem
//
//  Created by Ahmed farid on 4/9/20.
//  Copyright © 2020 E-bakers. All rights reserved.
//

import UIKit

class homeVC: UIViewController {
    
    @IBOutlet weak var bannerCollectionView: UICollectionView!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var topTeacherCollectionVew: UICollectionView!
    @IBOutlet weak var lastArticaleCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        bannerCollectionView.delegate = self
        bannerCollectionView.dataSource = self
        bannerCollectionView.register(UINib(nibName: "bannerCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        categoryCollectionView.register(UINib(nibName: "categoryCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        topTeacherCollectionVew.delegate = self
        topTeacherCollectionVew.dataSource = self
        topTeacherCollectionVew.register(UINib(nibName: "teacherCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        lastArticaleCollectionView.delegate = self
        lastArticaleCollectionView.dataSource = self
        lastArticaleCollectionView.register(UINib(nibName: "latestArticleCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        setUpNavColore(false)
        setUpNav(logo: true, menu: true, notifaction: true, back: false)
    }
    
}


extension homeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == bannerCollectionView {
            return 5
        }else if collectionView == categoryCollectionView {
            return 2
        }else if collectionView == topTeacherCollectionVew {
            return 5
        }else  {//lastArticaleCollectionView
            return 5
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == bannerCollectionView {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? bannerCell {
                
                return cell
            }else {
                return bannerCell()
            }
        }else if collectionView == categoryCollectionView {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? categoryCell {
                if indexPath.row == 0 {
                    cell.title.text = "Non Academic teacher"
                    cell.catImage.image = UIImage(named: "Path 2462")
                }else if indexPath.row == 1 {
                    cell.title.text = "Academic teacher"
                    cell.catImage.image = UIImage(named: "Path 2463")
                }
                return cell
            }else {
                return categoryCell()
            }
        }else if collectionView == topTeacherCollectionVew {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? teacherCell {
                return cell
            }else {
                return teacherCell()
            }
        }else  { //lastArticaleCollectionView
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? latestArticleCell {
                return cell
            }else {
                return latestArticleCell()
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == bannerCollectionView {
        }else if collectionView == categoryCollectionView {
            if indexPath.row == 0 {
                let vc = nonAcademicTeacherVC(nibName: "nonAcademicTeacherVC", bundle: nil)
                self.navigationController!.pushViewController(vc, animated: true)
            }else if indexPath.row == 1 {
                //cell.title.text = "Academic teacher"
                let vc = academicTeacherVC(nibName: "academicTeacherVC", bundle: nil)
                self.navigationController!.pushViewController(vc, animated: true)
            }
        }else if collectionView == topTeacherCollectionVew {
        }else  { //lastArticaleCollectionView
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        if collectionView == bannerCollectionView {
            return CGSize(width: bannerCollectionView.frame.size.width, height: bannerCollectionView.frame.size.height)
        }else if collectionView == categoryCollectionView {
            return CGSize(width: categoryCollectionView.frame.size.width / 2.13, height: bannerCollectionView.frame.size.height - 8)
        }else if collectionView == topTeacherCollectionVew {
            return CGSize(width: topTeacherCollectionVew.frame.size.width - 8 , height: topTeacherCollectionVew.frame.size.height - 8)
        }else {
            return CGSize(width: lastArticaleCollectionView.frame.size.width / 2.2 , height: lastArticaleCollectionView.frame.size.height - 8)
        }
    }
}
