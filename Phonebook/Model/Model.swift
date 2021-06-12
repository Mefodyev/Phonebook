//
//  Model.swift
//  Phonebook
//
//  Created by Alexey Mefodyev on 10.06.2021.
//

import Foundation

struct Person {
    let name: String
    let lastName: String
    var fullname: String {"\(name) \(lastName)"}
    let email: String
    let phone: String
}

extension Person {
    
    static func generateArrayOfRandomPersons() -> [Person] {
        
        var array: [Person] = []
        let classToMakePersonsFrom = DataManager()
        
        var arrayOfNames = classToMakePersonsFrom.arrayOfNames
        var arrayOfLastNames = classToMakePersonsFrom.arrayOfLastNames
        var arrayOfEmails = classToMakePersonsFrom.arrayOfEmails
        var arrayOfPhones = classToMakePersonsFrom.arrayOfPhones
        
        for _ in 1...classToMakePersonsFrom.arrayOfNames.count {
            
            let inputNameElement = arrayOfNames.randomElement()
            let inputLastNameElement = arrayOfLastNames.randomElement()
            let inputEmailElement = arrayOfEmails.randomElement()
            let inputPhoneElement = arrayOfPhones.randomElement()

            arrayOfNames = arrayOfNames.filter { $0 != inputNameElement }
            arrayOfLastNames = arrayOfLastNames.filter { $0 != inputLastNameElement }
            arrayOfEmails = arrayOfEmails.filter { $0 != inputEmailElement }
            arrayOfPhones = arrayOfPhones.filter { $0 != inputPhoneElement }
            
            let person = Person(
                name: inputNameElement ?? "Unknown Name",
                lastName: inputLastNameElement ?? "Unknown Last Name",
                email: inputEmailElement ?? "Unknown Email",
                phone: inputPhoneElement ?? "Unknown Phone"
            )
            
            array.append(person)
            
        }
        return array
    }
}
