//
//  ListView.swift
//  swiftui project
//
//  Created by Amelie Baimukanova on 18.04.2024.
//

import SwiftUI
struct Person: Identifiable {
    var id = UUID()
    var name = ""
    var surname = ""
    var image = ""
}

struct PersonRow: View {
    
    var person: Person
    var body: some View {
        HStack {
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75.0, height: 75.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 1))
            VStack (alignment:.leading) {
                Text(person.name)
                Text(person.surname)
         }
        }
    }
}
struct ListView: View {
var persons =   [Person(name: "Aomine", surname: "Daike", image: "aomine"),
                 Person(name: "Murasakibara", surname: "Atsushi", image: "muras"),
                 Person(name: "Akashi", surname: "Seidzhyra", image: "akashi"),
                 Person(name: "Kise", surname: "Reta", image: "kise"),
                 Person(name: "Midarima", surname: "Shintaru", image: "midarima")
]

    var body: some View {
        NavigationView {
            List (persons) { item in
                NavigationLink(destination: 
                    ContentView(person: item)) {
                    PersonRow(person: item)
                }
            }
            .navigationTitle("List")
          }
        
         }
        }


#Preview {
    ListView()
}
