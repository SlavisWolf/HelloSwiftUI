//
//  ImageViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 1/6/23.
//

import SwiftUI

struct ImageViewExample: View {
    var body: some View {
        
        VStack {
            Image("youtube")
                .resizable()
                .scaledToFit() // .aspectRatio(contentMode: .fit)
                .frame(width: 98, height: 68)
            
            Image("youtube")
                .renderingMode(.template)
                .resizable(resizingMode: .tile)
                .foregroundColor(.blue)
        }
    }
}

struct ImageViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewExample()
    }
}
