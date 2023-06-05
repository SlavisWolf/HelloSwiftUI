//
//  ToggleViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct ToggleViewExample: View {
    
    @State var isOkay = false
    
    var body: some View {
        
        Form {
            Toggle("Are you okay?", isOn: $isOkay)
            Text(isOkay.description.capitalized)
                .foregroundColor(isOkay ? .green : .gray)
        }
    }
}

struct ToggleViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleViewExample()
    }
}
