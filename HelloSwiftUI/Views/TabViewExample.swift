//
//  TabViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct TabViewExample: View {
    
    var body: some View {
        
        TabView {
            
            Rectangle()
                .padding()
                .foregroundColor(.cyan)
            
            Rectangle()
                .padding()
                .foregroundColor(.indigo)
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
        }
        .tint(.green)
        .frame(height: 400)
        .tabViewStyle(.page)
        .onAppear {
            UIPageControl.appearance().currentPageIndicatorTintColor = .black
            UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
        }
        .onDisappear {
            UIPageControl.appearance().currentPageIndicatorTintColor = nil
            UIPageControl.appearance().pageIndicatorTintColor = nil
        }
    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}



fileprivate struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .padding()
                .foregroundColor(.red)
            Text("Hello world")
        }
    }
}

fileprivate struct ProfileView: View {
    var body: some View {
        Text("You're in profile")
    }
}
