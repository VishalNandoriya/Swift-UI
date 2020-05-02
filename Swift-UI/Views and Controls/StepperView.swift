//
//  StepperView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct StepperView: View {
    @State var stepperValue = Double()
    var body: some View {
        VStack {
            Stepper("localized_string_key", onIncrement: {}, onDecrement: {}, onEditingChanged: { editingActive in
            })
            
            Stepper("Stepper", onIncrement: {}, onDecrement: {}, onEditingChanged: {
                editingActive in
            })
                        
            Stepper(onIncrement: {}, onDecrement: {}, onEditingChanged: {
                editingActive in
            }) {
                Text("Stepper label")
            }
            
            Stepper(value: $stepperValue, step: 1, onEditingChanged: {
                editingActive in
            }) {
                Text("Stepper label")
            }
        }.padding(10)
    }
}
