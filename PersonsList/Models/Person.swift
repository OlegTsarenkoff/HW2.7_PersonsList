//
//  Person.swift
//  PersonsList
//
//  Created by Oleg Tsarenkoff on 13.06.21.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let numberPhone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPerson(from manager: DataManager) -> Person? {
        if manager.names.count > 0,
           manager.surnames.count > 0,
           manager.emails.count > 0,
           manager.numberPhones.count > 0 {
            
            let name = manager.names.remove(at: Int.random(in: 0..<manager.names.count))
            let surname = manager.surnames.remove(at: Int.random(in: 0..<manager.surnames.count))
            let email = manager.emails.remove(at: Int.random(in: 0..<manager.emails.count))
            let numberPhone = manager.numberPhones.remove(at: Int.random(in: 0..<manager.numberPhones.count))
            
            return Person(
                name: name,
                surname: surname,
                email: email,
                numberPhone: numberPhone)
        }
        return nil
    }
}
