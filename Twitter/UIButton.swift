//
//  UIButton.swift
//  Twitter
//
//  Created by Guilherme Souza on 08/12/16.
//  Copyright © 2016 Guilherme Souza. All rights reserved.
//

import UIKit

extension UIButton {

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
}
