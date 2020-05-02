//
//  TextFieldModifiersView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct TextFieldModifiersView: View {
    @State var localString = String()
    var body: some View {
        VStack {
            TextField("Red text here", text: $localString)
                .foregroundColor(.red)
            TextField("Red background here", text: $localString)
                .background(Color.red)
            TextField("Red border here", text: $localString)
                .border(Color.red, width: 1)
            TextField("Padding here", text: $localString)
                .padding()
            TextField("RoundedBorderTextFieldStyle here", text: $localString)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .background(Color.red)
            Spacer()
            
            Group {
                TextField(".keyboardType(.asciiCapable)", text: $localString)
                    .keyboardType(.asciiCapable)
                TextField(".keyboardType(.asciiCapableNumberPad)", text: $localString)
                    .keyboardType(.asciiCapableNumberPad)
                TextField(".keyboardType(.decimalPad)", text: $localString)
                    .keyboardType(.decimalPad)
                TextField(".keyboardType(.default)", text: $localString)
                    .keyboardType(.default)
                TextField(".keyboardType(.emailAddress)", text: $localString)
                    .keyboardType(.emailAddress)
                TextField(".keyboardType(.namePhonePad)", text: $localString)
                    .keyboardType(.namePhonePad)
                TextField(".keyboardType(.numberPad)", text: $localString)
                    .keyboardType(.numberPad)
                TextField(".keyboardType(.numbersAndPunctuation)", text: $localString)
                    .keyboardType(.numbersAndPunctuation)
                TextField(".keyboardType(.phonePad)", text: $localString)
                    .keyboardType(.phonePad)
                TextField(".keyboardType(.twitter)", text: $localString)
                    .keyboardType(.twitter)
            }
            Group {
                TextField(".keyboardType(.URL)", text: $localString)
                    .keyboardType(.URL)
                TextField(".keyboardType(.webSearch)", text: $localString)
                    .keyboardType(.webSearch)
            }
            
        }.padding(10)
    }
}
