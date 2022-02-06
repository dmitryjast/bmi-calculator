//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dmitry on 2/6/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculateBrain {
    
    var bmiResult: Float?
    
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmiResult = weight / (height * height)
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmiResult)
        return bmiValue
    }
    
    
    /*
    
    var bmiValue = "0.0"
    
    let bmiResult = weight / (height * height) // else option pow(height, 2)
    
    bmiValue = String(format: "%.1f", bmiResult)
    
    print ("BMI Result: \(bmiResult)")
     */
    
}
