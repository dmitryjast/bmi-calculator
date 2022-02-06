//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Dmitry on 1/23/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    


}
