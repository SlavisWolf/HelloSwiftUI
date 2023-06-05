//
//  EnviromentObjectViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

fileprivate final class ViewModel: ObservableObject {
    
    @Published var counter: Int = 0
    
    var toString: String { String(counter) }
    
}

struct EnviromentObjectViewExample: View {
    
    @StateObject fileprivate var model = ViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(model.toString)
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            Text("View 1")
                .font(.title3)
                .foregroundColor(.gray)
                .padding()
            
            ViewTwo()
        }
        // If you don't add this line and another view ask for this var with a @EnvironmentObject property wrapper the aplication will crash, be careful injecting this kind of property wrappers
        .environmentObject(model)
    }
}

struct EnviromentObjectViewExample_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObjectViewExample()
    }
}


fileprivate struct ViewTwo: View {
    
    //@ObservedObject fileprivate var model: ViewModel
    
    var body: some View {
        VStack {
            Text("View 2")
                .foregroundColor(.mint)
                .padding()
            ViewThree()
                .padding()
        }
    }
}

fileprivate struct ViewThree: View {
    
    @EnvironmentObject fileprivate var model: ViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("View 3 counter: \(model.toString)")
                .foregroundColor(.red)
            
            Button("Increase counter") {
                model.counter += 1
            }
        }
    }
}
