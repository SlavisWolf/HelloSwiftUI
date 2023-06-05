//
//  ConfirmationDialogViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 4/6/23.
//

import SwiftUI

struct ConfirmationDialogViewExample: View {
    
    @State var actionSheetShow = false
    
    var body: some View {
        VStack {
            Text("Click in the circle to open an action sheet")
                .padding()
            Button {
                actionSheetShow = true
            } label: {
                
                ZStack(alignment: .center) {
                    
                    Circle()
                        .fill(.yellow)
                        .frame(width: 200)

                    VStack(alignment: .trailing, spacing: 20) {

                        Rectangle()
                            .fill(.purple)
                        .frame(width: 80, height: 40)
                        .padding(.top, 30)

                        Spacer()

                        Rectangle()
                            .fill(.purple)
                        .frame(width: 80, height: 40)
                        .padding(.bottom, 30)
                    }
                    .frame(height: 200)
                }
            }
        }
        .confirmationDialog("Choose an option", isPresented: $actionSheetShow, titleVisibility: .visible) {
            
            Button("Option 3", role: .cancel) {
                print("Option 3")
            }
            
            Button("Option 1", role: .none) {
                print("Option 1")
            }

            Button("Option 2", role: .destructive) {
                print("Option 2")
            }
        } message: {
            Text("You must choose an option to show a diferent message in the log")
        }
    }
}

struct ConfirmationDialogViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialogViewExample()
    }
}
