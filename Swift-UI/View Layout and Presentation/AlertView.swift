//
//  AlertView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct AlertView: View {
    @State var alert1Shown = false
    @State var alert2Shown = false
    @State var alert3Shown = false
    
    let alert1 = Alert(title: Text("Title"), message: Text("Message"), primaryButton: Alert.Button.default(Text("OK")) {print("You did something")}, secondaryButton: .cancel())
    
    let alert2 = Alert(title: Text("Title"), message: Text("Message"), primaryButton: Alert.Button.destructive(Text("Delete")) {print("You deleted something")}, secondaryButton: .cancel())
    
    let alert3 = Alert(title: Text("Title"), message: Text("Message"), dismissButton: Alert.Button.default(Text("Dismiss")))
    
    var body: some View {
        Form {
            
            Button(action: {self.alert1Shown = true}) {
                Text("Alert 1")
            }
            .alert(isPresented: $alert1Shown) {alert1}
            
            Button(action: {self.alert2Shown = true}) {
                Text("Alert 2")
            }
            .alert(isPresented: $alert2Shown) {alert2}
            
            Button(action: {self.alert3Shown = true}) {
                Text("Alert 3")
            }
            .alert(isPresented: $alert3Shown) {alert3}
            
        }
    }
}
