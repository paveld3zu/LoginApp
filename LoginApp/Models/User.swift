//
//  User.swift
//  LoginApp
//
//  Created by Pavel Karunnyj on 05.04.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    static func getUser() -> User {
        User(login: "Alexey", password: "password", person: Person(name: "Pavel", surname: "Karunnyj", city: "Luhovicy", age: 31, biography: "I work for a telecommunications company as an engineer. Married. There are three cats at home.", animal: Animal(nickname: .barsik)))
    }

}

struct Person {
    let name: String
    let surname: String
    let city: String
    let age: Int
    let biography: String
    let animal: Animal

}


struct Animal {
    let nickname: Nickname
}

enum Nickname: String {
        case frosya
        case sonya
        case barsik

        var infoAboutAnimal: String {
            switch self {
            case .frosya:
                return "Фрося - белая кошка"
            case .sonya:
                return "Соня - мелкая кошка"
            case .barsik:
                return "Барсик - злой кот"
            }
        }
    }

