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
            VStack {
                Picker("Grouping", selection: $viewModel.grouping) {
                    ForEach(PersonListViewModel.Grouping.allCases) { grouping in
                        Text(grouping.rawValue.capitalized).tag(grouping)
                    }
                }
                .pickerStyle(.segmented)
                .padding()
                List {
                ForEach(viewModel.people) { person in
                    PersonRowView(person: person)
                }
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

struct PersonRowView: View {
    let person: Person
    var body: some View {
        VStack(alignment: .leading) {
            Text(person.flag + " " + person.fullName)
                .font(.largeTitle)
            Text(person.department)
                .font(.title2)
            Text(person.role)
                .fontWeight(.bold)
        }
    }
}
