//
//  User.swift
//  AboutMeApp2
//
//  Created by Veronika Iskandarova on 4.05.2024.
//

import Foundation

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
            User(
                username: "Alex",
                password: "0000",
                person: Person.getPerson()
            )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: Company
    let bio: String
    
    static func getPerson() -> Person {
        Person(
            name: "Вероника",
            surname: "Искандарова",
            company: Company.getCompany(),
            bio:    """
                    Мне 34 года, замужем, воспитываю троих мальчишек. По образованию юрист, но за долгие годы в декрете постоянно ищу себе какое-то интересное хобби :) Из последних увлечений: didgital art и мобильная разработка на ios.
                    """
        )
    }
}

struct Company {
    let companyName: String
    let department: String
    let position: String
    
    static func getCompany() -> Company {
        Company(
                companyName: "_",
                department: "_",
                position: "_"
            )
    }
}
