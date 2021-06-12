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
        
        for _ in 1...10 {
            let person = Person(
                name: classToMakePersonsFrom.arrayOfNames.randomElement() ?? "Random",
                lastName: classToMakePersonsFrom.arrayOfLastNames.randomElement() ?? "Random",
                email: classToMakePersonsFrom.arrayOfEmails.randomElement() ?? "Random",
                phone: classToMakePersonsFrom.arrayOfPhones.randomElement() ?? "Random"
            )
            array.append(person)
            
        }
        return array
    }
}
