//
//  ViewController.swift
//  LoginApp
//
//  Created by Pavel Karunnyj on 01.04.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    let login = "admin"
    let password = "admin"
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = nameTextField.text ?? ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        guard let inputName = nameTextField.text, !inputName.isEmpty else {
            showAlert(withTitle: "Name field is Empty", andMessage: "Please, enter your name")
            return
        }
        guard let inputPassword = passwordTextField.text, !inputPassword.isEmpty else {
            showAlert(withTitle: "Password field is Empty", andMessage: "Please, enter your password")
            return
        }
        
        if !(nameTextField.text == login && passwordTextField.text == password) {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotNameButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops", andMessage: "Your name is \(login) 😉")
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops", andMessage: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func  showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


