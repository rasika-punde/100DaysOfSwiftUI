//
//  ImageView.swift
//  100DaysOfSwiftUI
//
//  Created by Punde, Rasika Nanasaheb on 09/07/20.

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Text("Jerry Image")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
            Image("1")
            .resizable()
            .scaledToFit()
            .clipShape(Rectangle())
                .border(Color.black, width: 2.0)
            .clipped()
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
