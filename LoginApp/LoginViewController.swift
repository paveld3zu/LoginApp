//
//  ViewController.swift
//  LoginApp
//
//  Created by Pavel Karunnyj on 01.04.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let login = "admin"
    private let password = "admin"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.login = login
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginButtonTapped() {
        if !(nameTextField.text == login && passwordTextField.text == password) {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
        } else {
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
    }
    
    @IBAction func forgotNameButtonTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops", message: "Your name is \(login) 😉")
        : showAlert(title: "Oops", message: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func  showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
        textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


