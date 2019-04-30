//
//  Conversion_CalculatorUITests.swift
//  Conversion CalculatorUITests
//
//  Created by Cassidy Pelchat on 4/12/19.
//  Copyright © 2019 Cassidy Pelchat. All rights reserved.
//

import Foundation

class Conversions {

    func fahrenheitToCelsius(tempInF:Int) -> Int {
        let celsius = (tempInF - 32) * (5/9)
        return celsius as Int
    }
    
    func fahrenheitToCelsius(tempInF: Double) -> Double {
        let celsius = (tempInF - 32.0) * (5.0/9.0)
        return celsius as Double
    }
    
    func celsiusToFahrenheit(tempInC: Int) -> Int{
        let fahrenheit = (tempInC * 9/5) + 32
        return fahrenheit as Int
    }
    
    func celsiusToFahrenheit(tempInC: Double) -> Double {
        let fahrenheit = (tempInC * 9.0/5.0) + 32.0
        return fahrenheit as Double
    }

    
    func milesToKilometers(speedInMPH: Double) -> Double {
        let speedInKPH = speedInMPH * 1.60934
        return speedInKPH as Double
    }

    func kilometersToMiles(speedInMPH: Double) -> Double {
        let speedInKPH = speedInMPH / 1.60934
        return speedInKPH as Double
    }

    func inchesToCentimeters(depthInInches: Double) ->Double {
        let depthInCentimeters = depthInInches * 2.54
        return depthInCentimeters as Double
    }

    func centimetersToInches(depthInCentimeters:Double) ->Double {
        let depthInInches = depthInCentimeters / 2.54
        return depthInInches as Double
    }

 
}
