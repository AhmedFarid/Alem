//
//  loginVC.swift
//  Alem
//
//  Created by Ahmed farid on 4/8/20.
//  Copyright © 2020 E-bakers. All rights reserved.
//

import UIKit

class loginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setUpNavColore(true)
    }

    
    
    
    @IBAction func signinBTN(_ sender: Any) {
        let vc = homeVC(nibName: "homeVC", bundle: nil)
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    @IBAction func signupBTN(_ sender: Any) {
        let vc = signupVC(nibName: "signupVC", bundle: nil)
        self.navigationController!.pushViewController(vc, animated: true)
    }
}
