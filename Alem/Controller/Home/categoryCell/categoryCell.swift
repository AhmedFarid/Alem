//
//  categoryCell.swift
//  Alem
//
//  Created by Ahmed farid on 4/9/20.
//  Copyright © 2020 E-bakers. All rights reserved.
//

import UIKit

class categoryCell: UICollectionViewCell {

    @IBOutlet weak var viewBack: UIView!
    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 8
    }

}
