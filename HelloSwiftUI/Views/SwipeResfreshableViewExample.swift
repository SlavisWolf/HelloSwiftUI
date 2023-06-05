//
//  SwipeResfreshableViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús Ibáñez Barja on 05/06/2023.
//

import SwiftUI

fileprivate struct Device {
    let name: String
    let imageName: String
}

fileprivate let devices: [Device] =  [
    
    Device(name: "iPhone", imageName: "iphone"),
    Device(name: "iPad", imageName: "ipad"),
    Device(name: "pc", imageName: "pc"),
    Device(name: "4k", imageName: "4k.tv"),
    Device(name: "iPod", imageName: "ipod"),
    Device(name: "Laptop", imageName: "laptopcomputer")
]


struct SwipeResfreshableViewExample: View {
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(devices, id: \.name) { device in
                    Label(device.name, systemImage: device.imageName)
                        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                            Button {
                                print("Favourite: \(device.name)")
                            } label: {
                                //This will show only the image, but the text of the label is still used for VoiceOver
                                Label("Favourite", systemImage: "star.fill")
                                    .labelStyle(.iconOnly)
                            }
                            .tint(.yellow)
                            
                            Button {
                                print("Share: \(device.name)")
                            } label: {
                                Label("Share", systemImage: "square.and.arrow.up")
                                    .labelStyle(.iconOnly)
                            }
                            .tint(.blue)
                        }
                    
                        .swipeActions(edge: .leading) {
                            Button {
                                print("Delete: \(device.name)")
                            } label: {
                                Label("Delete", systemImage: "trash.fill")
                                    .labelStyle(.iconOnly)
                            }
                            .tint(.red)
                        }
                }
            }
            .refreshable {
                print("Updating information....")
            }
        }
    }
}

struct SwipeResfreshableViewExample_Previews: PreviewProvider {
    static var previews: some View {
        SwipeResfreshableViewExample()
    }
}
