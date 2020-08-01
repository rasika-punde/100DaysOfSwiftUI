//
//  ContactView.swift
//  100DaysOfSwiftUI
//
//  Created by Punde, Rasika Nanasaheb on 01/08/20.
//  Copyright © 2020 Punde, Rasika Nanasaheb (US - Mumbai). All rights reserved.
//

import SwiftUI

struct ContactView: View {

    @State private var sortingIndex = 0
    @State var contacts = ContactInfo.dummyData()

    var body: some View {
        NavigationView {
            VStack {
                Picker("Sort Contacts By", selection: $sortingIndex) {
                    Text("Name").tag(0)
                    Text("Email").tag(1)
                }.pickerStyle(SegmentedPickerStyle())
                    .onReceive([self.sortingIndex].publisher.first()) { (tag) in
                        switch tag {
                        case 0:
                            self.contacts.sort {$0.email > $1.email }
                        case 1:
                            self.contacts.sort {$0.name > $1.name }
                        default:
                            break;
                        }
                }
                .padding()
                List {
                    ForEach (contacts, id: \.self) { contactInfo in
                        NavigationLink(destination: ScrollingContactList()){
                            ContactCell(contactInfo: contactInfo)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Contacts"))
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
