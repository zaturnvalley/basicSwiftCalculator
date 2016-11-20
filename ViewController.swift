//
//  ViewController.swift
//  Calculator
//
//  Created by Zachary Mason on 11/19/16.
//  Copyright © 2016 Zach Mason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel?
    
    var userIsInMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInMiddleOfTyping {
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit
        } else {
            display!.text = digit
        }
        userIsInMiddleOfTyping = true
    }
    
}

