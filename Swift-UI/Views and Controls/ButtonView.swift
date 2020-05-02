//
//  ButtonView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        HStack {
            Button(action:{print("Button pressed")}) {
                Text("Button")
            }
            Button(action: buttonAction) {
                Text("Button")
            }
        }
    }
    func buttonAction() {
      print("Button function called")
    }
}
