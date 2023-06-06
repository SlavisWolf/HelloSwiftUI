//
//  LinkViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct LinkViewExample: View {
    var body: some View {
        
        
        VStack(spacing: 20) {
            Link("Go to youtube",
                 destination: URL(string: "https://www.youtube.com/")!)
            
            Link(destination: URL(string: UIApplication.openSettingsURLString)!) {
                Label("Settings", systemImage: "gear")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(12)
            }
        }
        
    }
}

struct LinkViewExample_Previews: PreviewProvider {
    static var previews: some View {
        LinkViewExample()
    }
}
