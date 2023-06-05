//
//  ButtonViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct ButtonViewExample: View {
    
    
    let colors: [Color] = [.red, .green, .purple, .blue]
    @State var randomColor: Color = .blue
    @State var thumbsup = true
    
    var body: some View {
        VStack {
            Button(action: {
                var index = Int.random(in: 0...3)
                while colors[index] == randomColor {
                    index = Int.random(in: 0...3)
                }
                randomColor = colors[index]
                
            }, label: {
                Text("Click on me to change my color!")
                    .foregroundColor(.white)
                    .padding()
                    .background(randomColor)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            })
            
            Button {
                thumbsup.toggle()
            } label: {
                Circle()
                    .fill(.orange)
                    .frame(width: 170, height: 170)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: getThumbsIcon())
                            .foregroundColor(.white)
                            .font(.system(size: 60, weight: .bold) )
                    }
                    .padding()
            }
        }
    }
    
    private func getThumbsIcon() -> String {
        thumbsup ? "hand.thumbsup.fill" : "hand.thumbsdown.fill"
    }
}

struct ButtonViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViewExample()
    }
}
