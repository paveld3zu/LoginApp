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
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = user.login
        passwordTextField.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
                
            } else if let navigationVC = viewController as? UINavigationController {
                
                if let personVC = navigationVC.topViewController as? PersonViewController {
                    personVC.user = user
                    
                    guard let bioVC = segue.destination as? BioViewController else { return }
                    bioVC.user = user
                    
                } else if let petsVS = navigationVC.topViewController as? PetsViewController {
                    petsVS.user = user
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginButtonTapped() {
        if !(nameTextField.text == user.login && passwordTextField.text == user.password) {
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
        ? showAlert(title: "Oops", message: "Your name is \(user.login) 😉")
        : showAlert(title: "Oops", message: "Your password is \(user.password) 😉")
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


