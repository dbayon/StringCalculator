//
//  ViewController.swift
//  StringCalculator
//
//  Created by David Bayón Alvarez on 11/12/2019.
//  Copyright © 2019 Mobgen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var appView: UIView!
    @IBOutlet weak var loginFormView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logiin(_ sender: Any) {
        guard let user = self.usernameField.text,
            let pass = self.passwordField.text,
            user == "admin",
            pass == user else {
                let alert = UIAlertController(title: "Error", message: "Invalid credentials", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: ""),
                                              style: .default,
                                              handler: nil))
                self.present(alert, animated: true, completion: nil)
                return
        }
        loginFormView.isHidden = true
        appView.isHidden = false
    }
    
    @IBAction func logouot(_ sender: Any) {
        let date = Date()
        loginFormView.isHidden = Int(date.timeIntervalSince1970) % 2 == 0
        appView.isHidden = Int(date.timeIntervalSince1970) % 2 != 0
    }
    
}


























enum CalculatorError: Error {
    case negativeNumber
    case separatorNotValid
}

class Calculator {
    
    private let separators = CharacterSet(charactersIn: ",\n")
    
    func add(numbers: String) throws -> Int {
        try numbers
            .components(separatedBy: separators)
            .map(toInt)
            .reduce(0, +)
    }
    
    private func hasValidDelimiters(_ number: String) -> Bool {
        return CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: number))
    }
    
    private func toInt(number: String) throws -> Int {
        
        guard hasValidDelimiters(number) else {
            throw CalculatorError.separatorNotValid
        }
        
        guard let value = Int(number) else {
            return 0
        }
        
        guard value > 0 else {
            throw CalculatorError.negativeNumber
        }
        
        return value
    }
    
}

