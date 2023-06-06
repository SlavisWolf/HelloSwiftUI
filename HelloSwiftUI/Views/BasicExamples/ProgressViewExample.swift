//
//  ProgressViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct ProgressViewExample: View {
    
    @State var showLoading = false
    @State var progress: Float = 0.0
    
    let totalProgress: Float = 1.0
    var progressReached: Bool { progress >= totalProgress }
    
    var body: some View {
        
        
        VStack {
            Button(showLoading ? "Hide loading" : "Show loading") {
                showLoading.toggle()
            }
            .padding()
            
            if showLoading {
                ProgressView("Loading...")
                    .scaleEffect(2.0)
                    .padding(.top, 40)
            }
            
            Spacer()
            
            Button("Increase progress") {
                progress += 0.1
            }
            
            .disabled(progressReached)
            .foregroundColor(.red.opacity(progressReached ? 0.3 : 1.0))
            .padding()
            
            ProgressView(value: progress, total: totalProgress) {}
            .padding(.horizontal, 60)
            .padding(.bottom, 60)
        }
    }
}

struct ProgressViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewExample()
    }
}
