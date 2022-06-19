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
    
    init(forPreview: Bool = false) {
        if forPreview {
            people = MockService.sampleData
        }
    }
    
}
