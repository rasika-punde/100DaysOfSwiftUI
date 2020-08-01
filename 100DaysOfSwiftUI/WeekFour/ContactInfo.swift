//
//  ContactInfo.swift
//  100DaysOfSwiftUI
//
//  Created by Punde, Rasika Nanasaheb on 01/08/20.
//  Copyright © 2020 Punde, Rasika Nanasaheb (US - Mumbai). All rights reserved.
//

import Foundation

struct ContactInfo: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let email: String
    let number: String

    static func dummyData() -> [ContactInfo] {
        return [
            ContactInfo(name: "Rasika", email: "abc@gmail.com", number: "12345678909"),
            ContactInfo(name: "Soham", email: "bcd@gmail.com", number: "12345677909"),
            ContactInfo(name: "Swaranjali", email: "cde@gmail.com", number: "12344678909"),
            ContactInfo(name: "Surekha", email: "deg@gmail.com", number: "13345678909"),
            ContactInfo(name: "Nanasaheb", email: "efg@gmail.com", number: "12346678909"),
        ]
    }
}
