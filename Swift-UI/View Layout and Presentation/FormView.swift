//
//  FormView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct FormView: View {
    @State var toggleIsOn = false
    @State var sliderValue = 0.0
    @State var stepperValue = 0
    var body: some View {
        Form {
            Section {
                Text("Section 1")
                Button(action: {}) {
                    Text("Button")
                }
                Toggle(isOn: $toggleIsOn) {
                    Text("Toggle")
                }
            }
            Section {
                Text("Section 2")
                Button(action: {}) {
                    Text("Button")
                }
                Slider(value: $sliderValue, in: 0...100, step: 0.1)
            }
            Section {
                Text("Section 3")
                Button(action: {}) {
                    Text("Button")
                }
                Stepper(value: $sliderValue, in: 0...100, step: 1) {
                    Text("Stepper")
                }
            }
        }
    }
}
