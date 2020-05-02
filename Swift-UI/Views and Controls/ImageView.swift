//
//  ImageView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        List {
            Image("upcoming_bg")
            Image("upcoming_bg", bundle: Bundle.main)
                .resizable()
                .frame(width: 100)
            Image("upcoming_bg", label: Text("My image label"))
                .resizable()
                .scaledToFit()
            Image(decorative: "upcoming_bg")
                .resizable()
                .scaledToFill()
            Image(systemName: "gamecontroller")
            Image(uiImage: UIImage(named: "upcoming_bg")!)
            Image(decorative: UIImage(named: "upcoming_bg")!.cgImage!, scale: 0.5, orientation: .rightMirrored)
        }
    }
}
