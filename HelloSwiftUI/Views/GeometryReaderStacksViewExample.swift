//
//  GeometryReaderStacksViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 5/6/23.
//

import SwiftUI

struct GeometryReaderStacksViewExample: View {
    
    var body: some View {
        
        GeometryReader { proxy in
            VStack( spacing: 0) {
                HStack(spacing: 0) {
                    Rectangle()
                        .frame(width: proxy.size.width / 2,
                               height: proxy.size.height / 2)
                        .foregroundColor(.green)
                        .overlay { Text("1") }
                    
                    Rectangle()
                        .frame(width: proxy.size.width / 2,
                               height: proxy.size.height / 2)
                        .foregroundColor(.orange)
                        .overlay { Text("2") }
                }
                
                Rectangle()
                    .frame(width: proxy.size.width,
                           height: proxy.size.height * 0.3)
                    .foregroundColor(.purple)
                    .overlay { Text("3") }
                
                HStack(spacing: 0) {
                    
                    Rectangle()
                        .frame(width: proxy.size.width * 0.34,
                               height: proxy.size.height * 0.2)
                        .foregroundColor(.yellow)
                        .overlay { Text("4") }
                    
                    Rectangle()
                        .frame(width: proxy.size.width * 0.33,
                               height: proxy.size.height * 0.2)
                        .foregroundColor(.cyan)
                        .overlay { Text("5") }
                    
                    Rectangle()
                        .frame(width: proxy.size.width * 0.33,
                               height: proxy.size.height * 0.2)
                        .foregroundColor(.brown)
                        .overlay { Text("6") }
                }
            }
        }
        .background(.red)
    }
}

struct GeometryReaderStacksViewExample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderStacksViewExample()
    }
}
