//
//  OverlayViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús Ibáñez Barja on 07/06/2023.
//

import SwiftUI

struct OverlayViewExample: View {
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(.blue)
                .overlay(alignment: .bottomTrailing) {
                    Image(systemName: "figure.run")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 240)
                        .offset(x: -40)
                }
            HStack {
                VStack(alignment: .leading) {
                    Text("SWIFTUI")
                        .fontWidth(.compressed)
                        .foregroundColor(.white)
                        .font(.system(size: 80, weight: .bold) )
                        .padding(.bottom, -40)
                    Text("Give me a comment\non Github! 🎉")
                        .multilineTextAlignment(.center)
                        .fontWidth(.compressed)
                        .foregroundColor(.orange)
                        .font(.system(size: 26, weight: .bold))
                        .frame(width: 200, height: 100)
                    Spacer()
                    Text("Antonio Jesús")
                        .fontWidth(.standard)
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .bold) )
                    HStack(alignment: .lastTextBaseline) {
                        Image(systemName: "applelogo")
                            .font(.footnote)
                            .foregroundColor(.white)
                        Text("Mobile iOS Developer")
                            .fontWidth(.standard)
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular) )
                    }
                    .padding(.bottom, 12)
                }
                .padding(.leading, 12)
                .padding(.top, 6)
                Spacer()
            }

        }
        .frame(height: 230)
        .padding(.horizontal, 20)
    }
}

struct OverlayViewExample_Previews: PreviewProvider {
    static var previews: some View {
        OverlayViewExample()
    }
}
