//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Anjali on 5/25/20.
//  Copyright © 2020 Anjali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightlabel: UILabel!
    var BMI : Float?
    
    @IBAction func heightValueChnage(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightValueChange(_ sender: UISlider) {
        weightlabel.text = String(format: "%.0f", sender.value) + "kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 0.0
        weightSlider.value = 0.0
    }


     @IBAction func calculateBMI(_ sender: UIButton) {
           let height = heightSlider.value
           let weight = weightSlider.value
           
           BMI = weight / (height/100 * height/100)
           self.performSegue(withIdentifier: "toResult", sender: self)
       }
       
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.destination is ResultViewController {
               let vc = segue.destination as? ResultViewController
               vc?.result = BMI
           }
       }
}


