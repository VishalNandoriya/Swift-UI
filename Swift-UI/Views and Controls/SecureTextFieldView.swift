//
//  SecureTextFieldView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct SecureTextFieldView: View {
    @State var password = ""
    @State var passcode = ""
    var body: some View {
        VStack {
            SecureField("Enter a local password", text: $password)
                .padding(10)
            Text("You entered: \(password)")
            SecureField("Enter a local passcode", text: $passcode)
                .padding(10)
                .keyboardType(.numberPad)
            Text("You entered: \(passcode)")
        }
    }
}
