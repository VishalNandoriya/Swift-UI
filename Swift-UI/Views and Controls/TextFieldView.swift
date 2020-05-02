//
//  TextFieldView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    @State var localString = ""
    @State var localFloat = Float()
    let formatter = NumberFormatter()
    var body: some View {
        List {
            TextField("Enter a local string", text: $localString)
            
            TextField("Placeholder", text: $localString, onEditingChanged: { isFirstResponder in
            }, onCommit: {})
            
            TextField("", value: $localFloat, formatter: formatter, onEditingChanged: { isFirstResponder in
            }, onCommit: {})
        }
    }
}
