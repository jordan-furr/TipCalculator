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
    
    @IBAction func sliderSlid(_ sender: Any) {
        let num = Double(sliderBar.value)
        percent = num / 100
        calculateTip()
        tipLabel.text = "$ "
        tipLabel.text = tipLabel.text! + String(format: "%.2f", tip)
        
        percentLabel.text = String(format: "%.2f", num)
        percentLabel.text = percentLabel.text! + " %"
        finalPriceLabel.text = "$ " + String(format: "%.2f", (tip + total))
    }
    
    
    @IBOutlet weak var fifteen: UIButton!
    @IBOutlet weak var percentbutton: UIButton!
    @IBOutlet weak var eighteen: UIButton!
    
    @IBOutlet weak var twentytwo: UIButton!
    @IBOutlet weak var twentyfive: UIButton!
    
    @IBOutlet weak var mealCostLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var finalPriceLabel: UILabel!
    
    @IBOutlet weak var funStackView: UIStackView!
    
    var total: Double = 0.0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        percentLabel.text = "20 %"
       // view.backgroundColor = UIColor(named: "20percent")
        updateViews()
    }
    override func viewDidLoad() {

        super.viewDidLoad()
        activateButton()
        percentLabel.text = "20 %"
        buttonColorTapped(sender: percentbutton)
    }
    
    var buttons: [UIButton] {
        return [percentbutton, fifteen, eighteen, twentyfive, twentytwo]
    }
    
    func updateViews(){
        calculateTip()
        mealCostLabel.text = "$ \(total)"
        tipLabel.text = "$ "
        tipLabel.text = tipLabel.text! + String(format: "%.2f", tip)
        finalPriceLabel.text = "$ " + String(format: "%.2f", (tip + total))
        
    }
    
    func activateButton() {
        buttons.forEach { $0.addTarget(self, action: #selector(buttonColorTapped(sender:)), for: .touchUpInside)}
       }
    
    @objc func buttonColorTapped(sender: UIButton){
        switch sender {
        case fifteen:
            updatePercent(newPercent: 0.15)
        case eighteen:
            updatePercent(newPercent: 0.18)
        case percentbutton:
            updatePercent(newPercent: 0.20)
        case twentytwo:
            updatePercent(newPercent: 0.22)
        case twentyfive:
            updatePercent(newPercent: 0.25)
            //view.backgroundColor = UIColor(named: "20percent")
        default:
            updatePercent(newPercent: 0.20)
        }
    }
    
    func updatePercent(newPercent: Double){
        percent = newPercent
        updateViews()
        percentLabel.text = String(format: "%.2f", (newPercent * 100))
        percentLabel.text = percentLabel.text! + " %"
        sliderBar.value = Float(newPercent * 100)
    }
       
    
    func calculateTip() {
        tip = total * percent
    }
}
