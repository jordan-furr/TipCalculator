//
//  EnterViewController.swift
//  TipCalculatorUX
//
//  Created by Jordan Furr on 4/6/20.
//  Copyright © 2020 Jordan Furr. All rights reserved.
//

import UIKit

class EnterViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var getTotalsbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        self.totalTextField.delegate = self
        totalTextField.addDoneButtonToKeyboard(myAction: #selector(self.totalTextField.resignFirstResponder))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTip" {
            if let destinationVC = segue.destination as? TipCalcViewController {
                if let text = totalTextField.text {
                    destinationVC.total = text.toDouble()!
                }
            }
        }
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        if totalTextField.text == "" {
            totalTextField.addAccentBorder(width: 3, color: .red)
        } else {
            performSegue(withIdentifier: "toTip", sender: self)
        }
    }
    
    func setUpUI() {
        totalTextField.backgroundColor = .JFbrown
        totalTextField.textColor = .yellowBorder
        totalTextField.addCornerRadius()
        totalTextField.addAccentBorder()
        getTotalsbutton.addCornerRadius()
        getTotalsbutton.addAccentBorder()
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return !(totalTextField.text == "")
    }
}

extension String {
func toDouble() -> Double? {
    return NumberFormatter().number(from: self)?.doubleValue
 }
}

