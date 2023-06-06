//
//  ContextMenuViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct ContextMenuViewExample: View {
    
    let selections: [(text: String, color: Color)] = [
        ("SwiftUI", .green),
        ("UIKit", .red),
        ("Xcode", .gray)]
    
    @State var currentSelection: (text: String, color: Color)?
    
    var body: some View {
        
        VStack {
            
            Text("What should I learn?")
                .foregroundColor(.blue)
                .padding()
                .contextMenu {
                    ForEach(selections, id: \.text) { element in
                        Button {
                            currentSelection = element
                        } label: {
                            if element.text.localizedCaseInsensitiveContains("swift") {
                                Label(element.text, systemImage: "swift")
                            } else {
                                Text(element.text)
                            }
                        }
                    }
                }
            
            if let currentSelection {
                Text(currentSelection.text)
                    .font(.largeTitle)
                    .foregroundColor(currentSelection.color)
                    .padding(.top, 60)
            }
            
            Spacer()
        }
        .padding(.top, 50)
    }
}

struct ContextMenuViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuViewExample()
    }
}
