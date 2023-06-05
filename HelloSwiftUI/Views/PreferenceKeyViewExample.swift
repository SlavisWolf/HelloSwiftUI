//
//  PreferenceKeyViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 5/6/23.
//

import SwiftUI

fileprivate struct CustomTitleKey: PreferenceKey {
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        //value = nextValue() //Only with this the valid value will be the last
        if value.isEmpty {
            value = nextValue()
        }
    }
}

fileprivate struct CustomNavigationTitle: ViewModifier {
    
    private let title: String
    
    init(title: String) {
        self.title = title
    }
    
    func body(content: Content) -> some View {
        content
            .preference(key: CustomTitleKey.self, value: title)
    }
}

fileprivate extension View {
    
    func customNavigationTitle(_ title: String) -> some View {
        self.modifier(CustomNavigationTitle(title: title) )
    }
}


fileprivate struct CustomNavigationView<Content: View>: View {
    
    @State private var title = "Navigation View"
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .bold()
                .padding()
            
            GeometryReader { proxy in
                ScrollView {
                    content
                }
            }
        }
        .padding()
        .onPreferenceChange(CustomTitleKey.self) { newValue in
            print("Value: \(newValue)")
            title = newValue
        }
    }
    
    
}

struct PreferenceKeyViewExample: View {
    var body: some View {
        
        CustomNavigationView {
            VStack {
                Text("Preference key example 🚀")
                    .padding()
                    .customNavigationTitle("Navigation Title 1")
                    //.navigationTitle("Title 1")
                
                Text("Study a lot 📚")
                    .padding()
                    .customNavigationTitle("Navigation Title 1")
                    //.navigationTitle("Title 2")
            }
        }
    }
}

struct PreferenceKeyViewExample_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKeyViewExample()
    }
}
