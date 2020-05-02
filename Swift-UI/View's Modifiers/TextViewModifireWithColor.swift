//
//  TextViewModifireWithColor.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct TextViewModifireWithColor: View {
    var body: some View {
        VStack {
            Text("Foreground colour")
                .foregroundColor(.red)
            Text("background colour")
                .background(Color.red)
            Group {
                Text("background colour with padding")
                    .background(Color.red)
                    .padding()
            }
            .border(Color.red, width: 1)
            Text("Bold")
                .bold()
            Text("Italics")
                .italic()
            Text("Baseline offset")
                .baselineOffset(20)
                .border(Color.red, width: 1)
            Text("Tracking")
                .tracking(20)
            Text("Kerning")
                .kerning(-1)
            Group {
                Text("Underline")
                    .underline()
                Text("Blue Underline")
                    .underline(color: .blue)
                Text("Custom Underline")
                    .redUnderline()
            }
            Group {
                Text("Strikethrough")
                    .strikethrough()
                Text("Red Strikethrough")
                    .strikethrough(color: .red)
                Text("Custom Strikethrough")
                    .greenStrikethrough()
            }
        }
    }
}

extension Text {
    func greenStrikethrough() -> some View {
        return self.strikethrough(color: .green)
    }
    func redUnderline() -> some View {
        return self.underline(true, color: .red)
    }
}
