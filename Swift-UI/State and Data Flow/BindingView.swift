//
//  BindingView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct BindingView: View {
    @State var toggleIsOn = false
    @State var sliderValue = 0.0
    @State var stepperValue = 0
    @State var presented = false
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
            Button(action: {self.presented = true}) {
                Text("Present")
            }
        }
        .sheet(isPresented: $presented, content: {PresentedView(sliderValueFromParent: self.$sliderValue, stepperValueFromParent: self.$stepperValue, toggleIsOnFromParent: self.$toggleIsOn)})
        .padding()
    }
}

struct PresentedView : View {
    @Binding var sliderValueFromParent: Double
    @Binding var stepperValueFromParent: Int
    @Binding var toggleIsOnFromParent: Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Text("Slider: \(sliderValueFromParent)")
            Slider(value: $sliderValueFromParent, in: 0...100, step: 0.1)
            Stepper(value: $stepperValueFromParent, in: 0...100, step: 1) {
                Text("Stepper: \(stepperValueFromParent)")
            }
            Toggle(isOn: $toggleIsOnFromParent) {
                Text("Toggle: \(String(toggleIsOnFromParent))")
            }
            Button(action: {self.presentationMode.wrappedValue.dismiss()}) {
                Text("Dismiss")
            }
        }
    }
}
