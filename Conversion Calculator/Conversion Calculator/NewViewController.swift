//
//  NewViewController.swift
//  Conversion Calculator
//
//  Created by Cassidy Pelchat on 4/29/19.
//  Copyright © 2019 Cassidy Pelchat. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet var buttonResponseLabel: UILabel!
    var userIsCurrentlyTyping: Bool = false
    var storedValue: Int = 0;
    var currentOperation = 0
    var currentNumberInLabel = ""
    
    @IBAction func buttonAppend(_ sender: UIButton)
    {
        let buttonTitle = sender.currentTitle!
        
        
        switch buttonTitle
        {
        case "+":
            currentOperation = 1
            storedValue = Int(currentNumberInLabel)!
            buttonResponseLabel.text = ""
        case "-":
            currentOperation = 2
            storedValue = Int(currentNumberInLabel)!
            buttonResponseLabel.text = ""
        case "*":
            currentOperation = 3
            storedValue = Int(currentNumberInLabel)!
            buttonResponseLabel.text = ""
        case "/":
            currentOperation = 4
            storedValue = Int(currentNumberInLabel)!
            buttonResponseLabel.text = ""
        default:
            
            
            if buttonTitle == "="
            {
                var finalValue = 0
                print(currentNumberInLabel)
                let secondStoredValue = Int(currentNumberInLabel)!
                if currentOperation == 1
                {
                    finalValue = storedValue + secondStoredValue
                    buttonResponseLabel.text = ""
                    buttonResponseLabel.text = String(finalValue)
                }
                else if currentOperation == 2
                {
                    finalValue = storedValue - secondStoredValue
                    buttonResponseLabel.text = ""
                    buttonResponseLabel.text = String(finalValue)
                }
                else if currentOperation == 3
                {
                    finalValue = storedValue * secondStoredValue
                    buttonResponseLabel.text = ""
                    buttonResponseLabel.text = String(finalValue)
                }
                else if currentOperation == 4
                {
                    finalValue = storedValue / secondStoredValue
                    buttonResponseLabel.text = ""
                    buttonResponseLabel.text = String(finalValue)
                }
            }
            else
            {
                if userIsCurrentlyTyping
                {
                    currentNumberInLabel = buttonResponseLabel.text! + buttonTitle
                    buttonResponseLabel.text = currentNumberInLabel
                }
                else
                {
                    userIsCurrentlyTyping = true
                    buttonResponseLabel.text = ""
                    buttonResponseLabel.text = buttonTitle
                }
                
            }
            
            print("\(currentOperation) \(buttonTitle)")
        }
        
    }
    
}
