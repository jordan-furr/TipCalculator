//
//  TipCalcViewController.swift
//  TipCalculatorUX
//
//  Created by Jordan Furr on 4/6/20.
//  Copyright © 2020 Jordan Furr. All rights reserved.
//

import UIKit

class TipCalcViewController: UIViewController {
  
    

    var tip: Double = 0.0
    var percent = 0.20

    @IBOutlet weak var percentLabel: UILabel!
    
    @IBOutlet weak var sliderBar: UISlider!
    
    
    @IBAction func fifteenTapped(_ sender: Any) {
    }
    @IBAction func eighteentapped(_ sender: Any) {
    }
    
    @IBOutlet weak var percentbutton: UIButton!
    @IBOutlet weak var mealCostLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var finalPriceLabel: UILabel!
    
    @IBOutlet weak var funStackView: UIStackView!
    
    var total: Double = 0.0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
       // view.backgroundColor = UIColor(named: "20percent")
        updateViews()
    }
    override func viewDidLoad() {

        super.viewDidLoad()
    }
    
    func updateViews(){
        calculateTip()
        mealCostLabel.text = "$ \(total)"
        tipLabel.text = "$ "
        tipLabel.text = tipLabel.text! + String(format: "%.2f", tip)
        finalPriceLabel.text = "$ "
        finalPriceLabel.text = finalPriceLabel.text! + String(format: "%.2f", (tip + total))
    }
    
    func calculateTip() {
        tip = total * percent
    }
}
