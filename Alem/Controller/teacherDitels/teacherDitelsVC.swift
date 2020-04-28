//
//  teacherDitelsVC.swift
//  Alem
//
//  Created by Ahmed farid on 4/14/20.
//  Copyright © 2020 E-bakers. All rights reserved.
//

import UIKit
import Cosmos

class teacherDitelsVC: UIViewController {

    
    @IBOutlet weak var reserveImage: UIImageView!
    @IBOutlet weak var reserveTitle: UILabel!
    @IBOutlet weak var resveView: UIView!
    @IBOutlet weak var docImage: UIImageView!
    @IBOutlet weak var docTitle: UILabel!
    @IBOutlet weak var docView: UIView!
    @IBOutlet weak var commentImage: UIImageView!
    @IBOutlet weak var commentTitle: UILabel!
    @IBOutlet weak var commentView: UIView!
    @IBOutlet weak var commentViewForm: commentView!
    @IBOutlet weak var desViewForm: desView!
    @IBOutlet weak var reserveViewForm: reserveView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameTeacher: UILabel!
    @IBOutlet weak var subject: UILabel!
    @IBOutlet weak var totalRate: UILabel!
    @IBOutlet weak var avagRate: CosmosView!
    @IBOutlet weak var viewHight: NSLayoutConstraint!
    @IBOutlet weak var infoStake: UIStackView!
    @IBOutlet weak var menuSake: UIStackView!
    @IBOutlet weak var decViewHight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commentViewForm.isHidden = true
        desViewForm.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.viewHight.constant = self.reserveViewForm.frame.size.height + self.profileImage.frame.size.height + self.infoStake.frame.size.height + self.menuSake.frame.size.height
    }
    @IBAction func commentBtn(_ sender: Any) {
        
        commentViewForm.isHidden = false
        desViewForm.isHidden = true
        reserveViewForm.isHidden = true
        
        
        resveView.isHidden = true
        reserveImage.isHidden = true
        reserveTitle.textColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        
        docImage.isHidden = true
        docView.isHidden = true
        docTitle.textColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        
        commentImage.isHidden = false
        commentView.isHidden = false
        commentTitle.textColor = #colorLiteral(red: 0.4588235294, green: 0.8666666667, blue: 0.3019607843, alpha: 1)
        
        self.viewHight.constant = self.commentViewForm.frame.size.height + self.profileImage.frame.size.height + self.infoStake.frame.size.height + self.menuSake.frame.size.height + 100
        
    }
    
    @IBAction func docBtn(_ sender: Any) {
        
        commentViewForm.isHidden = true
        desViewForm.isHidden = false
        reserveViewForm.isHidden = true
        
        
        
        
        resveView.isHidden = true
        reserveImage.isHidden = true
        reserveTitle.textColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        
        docImage.isHidden = false
        docView.isHidden = false
        docTitle.textColor = #colorLiteral(red: 0.4588235294, green: 0.8666666667, blue: 0.3019607843, alpha: 1)
        
        commentImage.isHidden = true
        commentView.isHidden = true
        commentTitle.textColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        
        self.viewHight.constant = (self.desViewForm.totalHight ?? 0)  + self.infoStake.frame.size.height + self.menuSake.frame.size.height + self.profileImage.frame.size.height + 400
        
        print(self.viewHight.constant)
    }
    
    @IBAction func reserveBTN(_ sender: Any) {
        
        commentViewForm.isHidden = true
        desViewForm.isHidden = true
        reserveViewForm.isHidden = false
       
        
        resveView.isHidden = false
        reserveImage.isHidden = false
        reserveTitle.textColor = #colorLiteral(red: 0.4588235294, green: 0.8666666667, blue: 0.3019607843, alpha: 1)
        
        docImage.isHidden = true
        docView.isHidden = true
        docTitle.textColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        
        commentImage.isHidden = true
        commentView.isHidden = true
        commentTitle.textColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        
        
         self.viewHight.constant = self.reserveViewForm.frame.size.height + self.profileImage.frame.size.height + self.infoStake.frame.size.height + self.menuSake.frame.size.height + 100
    }
}


