//
//  StyleGuide.swift
//  TipCalculatorUX
//
//  Created by Jordan Furr on 4/6/20.
//  Copyright © 2020 Jordan Furr. All rights reserved.
//

import UIKit

extension UIView {
    func addAccentBorder(width: CGFloat = 1, color: UIColor = UIColor.yellowBorder) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    func addCornerRadius(_ radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
}

extension UIColor {
    static let yellowBorder  = UIColor(named: "JFyellow")!
    static let maroonBorder = UIColor(named: "JFmaroon")!
    static let JFbrown = UIColor(named: "JFbrown")!
}

/*
     func addCornerRadius(_ radius: CGFloat = 4) {
         self.layer.cornerRadius = radius
     }
     

     func rotate(by radians: CGFloat = (-CGFloat.pi/2)) {
         self.transform = CGAffineTransform(rotationAngle: radians)
     }
 */
