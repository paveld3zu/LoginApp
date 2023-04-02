//
//  ViewController.swift
//  LoginApp
//
//  Created by Pavel Karunnyj on 01.04.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    let login = "admin"
    let password = "admin"
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
            showAlert(withTitle: "Name field is Empty", andMessage: "Please enter your name")
            return
        }
        guard let inputPassword = PasswordField.text, !inputPassword.isEmpty else {
            showAlert(withTitle: "Password field is Empty", andMessage: "Please enter your password")
            return
        }

        
        if !(NameField.text == login && PasswordField.text == password) {
            showAlert(withTitle: "Authorization failed", andMessage: "Please enter your correct data")
            return
        }
        
    }
    
    
    @IBAction func ForgotNameButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops", andMessage: "Your name is \(login) 😉")
    }
    
    @IBAction func ForgotPasswordButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops", andMessage: "Your password is \(password) 😉")

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
//    private func  showForgotNameAlert(withTitle title: String, andMessage message: String) {
//        let alert = UIAlertController(title: "Oops!", message: "Your name is \(login)", preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default)
//        alert.addAction(okAction)
//        present(alert, animated: true)
//    }
//    private func  showForgotPasswordAlert(withTitle title: String, andMessage message: String) {
//        let alert = UIAlertController(title: "Oops!", message: "Your password is \(password)", preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default)
//        alert.addAction(okAction)
//        present(alert, animated: true)
    }


