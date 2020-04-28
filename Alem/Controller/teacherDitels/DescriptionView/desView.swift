//
//  desView.swift
//  Alem
//
//  Created by Ahmed farid on 4/15/20.
//  Copyright © 2020 E-bakers. All rights reserved.
//

import UIKit

class desView: UIView {
    
    var dViewHight: CGFloat?
    var totalHight: CGFloat?
    @IBOutlet weak var dec: UILabel!
    @IBOutlet weak var addresslabel: UILabel!
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var levels: UILabel!
    @IBOutlet weak var experLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
   
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let _ = loadViewFromNib()
        
    }
    
    override func awakeFromNib() {
        dViewHight = dec.frame.size.height + addresslabel.frame.size.height + subjectLabel.frame.size.height + levels.frame.size.height
        totalHight = (dViewHight ?? 0) + experLabel.frame.size.height + priceLabel.frame.size.height + 200
        print(dViewHight)
        print(totalHight)
        
    }
    
    
    
    func loadViewFromNib() -> UIView {
        let bundle  = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "desView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = bounds
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        addSubview(view)
        
        return view
    }
    
}

