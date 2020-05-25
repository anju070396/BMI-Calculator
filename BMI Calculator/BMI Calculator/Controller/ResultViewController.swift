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
    @IBOutlet weak var resultMessageLabel: UILabel!
    
    var result : Float?
    var roundResult : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        navigationController?.navigationBar.isHidden = true
        result?.round()
        resultLabel.text =  String(format: "%.0f", result!)
        checkBMI()
    }
    
    @IBAction func reCalculateButtonPressed(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func checkBMI() {
        switch result! {
        case 0...14:
            resultMessageLabel.text = ""
            break
        case 15...18:
            resultMessageLabel.text = "UNDER WEIGHT"
            break
        case 19...25:
            resultMessageLabel.text = "NORMAL"
            break
        case 26...30:
            resultMessageLabel.text = "OVER WEIGHT"
            resultMessageLabel.textColor = .orange
            break
        case 31...35:
            resultMessageLabel.text = "PRE-OBESE"
            resultMessageLabel.textColor = .red
            break
        default:
             resultMessageLabel.text = "OBESE"
             resultMessageLabel.textColor = .red
            break
        }
    }
}
