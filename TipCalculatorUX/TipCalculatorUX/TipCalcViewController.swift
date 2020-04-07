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
    
    @IBOutlet weak var sliderBar: UISlider!
    @IBAction func fifteenTapped(_ sender: Any) {
    }
    @IBAction func eighteentapped(_ sender: Any) {
    }
    
    @IBOutlet weak var mealCostLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    
    
    var total: Double = 0.0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        updateViews()
        mealCostLabel.text = "Meal: $ \(total)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func updateViews(){
        tipLabel.text = "Tip: $\(total * 0.2)"
    }
}
