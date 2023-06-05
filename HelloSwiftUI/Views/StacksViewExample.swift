//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 1/6/23.
//

import SwiftUI

struct StacksViewExample: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Following")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                Text("Suggested chanels")
                    .foregroundColor(.gray)
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 118, height: 68)
                    VStack(alignment: .leading) {
                        HStack {
                            Circle()
                                .frame(width: 18.0, height: 18.0)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            
                            Text("Username")
                                .font(.headline)
                        }
                        Text("programming streaming...")
                            .foregroundColor(Color.gray)
                        Text(/*@START_MENU_TOKEN@*/"Just shatting"/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.gray)
                    }
                }
            }
            Text("Subscribe to my channel!!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
                .underline()
                .background(Color.black)
                .rotationEffect(Angle(degrees: -20))
        }
    }
}

struct StacksViewExample_Previews: PreviewProvider {
    static var previews: some View {
        StacksViewExample()
    }
}
