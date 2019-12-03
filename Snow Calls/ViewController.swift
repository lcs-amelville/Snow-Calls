//
//  ViewController.swift
//  Snow Calls
//
//  Created by Melville, Aidan on 2019-11-28.
//  Copyright © 2019 Melville, Aidan. All rights reserved.
//

import UIKit
//                      Promise t mplement certain metods on this class, or, also, can mean some fuctionality is now made available to us
class ViewController: UIViewController, UITextViewDelegate {
    
    
    //Outlets
    @IBOutlet weak var inputText: UITextView!
    
    @IBOutlet weak var outputText: UITextView!
    
    
    // This method runs ONCE after the view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make this class be the delegate for the input text field
        inputText.delegate = self
        
        
        // Give the focus to the input text view
        inputText.text = ""
        outputText.text = ""
        inputText.becomeFirstResponder()
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
                
            }
            //Set the output phone number
            outputText.text += outputPhoneNumber + "\n"
        }
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    // Mark we are now adding UItextviewDelegate Methods
    
    // Called automaticlly when the contents of the text view are changed
    func textViewDidChange(_ textView: UITextView) {
        
        // Reset the output text view
        outputText.text = ""
    }
    
    
    
}
