//
//  StackViews.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct StackViews: View {
    var body: some View {
        VStack {
            Text("This")
            Text("Is")
            Text("Vertically Stack")
            
            HStack {
                Text("This")
                Text("Is")
                Text("Horizontally Stack")
            }
            ZStack {
                Text("This")
                Text("Is")
                Text("Top")
                Text("Of")
                Text("ItSelf")
            }
        }
    }
}
