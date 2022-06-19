//
// Created for ListPresentations
// by Stewart Lynch on 2022-06-19
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct PersonListView: View {
    @StateObject var viewModel = PersonListViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.people) { person in
                    Text(person.fullName)
                }
            }
            .navigationTitle("People")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                    .imageScale(.large)
                }
            }
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView(viewModel: PersonListViewModel(forPreview: true))
    }
}
