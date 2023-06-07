//
//  ToolbarModifierViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús Ibáñez Barja on 07/06/2023.
//

import SwiftUI

struct ToolbarModifierViewExample: View {
    var body: some View {
        
        NavigationStack {
            List(1..<50) { value in
                HStack {
                    Image(systemName: "keyboard")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Learning SwiftUI \(value) ✈️")
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Leading") { }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("trailing") { }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Confirm") { }
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button("Bottom") { }
                }
            }
            .toolbarBackground(.red, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct ToolbarModifierViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarModifierViewExample()
    }
}
