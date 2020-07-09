//
//  ContentView.swift
//  100DaysOfSwiftUI
//
//  Created by Punde, Rasika Nanasaheb on 03/07/20.

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("My first text in SwiftUI!!")
        .padding()
        .background(Color.blue)
        .foregroundColor(Color.white)
        .cornerRadius(15.0)
        .shadow(radius: 5.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
