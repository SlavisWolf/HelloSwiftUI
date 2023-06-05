//
//  TextEditorView.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct TextEditorViewExample: View {
    
    @State var text = ""
    @State var counter = 0
    
    var body: some View {
        
        VStack {
            TextEditor(text: $text)
                .font(.title)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled(true)
                .padding()
                .onChange(of: text) { newValue in
                    counter = newValue.count
                }
            
            Text(String(counter) )
                .foregroundColor( counter <= 280 ? .green : .red)
                .font(.largeTitle)
        }
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorViewExample()
    }
}
