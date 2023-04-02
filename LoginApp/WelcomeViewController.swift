//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Pavel Karunnyj on 01.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var SmileLabel: UILabel!
    
    var userName = ""
    
    private let gradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SmileLabel.text = "👋"
        welcomeLabel.text = "Welcome, \(userName)!"
        setupGradient()
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
    }
    
    private func setupGradient() {
        gradient.frame = view.bounds
        gradient.colors = [UIColor.systemPink.cgColor, UIColor.white.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
    }
}
    

    
    
    
    
    

