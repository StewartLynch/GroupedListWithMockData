//
// Created for ListPresentations
// by Stewart Lynch on 2022-06-19
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import Foundation

struct Person: Identifiable {
    var id = UUID().uuidString
    var firstName: String
    var lastName: String
    var role: String
    var department: String
    var country: String
    
    var fullName: String {
        lastName + ", " + firstName
    }
    
    var flag: String {
        switch country {
        case "Unided States":
            return "🇺🇸"
        case "Canada":
            return "🇨🇦"
        case "France":
            return "🇫🇷"
        case "United Kingdom":
            return "🇬🇧"
        default:
            return "🏳️"
        }
    }
}
