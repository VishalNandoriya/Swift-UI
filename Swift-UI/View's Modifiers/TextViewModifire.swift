//
//  TextView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct TextViewModifire: View {
    var body: some View {
        VStack {
            Group {
                //Standard fonts
                Text("Large title")
                    .font(.largeTitle)
                Text("Title")
                    .font(.title)
                Text("Headline")
                    .font(.headline)
                Text("Subheadline")
                    .font(.subheadline)
                Text("Body")
                    .font(.body)
                Text("Callout")
                    .font(.callout)
                Text("Footnote")
                    .font(.footnote)
                Text("Caption")
                    .font(.caption)
                
            }
            Group {
                //Font weights
                Text("Ultra light")
                    .fontWeight(.ultraLight)
                Text("Thin")
                    .fontWeight(.thin)
                Text("Light")
                    .fontWeight(.light)
                Text("Regular")
                    .fontWeight(.regular)
                Text("Medium")
                    .fontWeight(.medium)
                Text("Semibold")
                    .fontWeight(.semibold)
                Text("Bold")
                    .fontWeight(.bold)
                Text("Heavy")
                    .fontWeight(.heavy)
                Text("Bold")
                    .fontWeight(.bold)
            }
            VStack {
                //Font alignments
                Text("Leading")
                    .frame(maxWidth: 100, alignment:  .leading)
                Text("Center")
                    .frame(maxWidth: 100, alignment:  .center)
                Text("Trailing")
                    .frame(maxWidth: 100, alignment:  .trailing)
                Text("These lines are limited")
                    .frame(maxWidth: 100)
            }
            .border(Color.red, width: 1)
        }
    }
}

