//
//  ContentView.swift
//  Swift-UI
//
//  Created by Vishal Nandoriya on 02/05/20.
//  Copyright © 2020 Vishal Nandoriya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Views and Controls")) {
                    // MARK: - TextView
                    NavigationLink(destination: TextView()) {
                        Text("Text")
                    }
                                         
                    // MARK: - TextField
                    NavigationLink(destination: TextFieldView()) {
                        Text("TextFiled")
                    }
                                        
                    // MARK: - SecureTextField
                    NavigationLink(destination: SecureTextFieldView()) {
                        Text("SecureTextField")
                    }
                    
                    // MARK: - Image
                    NavigationLink(destination: ImageView()) {
                        Text("Image")
                    }
                    
                    // MARK: - Button
                    NavigationLink(destination: ButtonView()) {
                        Text("Button")
                    }
                                     
                    // MARK: - Toggle
                    NavigationLink(destination: ToggleView()) {
                        Text("Toggle")
                    }
                    
                    // MARK: - Picker
                    NavigationLink(destination: PickerView()) {
                        Text("Picker")
                    }
                    
                    // MARK: - Slider
                    NavigationLink(destination: SliderView()) {
                        Text("Slider")
                    }
                    
                    // MARK: - Stepper
                    NavigationLink(destination: StepperView()) {
                        Text("Stepper")
                    }
                }
                
                Section(header: Text("View's Modifiers")) {
                    // MARK: - TextViewModifire
                    NavigationLink(destination: TextViewModifire()) {
                        Text("Standard text modifiers")
                    }

                    // MARK: - TextViewModifireWithColor
                    NavigationLink(destination: TextViewModifireWithColor()) {
                        Text("Standard text modifiers with colors")
                    }
                    
                    // MARK: - TextField ViewModifiers
                    NavigationLink(destination: TextFieldModifiersView()) {
                        Text("TextFiled modifiers")
                    }

                    // MARK: - ButtonStyle
                    NavigationLink(destination: ButtonStyleView()) {
                        Text("Button Style")
                    }
                }
                
                Section(header: Text("View Layout and Presentation")) {
                    
                    // MARK: - HStack, VStack and ZStack
                    NavigationLink(destination: StackViews()) {
                        Text("HStack, VStack and ZStack")
                    }
                    
                    // MARK: - FormView
                    NavigationLink(destination: FormView()) {
                        Text("Form")
                    }

                    // MARK: - Tabs
                    NavigationLink(destination: TabViews()) {
                        Text("Tabs")
                    }
                    
                    // MARK: - Alerts
                    NavigationLink(destination: AlertView()) {
                        Text("Alert")
                    }

                    // MARK: - ActionSheet
                    NavigationLink(destination: ActionSheetView()) {
                        Text("ActionSheet")
                    }
                    
                    // MARK: - TuppleView
                    NavigationLink(destination: TupleViews()) {
                        Text("Tuple")
                    }
                }
                
                Section(header: Text("State and Data Flow")) {
                    // MARK: - State, binding
                    NavigationLink(destination: StateView()) {
                        Text("State")
                    }

                    NavigationLink(destination: BindingView()) {
                        Text("Binding")
                    }
                    
                    NavigationLink(destination: ObservedObjectView()) {
                        Text("ObservedObject")
                    }
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
