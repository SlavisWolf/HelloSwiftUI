//
//  ViewModifierViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 5/6/23.
//

import SwiftUI

fileprivate struct NewButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .cornerRadius(20)
    }
}

fileprivate extension View {
    func newButtonModifier() -> some View {
        self.modifier(NewButtonModifier())
    }
}


struct ViewModifierViewExample: View {
    var body: some View {
        VStack {
            Text("Subscribe to my channel! ")
                .bold()
                .padding()
            Button("Ok I will do it") {
                print("Hello")
            }
            .newButtonModifier()
        }
    }
}

struct ViewModifierViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierViewExample()
    }
}
