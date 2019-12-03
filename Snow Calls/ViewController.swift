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
    
    
    //MARK ACTIONS
    @IBAction func findPhoneNumberButton(_ sender: Any) {
        
        // INPUT
        guard let givenNumber = inputText.text, givenNumber.count > 0 else {
            outputText.text = "Please Enter a Phone Number"
            return
        }
        
        //guard let givenNumberTotal = inputText.text, givenNumberTotal.count > 12  else {
        //   outputText.text = "Please Enter a Full Phone Number"
        //  return
        // }
        
        
        
        // breaking up the entire input string into individual lines based on the \n newline character
        let lines = givenNumber.split(separator: "\n")
        
        // loop over each line in the input lines
        for line in lines {
            print(line)
            // reset the output phone number
            var outputPhoneNumber = ""
            
            // loop over each character in the current line
            for character in line {
                
                
                
                
                
                switch character {
                case "0":
                    outputPhoneNumber += "0"
                    
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
                if outputPhoneNumber.count == 12  {
                    //BREAK LOOP
                    break
                }
                outputText.text = outputPhoneNumber + "\n"
            }
            
            
        }
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
}
