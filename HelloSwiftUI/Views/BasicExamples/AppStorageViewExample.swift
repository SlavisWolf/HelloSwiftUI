//
//  AppStorageViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct AppStorageViewExample: View {
    
    @State var username: String = ""
    //This use userdefaults
    @AppStorage("appStorage_username") var appStorageUsername: String = ""
    
    var body: some View {
        Form {
            TextField("Write and username", text: $username)
            HStack {
                Spacer()
                Button("Save") {
                    appStorageUsername = username
                    print(UserDefaults.standard.string(forKey: "appStorage_username") ?? "")
                }
                Spacer()
            }
        }
        .onAppear {
            username = appStorageUsername
        }
    }
}

struct AppStorageViewExample_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageViewExample()
    }
}
