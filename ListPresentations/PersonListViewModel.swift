//
// Created for ListPresentations
// by Stewart Lynch on 2022-06-19
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import Foundation

class PersonListViewModel: ObservableObject {
    @Published var people: [Person] = []
    @Published var grouping: Grouping = .country
    
    enum Grouping: String, CaseIterable, Identifiable {
        case country, role, department
        var id: String {
            self.rawValue
        }
    }
    
    init(forPreview: Bool = false) {
        if forPreview {
//            people = MockService.sampleData
            people = MockService.seed(file: "MOCK_DATA.json")
        }
    }
    
    var groupedPeople: [String: [Person]] {
        switch grouping {
        case .country:
            return Dictionary(grouping: people) { $0.country }
        case .role:
            return Dictionary(grouping: people) { $0.role }
        case .department:
            return Dictionary(grouping: people) { $0.department }
        }
    }
    
    var sectionHeaders: [String] {
        switch grouping {
        case .country:
            return Array(Set(people.map {$0.country})).sorted(by: <)
        case .role:
            return Array(Set(people.map {$0.role})).sorted(by: <)
        case .department:
            return Array(Set(people.map {$0.department})).sorted(by: <)
        }
    }
    
    func sectionHeader(_ key: String) -> String {
        switch grouping {
        case .country:
            return Person.countryFlag(key)
        case .role:
            return key
        case .department:
            return key
        }
    }
    
    func sectionContent(_ key: String) -> [Person] {
        groupedPeople[key] ?? []
    }
    
}
