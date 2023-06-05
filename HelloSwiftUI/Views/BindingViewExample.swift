//
//  BindingViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct BindingViewExample: View {
    
    
    @State var number = Int.zero
    
    var body: some View {
        CounterView(counter: $number)
    }
}

fileprivate struct CounterView: View {
    
    // We use binding when we receive the variable from other View
    @Binding var counter: Int
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Tap to increase the counter") {
                    counter += 1
            }
            
            Text(String(counter) )
                .font(.largeTitle)
                .foregroundColor(.gray)
                .bold()
        }
    }
}

struct BindingViewExample_Previews: PreviewProvider {
    static var previews: some View {
        BindingViewExample()
    }
}
