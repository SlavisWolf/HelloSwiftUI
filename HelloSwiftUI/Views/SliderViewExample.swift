//
//  SliderViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct SliderViewExample: View {
    
    @State var counter: Float = 5.0
    @State var isMovingSlider = false
    
    var body: some View {
        
        
        VStack {
            
            Text(String(format: "%.1f", counter) )
                .foregroundColor(isMovingSlider ? .green : .black)
                .bold()
                
            + Text(" value selected from the slider")
                .foregroundColor(.black)
                .bold()
            Slider(value: $counter, in: 0...10, step: 0.1) {
                Text("Slider to select a value for testing")
            } minimumValueLabel: {
                Text("Min")
            } maximumValueLabel: {
                Text("Max")
            } onEditingChanged: { isEditing in
                isMovingSlider = isEditing
            }
            .padding()
        }
    }
}

struct SliderViewExample_Previews: PreviewProvider {
    static var previews: some View {
        SliderViewExample()
    }
}
