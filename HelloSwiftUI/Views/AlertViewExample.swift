//
//  AlertViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct AlertViewExample: View {
    
    @State var isPresented = false
    
    var body: some View {
        
        VStack {
            Text("Modal screen")
                .padding()
            Button("Open") {
                isPresented = true
            }
        } 
        .alert("This is an alert!", isPresented: $isPresented) {
            
            Button("Cancel", role: .destructive) {
                print("Cancel clicked")
            }
            
            Button("Accept", role: .cancel) {
                print("Accept clicked")
            }
            
        } message: {
            Text("This is the text of the modal, It probably is multiline, I want to test it")
        }
    }
}

struct AlertViewExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertViewExample()
    }
}
