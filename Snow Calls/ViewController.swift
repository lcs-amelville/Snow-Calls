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
    
    @IBOutlet weak var insertNumberTextView: UITextView!
    
    @IBOutlet weak var outputTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func findPhoneNumberButton(_ sender: Any) {
        
        guard let insertNumber = insertNumberTextView.text, insertNumber.count > 0 else {
            outputTextView.text = "Please Enter a Phone Number"
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
        
        var phoneNumber = ""
        
        for character in insertNumber {
        
        switch insertNumber {
        case "A","B","C","2":
            phoneNumber += "2"
        case "D","E","F","3":
            phoneNumber += "3"
        case "G","H","I","4":
            phoneNumber += "4"
        case "J","K","L","5":
            phoneNumber += "5"
        case "M","N","O","6":
            phoneNumber += "6"
        case "P","Q","R","S","7":
            phoneNumber += "7"
        case "T","U","V","8":
            phoneNumber += "8"
        case "W","X","Y","Z","9":
            phoneNumber += "9"
        default:
            phoneNumber += "1"
        }
    
        }
        
        outputTextView.text = (phoneNumber)
        
        
    }
    
    
    
    
    
    
    
}

