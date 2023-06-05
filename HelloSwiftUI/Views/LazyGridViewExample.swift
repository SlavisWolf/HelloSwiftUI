//
//  LazyGridViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct LazyGridViewExample: View {
    
    let elements = 1...500
    
    let gridtems = [GridItem(.fixed(100) ),
                    GridItem(.adaptive(minimum: 20) ),
                    GridItem(.fixed(100) )]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: gridtems) {
                ForEach(elements, id: \.self) { value in
                    VStack {
                        Circle()
                            .frame(height: 40)
                        Text(String(value))
                    }
                }
            }
            .padding()
        }
    }
}

struct LazyGridViewExample_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridViewExample()
    }
}
