//
//  TapGestureViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct TapGestureViewExample: View {
    
    @State var tapCounter: Int = 0
    
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 100, height: 100)
                .foregroundColor(.indigo)
                .padding()
                .onTapGesture(count: 1) {
                    tapCounter += 1
                }
            
            Text("\(tapCounter) times the square was tapped")
                .font(.title3)
                .foregroundColor(.indigo)
                .bold()
        }
    }
}

struct TapGestureViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureViewExample()
    }
}
