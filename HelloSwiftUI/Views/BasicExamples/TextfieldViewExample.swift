//
//  TextfieldViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct TextfieldViewExample: View {
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .keyboardType(.emailAddress)
                .autocorrectionDisabled(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: username) { newValue in
                    print(newValue)
                }
            
            SecureField("Password", text: $password)
                .keyboardType(.default)
                .autocorrectionDisabled(true)
                .textInputAutocapitalization(.never)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 10)
                .onChange(of: password) { newValue in
                    print(newValue)
                }
            
            Spacer()
        }
    }
}

struct TextfieldViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldViewExample()
    }
}
