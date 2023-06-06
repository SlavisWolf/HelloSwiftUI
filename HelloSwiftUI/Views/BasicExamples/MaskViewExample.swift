//
//  MaskViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús Ibáñez Barja on 06/06/2023.
//

import SwiftUI

struct MaskViewExample: View {
    
    @State var offetY = 0.0
    let gradient = Gradient(colors: [
        Color(red: 40/255.0, green: 13/255.0, blue: 88/255.0),
            .black]  )
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ScrollView {
                VStack(spacing: 0) {
                    Image("background_emogis")
                        .resizable()
                    Image("background_emogis")
                        .resizable()
                }
                .scaledToFill()
                .frame(width: 800, height: 500)
                .offset(y: offetY)
            }
            .mask {
                Text("Apple")
                    .font(.system(size: 120, weight: .bold, design: .monospaced))
            }
            .background(RadialGradient(gradient: gradient,
                                       center: .center,
                                       startRadius: 0,
                                       endRadius: 360) )
        }
        .onAppear {
            withAnimation(.linear(duration: 5).repeatForever(autoreverses: false) ) {
                offetY = -500
            }
        }
    }
}

struct MaskViewExample_Previews: PreviewProvider {
    static var previews: some View {
        MaskViewExample()
    }
}

fileprivate struct SquareView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(.orange)
                .mask({
                    Text("Just Learning SwiftUI")
                        .font(.system(size: 30, weight: .bold, design: .monospaced))
                })
                .frame(width: 300, height: 200)
        }
        .background(.blue)
    }
}
