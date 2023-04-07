//
//  ViewController.swift
//  Routing
//
//  Created by Siarhei Ramaniuk on 5.04.23.
//

import UIKit

let color = ViewController()

class ViewController: UIViewController {
    
    public var changeColor: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        color.setupColor()
    }

    // MARK: - Actions
    
    @IBAction func didTapDemoButton() {
        let storyboard = UIStoryboard(name: "DemoViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DemoViewController") as! DemoViewController
        vc.configure(with: true)
        present(vc, animated: true)
    }
    
    @IBAction func didTapLoginButton() {
        let storyboard = UIStoryboard(name: "LoginViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        vc.view.backgroundColor = .cyan
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func didTapTermsButton() {
        let storyboard = UIStoryboard(name: "TermsViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TermsViewController") as! TermsViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
     //MARK: - Public Actions
    
    public func setupColor(color: UIColor = .white) {
        view.backgroundColor = color
    }
}

