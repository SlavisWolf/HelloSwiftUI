//
//  SceneStorageViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús Ibáñez Barja on 05/06/2023.
//

import SwiftUI

struct SceneStorageViewExample: View {
    
    // These don't use UserDefaults for save the data
    @SceneStorage("tweetMessageKey") private var message = ""
    @SceneStorage("tweetBestHourToggleKey") private var bestHour = false
    
    //This saves the data when the user doesn't close the application, to test it, you must open the app, go to background tap on the stop button in xcode and relaunch it, if you launch it again without going background the data won't be saved
    
    var body: some View {
        Form {
            TextEditor(text: $message )
                .frame(width: 300, height: 300)
            Toggle("Publish at the best hour", isOn: $bestHour )
                .padding()
            
            HStack {
                Spacer()
                Button("Publish") {
                    
                }
                Spacer()
            }
        }
    }
}

struct SceneStorageViewExample_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageViewExample()
    }
}
