//
//  RedactedViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús Ibáñez Barja on 06/06/2023.
//

import SwiftUI

struct RedactedViewExample: View {
    
    @State var isLoading: Bool = false
    
    var body: some View {
        
        VStack {
            List {
                ForEach(1...10, id: \.self) { _ in
                    VStack {
                        Text("I'm looking for you! 🤡")
                            .font(.title)
                        Text("We're learning SwiftUI!")
                        Text("If you enjoy this content let me know through Github.")
                        HStack {
                            Image(systemName: "hand.thumbsup.circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                            
                            Image(systemName: "heart.circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.red)
                        }
                        .padding(.top, 10)
                        .unredacted()
                    }
                }
            }
            .redacted(reason: isLoading ? .placeholder : [])
            
            Button(isLoading ? "Is loading" : "Refresh") {
                isLoading.toggle()
            }
        }
        
        
    }
}

struct RedactedViewExample_Previews: PreviewProvider {
    static var previews: some View {
        RedactedViewExample()
    }
}
