//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Pavel Karunnyj on 01.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet var welcomeLabel: UILabel!
    
    @IBOutlet var SmileLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        SmileLabel = "👋"
        welcomeLabel.text = "Welcome, \(userName)"
        
        
    }
    

    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
    }
    
}
    

    
    
    
    
    

