//
//  LabelViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct LabelViewExample: View {
    var body: some View {
        Label("Subscribe to my channel!",
              systemImage: "hand.thumbsup.fill")
        .font(.largeTitle)
        .labelStyle(.titleOnly)
        
    }
}

struct LabelViewExample_Previews: PreviewProvider {
    static var previews: some View {
        LabelViewExample()
    }
}
