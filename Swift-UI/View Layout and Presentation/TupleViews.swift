//
//  TuppleView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct TupleViews: View {
    let tuple: (Text, Text, Image) = (Text("This is"), Text("a tuple"), Image(systemName: "gamecontroller"))
    
    typealias twoTexts = (firstText: Text, secondText: Text)
    let myTwoTexts: twoTexts = (firstText: Text("This is"), secondText: Text("Another tuple"))
    
    var body: some View {
        TupleView(tuple)
    }
}
