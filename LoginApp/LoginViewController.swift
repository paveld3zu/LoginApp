//
//  ViewController.swift
//  LoginApp
//
//  Created by Pavel Karunnyj on 01.04.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var NameField: UITextField!
    
    @IBOutlet var PasswordField: UITextField!
    
    
    
    
    @IBOutlet var LoginButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoginButton.layer.cornerRadius = 15
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = NameField.text ?? ""
    }
    
    
    @IBAction func LoginButtonTapped(_ sender: UIButton) {
        
        guard let inputName = NameField.text, !inputName.isEmpty else {
            showAlert(withTitle: "Text field is Empty", andMessage: "Please enter your name")
            return
        }
        
        let usernamePattern = "^[a-zA-Z]{3,20}$"
        let isUserNameValid = NSPredicate(format: "SELF MATCHES %@", usernamePattern)
            .evaluate(with: inputName)
        
        if isUserNameValid {
            showAlert(withTitle: "Wrong format", andMessage: "Please enter your name")
            return
        }
        
        NameField.text = ""
        
    }
    
    
    @IBAction func ForgotNameButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func ForgotPasswordButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        NameField.text = ""
        PasswordField.text = ""
    }
    
    private func  showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

