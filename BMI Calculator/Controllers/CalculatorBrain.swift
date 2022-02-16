//
//  CalculatorBrain.swift
//  // BMI Calculator (traning)
//
//  Created by Dmitry Y on 16/02/2022.
//  Copyright © 2022 Dmitry Y. All rights reserved.
//

import Foundation
import UIKit

struct CalculateBrain {
    
    var bmiResult: BMI?
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmiResult?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmiResult?.advice ?? "Try else"
    }
    
    func getColor() -> UIColor {
        return bmiResult?.color ?? UIColor.blue
    }

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValueFirst = weight / (height * height)

        if bmiValueFirst < 18.5 {
            bmiResult = BMI(value: bmiValueFirst, advice: "Eat more pies!", color: UIColor.systemOrange)
        } else if 18.5...24.9 ~= bmiValueFirst {
            bmiResult = BMI(value: bmiValueFirst, advice: "Fit as a fiddle!", color: UIColor.systemGreen)
        } else {
            bmiResult = BMI(value: bmiValueFirst, advice: "Eat less pies!", color: UIColor.systemRed)
        }
    }
    
}
