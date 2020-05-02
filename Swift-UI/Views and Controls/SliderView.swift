//
//  SliderView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @State var sliderValue = Double()
    var body: some View {
        VStack {
            Slider(value: $sliderValue, in: 0...100, step: 0.1) {
                _ in
                
            }
            Slider(value: $sliderValue, in: 0...100, onEditingChanged: { sliderActive in
            }) {
                Text("Slider")
            }
            
            Slider(value: $sliderValue, in: 0...100, onEditingChanged: { sliderActive in
            }, minimumValueLabel: Text("Min"), maximumValueLabel: Text("Max")) {
                Text("Slider")
            }
            Slider(value: $sliderValue, in: 0...100, step: 0.1)
            {_ in
                print("Value changed")
            }
            
            Slider(value: $sliderValue, in: 0...100, step: 0.1, onEditingChanged: { sliderActive in
                print("Value changed")
            }) {
                Text("Slider")
            }
            Slider(value: $sliderValue, in: 0...100, step: 0.1, onEditingChanged: { sliderActive in
            }, minimumValueLabel: Text("Min"), maximumValueLabel: Text("Max")) {
                Text("Slider")
            }
        }
        .padding(10)
        
    }
}
