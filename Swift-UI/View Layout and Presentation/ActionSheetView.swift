
//
//  ActionSheetView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct ActionSheetView: View {
    @State var sheet1Shown = false
    @State var sheet2Shown = false
    @State var sheet3Shown = false
    
    let actionSheet1 = ActionSheet(title: Text("Title"), message: Text("Message"), buttons: [.default(Text("OK")) {print("You did something")}, .cancel()])
    let actionSheet2 = ActionSheet(title: Text("Title"), message: Text("Message"), buttons: [.destructive(Text("Delete")) {print("You deleted something")}, .cancel()])
    let actionSheet3 = ActionSheet(title: Text("Title"), message: Text("Message"), buttons: [Alert.Button.default(Text("Dismiss"))])
    
    var body: some View {
        Form {
            
            Button(action: {self.sheet1Shown = true}) {
                Text("Alert 1")
            }
            .actionSheet(isPresented: $sheet1Shown) {actionSheet1}
            
            Button(action: {self.sheet2Shown = true}) {
                Text("Alert 2")
            }
            .actionSheet(isPresented: $sheet2Shown) {actionSheet2}
            
            Button(action: {self.sheet3Shown = true}) {
                Text("Alert 3")
            }
            .actionSheet(isPresented: $sheet3Shown) {actionSheet3}
            
        }
    }
}
