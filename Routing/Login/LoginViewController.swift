//
//  LoginViewController.swift
//  Routing
//
//  Created by Siarhei Ramaniuk on 5.04.23.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var loginButton: UIButton!
    
    
    
    @IBAction func didTappedLoginButton() {
        loginButton.setTitle("Login successful", for: .normal)
    }
    
}
