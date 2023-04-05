//
//  PetsViewController.swift
//  LoginApp
//
//  Created by Pavel Karunnyj on 05.04.2023.
//

import UIKit

class PetsViewController: UIViewController {

    @IBOutlet var petLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .gray, bottomColor: .yellow)
        petLabel.text = user.person.animal.nickname.infoAboutAnimal

    }
    
}
