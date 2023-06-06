//
//  FontWithViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús Ibáñez Barja on 06/06/2023.
//

import SwiftUI

struct FontWithViewExample: View {
    var body: some View {
        
        TabView {
            View1()
                .padding()
                .tabItem {
                    Text("View 1")
                }
            
            View2()
                .padding(32)
                .tabItem {
                    Text("View 2")
                }
        }
        .tint(.red)
    }
}

struct FontWithViewExample_Previews: PreviewProvider {
    static var previews: some View {
        FontWithViewExample()
    }
}

fileprivate struct View1: View {
    var body: some View {
        Grid {
            GridRow {
                Text("Compressed")
                Text("We are the champios of SwiftUI! 🦾")
                    .font(.body)
                    .fontWidth(.compressed)
                    .padding(.bottom, 4)
            }
            Divider()
            GridRow {
                Text("Condensed")
                Text("We are the champios of SwiftUI! 🦾")
                    .font(.body)
                    .fontWidth(.condensed)
                    .padding(.bottom, 4)
            }
            Divider()
            GridRow {
                Text("Standard")
                Text("We are the champios of SwiftUI! 🦾")
                    .font(.body)
                    .fontWidth(.standard)
                    .padding(.bottom, 4)
            }
            Divider()
            GridRow {
                Text("Expanded")
                Text("We are the champios of SwiftUI! 🦾")
                    .font(.body.width(.expanded))
                    .padding(.bottom, 4)
            }
        }
    }
}


fileprivate struct View2: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("SWIFTUI COURSE")
                .bold()
                .foregroundColor(.gray)
                .padding(.bottom, 6)
            Text("Learn to develop mobile applications with SwiftUI")
                .bold()
            Rectangle()
                .frame(height: 1.5)
                .foregroundColor(.gray)
            Text("by ME!")
                .padding(.bottom, 8)
            Text("Create mobile application can be a big challenge, but with this examples you can follow an order from least to most complexity. Let me know in github if this examples are useful for you 😁")
                .foregroundColor(.gray)
        }
    }
}
