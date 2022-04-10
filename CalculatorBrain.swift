//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Foyez Ahmed Nishad on 11/4/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.green
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        }else if bmiValue >= 18.5 && bmiValue <= 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle", color: UIColor.green)
        }else if bmiValue > 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle", color: UIColor.red)
        }
        
    }
}
