//
//  ListViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

fileprivate struct Device {
    let title: String
    let imageName: String
}

fileprivate let house = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac pro", imageName: "macpro.gen3"),
    Device(title: "Displays", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv")
]

fileprivate let work = [
    Device(title: "iPhone", imageName: "iphone"),
    Device(title: "iPad", imageName: "ipad"),
    Device(title: "Airpods", imageName: "airpods"),
    Device(title: "Apple Watch", imageName: "applewatch")
]

struct ListViewExample: View {
    var body: some View {
        
        List {
            Section {
                ForEach(house, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                }
            } header: {
                Text("Home")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .bold()
                    .padding(.leading, -18)
            }

            Section {
                ForEach(work, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                }
            } header: {
                Text("Work")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .bold()
                    .padding(.leading, -18)
            } footer: {
                HStack {
                    Spacer()
                    Circle()
                        .fill(.gray)
                    .frame(width: 36)
                    .overlay(alignment: .center) {
                        Image(systemName: "apple.logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14)
                            .foregroundColor(.white)
                    }
                    Text("Apple products license")
                        .foregroundColor(.gray)
                        .font(.caption2)
                    Spacer()
                }
                .padding()
            }
        }
        .listStyle(.sidebar)
    }
}

struct ListViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ListViewExample()
    }
}
