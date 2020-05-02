//
//  ObservedObjectView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 01/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

final class DataModel: ObservableObject {
  static let shared = DataModel()
  @Published var myObservedString = "Hello world!"
}

struct ObservedObjectView: View {
    @ObservedObject var data = DataModel.shared
    
    var body: some View {
      Text(data.myObservedString)
    }
}
