//
//  PickerView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct PickerView : View {
    var options = ["Option 1", "Option 2", "Option 3", "Option 4"]
    
    @State private var selectedOption = 0
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $selectedOption, label: Text("Select a choice")) {
                    ForEach(0 ..< options.count) {
                        Text(self.options[$0])
                        
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                Picker(selection: $selectedOption, label: Text("Select a choice")
                    .frame(minWidth: 100)) {
                        ForEach(0 ..< options.count) {
                            Text(self.options[$0])
                            
                        }
                }
                .pickerStyle(WheelPickerStyle())
                Picker(selection: $selectedOption, label: Text("Select a choice")) {
                    ForEach(0 ..< options.count) {
                        Text(self.options[$0])
                    }
                }
                .pickerStyle(DefaultPickerStyle())
            }
        }
    }
}
