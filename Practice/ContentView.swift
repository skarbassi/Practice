//
//  ContentView.swift
//  Practice
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName=""
    @State private var lastName=""
    @State private var textTitle="What is your name?"
    var body: some View {
        VStack {
            
            
            Text(textTitle)
                .font(.title)
            
            TextField("Type first name here... ", text: $firstName)
                .multilineTextAlignment (.center)
                .border(Color.gray, width:1)
            TextField("Type last name here... ", text: $lastName)
                .multilineTextAlignment (.center)
                .border(Color.gray, width:1)
                .accentColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
            
            Button("Submit Name") {
                textTitle = "Welcome, \(firstName) \(lastName)!"
              
            }
                .buttonStyle(.borderedProminent)
                .tint(.purple)
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
