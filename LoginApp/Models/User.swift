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
        User(login: "Алексей", password: "password", person: Person(name: "Павел", surname: "Карунный", city: "Луховицы", age: 31, biography: "Немного обо мне"))
    }

}

struct Person {
    let name: String
    let surname: String
    let city: String
    let age: Int
    let biography: String
//    let animal: Animal

}


//struct Animal {
//    let nickname: Nickname
//}
//
//enum Nickname: String {
//        case frosya
//        case sonya
//        case barsik
//
//        var infoAboutAnimal: String {
//            switch self {
//            case .frosya:
//                return "Фрося"
//            case .sonya:
//                return "Соня"
//            case .barsik:
//                return "Барсик"
//            }
//        }
//    }

