//
//  FormExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct FormViewExample: View {
    
    @State var deviceName = ""
    @State var isNetworkON = false
    @State var selectedDate = Date.now
    @State var selectedColor = Color.clear
    
    let versionNumber = (Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String) ?? ""
    
    var body: some View {
        Form {
            
            Section {
                TextField("Device name", text: $deviceName)
                Toggle("Wi-fi", isOn: $isNetworkON)
            } header: {
                Text("Settings")
            }
            
            Section {
                DatePicker("Date", selection: $selectedDate)
                ColorPicker("Color", selection: $selectedColor)
            } header: {
                Text("Account")
            } footer: {
                HStack {
                    Spacer()
                    Label("Version \(versionNumber)", systemImage: "iphone")
                    Spacer()
                }
                .padding(.top, 10)
            }
        }
    }
}

struct FormViewExample_Previews: PreviewProvider {
    static var previews: some View {
        FormViewExample()
    }
}
