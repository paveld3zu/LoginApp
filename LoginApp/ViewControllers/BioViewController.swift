//
//  BioViewController.swift
//  LoginApp
//
//  Created by Pavel Karunnyj on 05.04.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var bioLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .gray, bottomColor: .systemPink)
        bioLabel.text = user.person.biography
    }
}
