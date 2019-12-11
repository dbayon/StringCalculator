//
//  ViewController.swift
//  StringCalculator
//
//  Created by David Bayón Alvarez on 11/12/2019.
//  Copyright © 2019 Mobgen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class Calculator {
    
    func add(numbers: String) -> Int {
        numbers.components(separatedBy: ",").compactMap { Int($0) }.reduce(0, +)
    }
    
}

