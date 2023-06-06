//
//  MovalsViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct ModalsViewExample: View {
    
    @State var isPresented = false
    
    var body: some View {
        
        VStack {
            
            Text("View 1")
                .padding()
            Button("Ok") {
                isPresented = true
            }
        }
        // sheet is also available bit the page would not fit all the screen
        .fullScreenCover(isPresented: $isPresented) {
            isPresented = false
        } content: {
            ZStack {
                Color.red.ignoresSafeArea()
                Button("Welcome to my new page!!") {
                    isPresented = false
                }
            }
        }
    }
}

struct ModalsViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ModalsViewExample()
    }
}
