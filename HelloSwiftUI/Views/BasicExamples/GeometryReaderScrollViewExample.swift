//
//  GeometryReaderScrollViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 5/6/23.
//

import SwiftUI

fileprivate let arrayOfNames = [
    "David",
    "Antonio",
    "Laura",
    "Celeste",
    "Pedro",
    "Pedro's sister",
    "Daniel",
    "Beatriz",
    "Francisco",
    "Victoria"
]

struct GeometryReaderScrollViewExample: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(arrayOfNames, id: \.self) { name in
                    GeometryReader { proxy in
                        VStack {
                            Text("\(proxy.frame(in: .global).minY)")
                            Spacer()
                            Text(name)
                                .frame(width: 370, height: 200)
                                .background(.green)
                                .cornerRadius(20)
                            Spacer()
                        }
                        .shadow(color: .gray, radius: 10, x: 0, y: 0)
                        .rotation3DEffect(
                            Angle(degrees: proxy.frame(in: .global).minY - 57),
                            axis: (x: 0, y: 10, z: 3)
                        )
                        
                    }
                    .frame(width: 370, height: 300)
                }
            }
        }
    }
}

struct GeometryReaderScrollViewExample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderScrollViewExample()
    }
}
