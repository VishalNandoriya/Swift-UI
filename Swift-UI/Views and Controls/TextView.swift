//
//  TextView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct TextView: View {
    let string = "This is a string"
    var body: some View {
        VStack {
            Text(string)
        }
    }
}
