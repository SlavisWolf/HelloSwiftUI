//
//  ObjectsViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct ObjectsViewExample: View {
    
    @State private var counter = Int.zero
    
    var body: some View {
        VStack(spacing: 18) {
            
            Text("Counter: \(counter)")
            Button("Increase") {
                counter += 1
            }
            
            VideoList()
            
            Spacer()
        }
        .padding(.top, 20)
    }
}

struct ObjectsViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ObjectsViewExample()
    }
}



fileprivate struct VideoList: View {
    
   @StateObject private var videosModel = VideoViewModel()
    // ObservableObject reinit the variable when VideosList is launch again when in ObjectsViewExample we change the counter var and redraw the view
    
    var body: some View {
        
        NavigationStack {
            
            List(videosModel.videos, id: \.self) { video in
                Text(video)
            }
            
            .navigationTitle(Text("Videos"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Add", action: videosModel.addMoreTopics)
                }
            }
        }
    }
    
    
}

fileprivate class VideoViewModel: ObservableObject {
    
    @Published var videos: [String] = []
    
    init() {
        videos = [
            "British pronunciation",
            "Learn SwiftUI",
            "Best ways to improve english listening"]
    }
    
    func addMoreTopics() {
        videos.append(contentsOf: ["Learn CI/CD", "Learn Git"])
    }
    
}
