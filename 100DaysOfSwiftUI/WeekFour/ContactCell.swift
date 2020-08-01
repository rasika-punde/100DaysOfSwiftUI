//
//  ContactCell.swift
//  100DaysOfSwiftUI
//
//  Created by Punde, Rasika Nanasaheb on 01/08/20.
//  Copyright © 2020 Punde, Rasika Nanasaheb (US - Mumbai). All rights reserved.
//

import SwiftUI

struct ContactCell: View {
    @State private var showingAlert = false

    var contactInfo: ContactInfo
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(contactInfo.name)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
                Text(contactInfo.email)
                    .fontWeight(.semibold)
                    .font(.system(size: 16))
            }
            Spacer()
            Button(action: sendMessage) {
                Image(systemName: "message.fill")
                    .frame(width: 40, height: 40, alignment: .center)
                    .font(.body)
                    .foregroundColor(.green)
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("In development"), message: Text("In development"), dismissButton: .default(Text("Okay")))
            }

            Button(action: sendMessage) {
                Image(systemName: "video.fill")
                    .frame(width: 40, height: 40, alignment: .center)
                    .font(.body)
                    .foregroundColor(.red)
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("In development"), message: Text("In development"), dismissButton: .default(Text("Okay")))
            }
        }
    }

    func sendMessage() {
        self.showingAlert = true
    }

    func makeVideoCall() {
        self.showingAlert = true
    }
}

struct ContactCell_Previews: PreviewProvider {
    static var previews: some View {
        ContactCell(contactInfo: ContactInfo.init(name: "Rasika", email: "rasikapunde@gmail.com", number: "1234567890"))
    }
}
