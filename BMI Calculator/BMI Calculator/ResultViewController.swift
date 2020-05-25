//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Anjali on 5/25/20.
//  Copyright © 2020 Anjali. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    var result : Float?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text =  String(format: "%.2f", result!)
    }
    
    @IBAction func reCalculateButtonPressed(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
