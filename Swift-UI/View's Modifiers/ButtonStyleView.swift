//
//  ButtonStyleView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct ButtonStyleView: View {
    var body: some View {
        VStack {
            Button(action:{}) {
                Text("Button")
            }
            .buttonStyle(DefaultButtonStyle())
            Button(action:{}) {
                Text("Button")
            }
            .buttonStyle(PlainButtonStyle())
            Button(action:{}) {
                Text("Button")
            }
            .buttonStyle(BorderlessButtonStyle())
        }
    }
}
