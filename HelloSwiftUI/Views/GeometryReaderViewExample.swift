//
//  GeometryReaderViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 5/6/23.
//

import SwiftUI

struct GeometryReaderViewExample: View {
    
    var body: some View {
        
        GeometryReader { proxy in
            
            VStack {
                Text("With: \(proxy.size.width)")
                    .background(.orange)
                    .padding()
                
                Text("Height: \(proxy.size.height)")
                    .background(.orange)
                    .padding()
                
                Text("Coordinates local: \(proxy.frame(in: .local).debugDescription)")
                    .background(.orange)
                    .padding()
                
                Text("Coordinates global: \(proxy.frame(in: .global).debugDescription)")
                    .background(.orange)
                    .padding()
            }
        }
        .background(.pink)
        //.frame(width: 300, height: 300)
    }
}

struct GeometryReaderViewExample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderViewExample()
    }
}
