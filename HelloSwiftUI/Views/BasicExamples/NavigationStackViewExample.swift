//
//  NavigationViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct NavigationStackViewExample: View {
    var body: some View {
        
        NavigationStack {
            
            List {
                NavigationLink("Option menu 1", destination: Text("You've navigated correctly") )
                NavigationLink("Option menu 2", destination: Button("Tap me", action: { print("You have tapped in another screen button!!") } ) )
                
                NavigationLink("Option menu 3") {
                    Rectangle()
                        .fill(.yellow)
                        .frame(width: 300, height: 150)
                        .shadow(color: .gray, radius: 10, x: 2, y: 8)
                        .overlay(alignment: .center, content: {
                            Circle()
                                .fill(.orange)
                                .frame(width: 90)
                        })
                }
                
                NavigationLink("Option menu 4") {
                    Rectangle()
                        .fill(.red)
                        .scaledToFill()
                        .overlay(alignment: .center) {
                            Text("I'm white!")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .bold()
                                .italic()
                                .underline(true, color: .yellow)
                        }
                }
            }
            
            .toolbar {
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("Settings") {
                        print("Settings button clicked")
                    }
                    
                    Button("Done") {
                        print("Done clicked")
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Leading") {
                        print("Clicked on leading button")
                    }
                }
            }
            
            .toolbarTitleMenu() {
                Text("Menu 1")
                Text("Menu 2")
                Text("Menu 3")
            }

            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(.visible, for: .navigationBar)
        }
    }
}

struct  NavigationStackViewExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackViewExample()
    }
}
