//
//  PreviewModifiersViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús Ibáñez Barja on 07/06/2023.
//

import SwiftUI

struct PreviewModifiersViewExample: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Now it's time for the preview!")
                .font(.largeTitle)
                .foregroundColor(.orange)
            Image(systemName: "sun.max.fill")
                .font(.largeTitle)
                .foregroundColor(.yellow)
        }
    }
}

struct PreviewModifiersViewExample_Previews: PreviewProvider {
    static var previews: some View {
        
        // Execute this in the terminal for seeing the devices.
        // xcrun simctl list devicetypes
        
        PreviewModifiersViewExample()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.landscapeLeft)
        
        PreviewModifiersViewExample()
            .previewDevice("iPad Air (5th generation)")
            .environment(\.dynamicTypeSize, .xxxLarge)
            .previewDisplayName("iPad Air")
        
        // You must use Selectable mode in the preview to see this properly
        PreviewModifiersViewExample()
            .previewDisplayName("Layout Fits")
            .previewLayout(.sizeThatFits)
        
    }
}
