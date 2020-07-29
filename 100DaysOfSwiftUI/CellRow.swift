//
//  CellRow.swift
//  100DaysOfSwiftUI
//
//  Created by Punde, Rasika Nanasaheb on 29/07/20.
//  Copyright © 2020 Punde, Rasika Nanasaheb (US - Mumbai). All rights reserved.
//

import SwiftUI

struct CellRow: View {
    let cellData: ListModel

    var body: some View {
        HStack(spacing: 10) {

            Image(cellData.imageName)
            .resizable()
            .frame(width: 40,
                   height: 40)
            VStack(alignment: .leading) {
                Text(cellData.title)
                .font(.headline)
                .foregroundColor(Color.blue)
                Text(cellData.subtitle)
                .font(.subheadline)
                .foregroundColor(Color.blue)
            }

            Spacer()
            Button(action: buttonAction) {

                Image(systemName: "chevron.right")
                    .frame(width: 20, height: 20)

            }

        }.padding()
    }

    private func buttonAction() {

    }
}

struct CellRow_Previews: PreviewProvider {
    static var previews: some View {
        CellRow(cellData: ListModel.dummyData().randomElement()!)
    }
}
