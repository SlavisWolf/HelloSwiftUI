//
//  TextViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct TextViewExample: View {
    var body: some View {
        
        VStack {
            
            Text("I need a large paragraph for this text because I need to write some lines and fill space in the view to see a multiline paragraph! The beauty of the world is the esence of life, it sounds very hippie 😂")
                .font(.title)
                .underline()
                .rotation3DEffect(.degrees(55), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .gray, radius: 2, x: 0, y: 10)
                .lineLimit(nil)
                .lineSpacing(10)
                .padding()
            
            Spacer(minLength: 10)
            
            Text(Date.now, style: .date)
            Text(Date.now, style: .timer)
            Text(Date.now.addingTimeInterval(3600), style: .timer)
            Text(Date.now, style: .time)
            Spacer()
            (Text("I am a foreigner")
                .foregroundColor(.yellow)
            + Text(" alone in the darkness")
                .foregroundColor(.orange)
                .bold()
            + Text(" that enjoy doing simple things in his life")
                .foregroundColor(.red)
            + Text(" so respect my lifestyle!")
                .foregroundColor(.green)
                .underline()
            )
            .padding()
            .border(Color.blue, width: 1.3)
            
        }
        
    }
}

struct TextViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TextViewExample()
    }
}
