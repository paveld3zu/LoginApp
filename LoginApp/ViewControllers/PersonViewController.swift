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
    
    var person: Person!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        cityLabel.text = person.city
        ageLabel.text = String(person.age)
        
        
        
    }
}
