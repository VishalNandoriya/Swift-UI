//
//  StateView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct StateView: View {
    @State var toggleIsOn = false
    @State var sliderValue = 0.0
    @State var stepperValue = 0
    var body : some View {
        VStack {
            Text("Slider: \(sliderValue)")
            Slider(value: $sliderValue, in: 0...100, step: 0.1)
            Stepper(value: $stepperValue, in: 0...100, step: 1) {
                Text("Stepper: \(stepperValue)")
            }
            Toggle(isOn: $toggleIsOn) {
                Text("Toggle: \(String(toggleIsOn))")
            }
        }
        .padding()
    }
    
}

