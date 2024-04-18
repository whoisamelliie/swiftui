//
//  ContentView.swift
//  swiftui project
//
//  Created by Amelie Baimukanova on 18.04.2024.
//

import SwiftUI

struct ContentView: View {
    var person: Person
    
    var body: some View {
        VStack {
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 175.0, height: 175.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 1))
            
                Text(person.name)
                Text(person.surname)
         }
            
        }
    }


#Preview {
    ContentView(person:Person(name: "Aomine", surname: "Daike", image: "aomine"))
}
