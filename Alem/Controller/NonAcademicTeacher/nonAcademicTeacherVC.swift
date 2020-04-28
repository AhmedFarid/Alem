//
//  nonAcademicTeacherVC.swift
//  Alem
//
//  Created by Ahmed farid on 4/14/20.
//  Copyright © 2020 E-bakers. All rights reserved.
//

import UIKit

class nonAcademicTeacherVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNav(logo: true, menu: false, notifaction: true, back: true)
    }

    @IBAction func searchBTN(_ sender: Any) {
        //
        let vc = teacherSearchResultVC(nibName: "teacherSearchResultVC", bundle: nil)
        self.navigationController!.pushViewController(vc, animated: true)
    }
}
