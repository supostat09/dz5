//
//  main.swift
//  dz5
//
//  Created by Абдулла-Бек on 17/2/23.
//

import Foundation

let database = DataBase()

for i in 1...3 {
    print("Введите данные для пользователя №\(i)")
    print("Имя:")
    let firstName = readLine()!
    print("Фамилия:")
    let lastName = readLine()!
    func fromName(name: String) -> CountryCode? {
        switch name.lowercased() {
        case "usa":
            return .USA
        case "russia":
            return .Russia
        case "kyrgyzstan":
            return .Kyrgyzstan
        default:
            return nil
        }
    }
    print("Страна (USA, Russia, Kyrgyzstan):")
    let countryName = readLine()!
    guard let country = fromName(name: countryName)
    else {
        print("Неверное название страны")
        continue
    }
    print("Номер телефона (без кода страны):")
    let phoneNumber = readLine()!

    let user = User(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber, code: country)
        database.users.append(user)
}

print("Все пользователи:")
database.printAllUsers()

print("Пользователи с Кыргызстана:")
database.printUsersInCountry(country: .Kyrgyzstan)
