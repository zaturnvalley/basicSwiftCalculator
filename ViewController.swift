//
//  ViewController.swift
//  Calculator
//
//  Created by Zachary Mason on 11/19/16.
//  Copyright © 2016 Zach Mason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        print("touch \(digit) digit")
    }
}
d
