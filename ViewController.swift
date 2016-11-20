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
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        let textCurrentlyInDisplay = display!.text!
        display!.text = textCurrentlyInDisplay + digit
    }
    
}

