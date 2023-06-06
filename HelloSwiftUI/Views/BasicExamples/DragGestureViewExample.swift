//
//  DragGestureViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct DragGestureViewExample: View {
    
    @State var dragOffset = CGSize.zero
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.pink)
            .frame(width: 100, height: 100)
            .offset(dragOffset)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        dragOffset = value.translation
                    })
                    .onEnded { value in
                        withAnimation(.spring() ) {
                            dragOffset = .zero
                        }
                    }
            )
    }
}

struct DragGestureViewExample_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureViewExample()
    }
}
