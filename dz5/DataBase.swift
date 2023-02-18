//
//  DataBase.swift
//  dz5
//
//  Created by Абдулла-Бек on 17/2/23.
//

import Foundation

class DataBase {
    var users: [User] = []
    
    func printAllUsers() {
        for user in users {
            print("Пользователь: \(user.firstName) \(user.lastName)")
            print("Номер: \(user.code.rawValue)\(user.phoneNumber)")
        }
    }
    func printUsersInCountry(country: CountryCode) {
        for user in users {
            if user.code == country {
                print("Пользователь: \(user.firstName) \(user.lastName)")
                print("Номер: \(user.code.rawValue)\(user.phoneNumber)")
            }
        }
    }
}
