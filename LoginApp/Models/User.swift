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
        User(login: "Alexey", password: "password", person: Person(name: "Pavel", surname: "Karunnyj", city: "Luhovicy", age: 31, biography: "I work for a telecommunications company as an engineer. Married. There are three cats at home.", animal: "Frosya - a white cat, Sonya - a small cat Barsik - an angry cat."))
    }
    
    struct Person {
        let name: String
        let surname: String
        let city: String
        let age: Int
        let biography: String
        let animal: String
        }
}
