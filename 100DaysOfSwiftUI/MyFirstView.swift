//
//  MyFirstView.swift
//  100DaysOfSwiftUI
//
//  Created by Punde, Rasika Nanasaheb on 29/07/20.
//  Copyright © 2020 Punde, Rasika Nanasaheb (US - Mumbai). All rights reserved.
//

import SwiftUI

struct MyFirstView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(ListModel.dummyData(), id: \.self) { listObj in
                    CellRow(cellData: listObj)
                }
            }.navigationBarTitle(Text("List View"))
        }
    }
}

struct MyFirstView_Previews: PreviewProvider {
    static var previews: some View {
        MyFirstView()
    }
}
