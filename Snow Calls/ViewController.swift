//
//  ViewController.swift
//  Snow Calls
//
//  Created by Melville, Aidan on 2019-11-28.
//  Copyright © 2019 Melville, Aidan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Outlets
    @IBOutlet weak var inputText: UITextView!
    
    @IBOutlet weak var outputText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func findPhoneNumberButton(_ sender: Any) {
        
        
        guard let givenNumber = inputText.text, givenNumber.count > 0 else {
            outputText.text = "Please Enter a Phone Number"
            return
        }
        
        //var numberOne = 0
        //var numberTwo = 0
        //var numberThree = 0
        //var numberFour = 0
        //var numberFive = 0
        //var numberSix = 0
        //var numberSeven = 0
        //var numberEight = 0
        //var numberNine = 0
        //var numberTen = 0
        
        var outputPhoneNumber = ""
        
        for character in givenNumber {
            
                switch character {
                case "1":
                    outputPhoneNumber += "1"
                    
                case "A","B","C","2":
                    outputPhoneNumber += "2"
                    
                case "D","E","F","3":
                    outputPhoneNumber += "3"
                    
                case "G","H","I","4":
                    outputPhoneNumber += "4"
                    
                case "J","K","L","5":
                    outputPhoneNumber += "5"
                    
                case "M","N","O","6":
                    outputPhoneNumber += "6"
                    
                case "P","Q","R","S","7":
                    outputPhoneNumber += "7"
                    
                case "T","U","V","8":
                    outputPhoneNumber += "8"
                    
                case "W","X","Y","Z","9":
                    outputPhoneNumber += "9"
                    
                default:
                    outputPhoneNumber += ""
                }
                
                if outputPhoneNumber.count == 3 || outputPhoneNumber.count == 7{
                    outputPhoneNumber += "-"
                }
            
            
        }
        
        
        outputText.text = outputPhoneNumber
        
        
    }
    
    
    
    
    
    
    
}

