//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Pavel Karunnyj on 05.04.2023.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .gray, bottomColor: .systemPink)
        navigationItem.title = user.person.name
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        cityLabel.text = user.person.city
        ageLabel.text = String(user.person.age)
    }
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }
}
