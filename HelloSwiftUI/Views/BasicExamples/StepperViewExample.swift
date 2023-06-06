//
//  StepperViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct StepperViewExample: View {
    
    @State var iPhoneCounter = 0
    @State var samsungCounter = 0
    
    var body: some View {
        Form {
            Stepper("iPhone \(iPhoneCounter)", value: $iPhoneCounter, in: 0...6, step: 2)
            
            Stepper("Samsung \(samsungCounter)") {
                samsungCounter += 1
                print("[Increment] Number: \(samsungCounter)")
            } onDecrement: {
                samsungCounter -= 1
                print("[Decrement] Number: \(samsungCounter)")
            }
        }
    }
}

struct StepperViewExample_Previews: PreviewProvider {
    static var previews: some View {
        StepperViewExample()
    }
}
