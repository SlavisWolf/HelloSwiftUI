//
//  SymbolsExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct SymbolsExample: View {
    var body: some View {
        Image(systemName: "moon.circle.fill")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: 200)
    }
}

struct SymbolsExample_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsExample()
    }
}
