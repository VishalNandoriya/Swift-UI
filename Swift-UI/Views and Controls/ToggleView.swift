//
//  ToggleView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct ToggleView: View {
    @State var toggleOn = false
    var body: some View {
        VStack {
            Toggle(isOn: $toggleOn) {
                Text("@State Toggle: \(String(toggleOn))")
            }
        }
        .padding()
    }
}
