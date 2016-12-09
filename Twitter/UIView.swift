//
//  UIView.swift
//  Twitter
//
//  Created by Guilherme Souza on 08/12/16.
//  Copyright © 2016 Guilherme Souza. All rights reserved.
//

import UIKit

extension UIView {

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
