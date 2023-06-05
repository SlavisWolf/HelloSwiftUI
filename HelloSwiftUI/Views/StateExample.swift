//
//  StateExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct StateExample: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        
        VStack {
            Text("\(counter) times the button was pressed")
            Button("Increase") { counter += 1 }
        }
    }
}

struct StateExample_Previews: PreviewProvider {
    static var previews: some View {
        StateExample()
    }
}
