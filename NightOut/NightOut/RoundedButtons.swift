//
//  RoundedButtons.swift
//  NightOut
//
//  Created by Minon Weerasinghe on 17/4/17.
//  Copyright © 2017 Minon Weerasinghe. All rights reserved.
//

import UIKit

class RoundedButtons: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        // This always sets the width to 1px
        layer.borderWidth = 1/UIScreen.main.nativeScale
        layer.borderColor = UIColor.brown.cgColor
        contentEdgeInsets = UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16)
        
    }
    
    override func layoutSubviews() {
        // This function takes care of making the edges of the button smooth and curved
        super.layoutSubviews()
        layer.cornerRadius = frame.height/2
    }
    

}
