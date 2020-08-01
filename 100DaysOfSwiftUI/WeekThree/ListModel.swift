//
//  File.swift
//  100DaysOfSwiftUI
//
//  Created by Punde, Rasika Nanasaheb on 29/07/20.
//  Copyright © 2020 Punde, Rasika Nanasaheb (US - Mumbai). All rights reserved.
//

import SwiftUI
struct ListModel: Identifiable, Hashable {

    let id: Int
    let title: String
    let subtitle: String
    let imageName: String

    static func dummyData() -> [ListModel] {
        return [ListModel(id: 0, title: "title1", subtitle: "subtitle1", imageName: "1"),
        ListModel(id: 1, title: "title2", subtitle: "subtitle2", imageName: "1"),
        ListModel(id: 2, title: "title3", subtitle: "subtitle3", imageName: "1")]
    }

}
