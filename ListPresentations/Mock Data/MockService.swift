//
// Created for ListPresentations
// by Stewart Lynch on 2022-06-19
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import Foundation

enum MockService {
    
    static func seed(file: String) -> [Person] {
        return Bundle.main.decode([Person].self, from: file)
    }
    static var sampleData: [Person] {
        [
        Person(firstName: "Stewart",
               lastName: "Lynch",
               role: "Manager",
               department: "Info Tech",
               country: "Canada"),
        Person(firstName: "Emily",
               lastName: "Heidrich",
               role: "Employee",
               department: "Head Office",
               country: "Canada"),
        Person(firstName: "John",
               lastName: "Lennon",
               role: "Contractor",
               department: "Info Tech",
               country: "United Kingdom"),
        Person(firstName: "Paul",
               lastName: "McCartney",
               role: "Employee",
               department: "Retail",
               country: "Canada"),
        Person(firstName: "Michale",
               lastName: "Petersen",
               role: "Manager",
               department: "Head Office",
               country: "United States"),
        ]
    }
}
