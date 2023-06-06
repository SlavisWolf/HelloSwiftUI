//
//  DatePickerViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús on 3/6/23.
//

import SwiftUI

struct PickersViewExample: View {
    
    @State var selectedDate = Date.now
    @State var color: Color = .clear
    
    var body: some View {
        Form {
            DatePicker("select a date",
                       selection: $selectedDate,
                       in: Date()...,
                       displayedComponents: .date)
            
            Text(selectedDate, style: .date)
                .bold()
            
            HStack {
                ColorPicker("Pick a color", selection: $color)
                if let cgColor = color.cgColor, cgColor.alpha > 0 {
                    Spacer()
                    Rectangle()
                        .fill(color)
                        .cornerRadius(25)
                        .padding(.leading, 20)
                }
            }
        }
    }
}

struct PickersViewExample_Previews: PreviewProvider {
    static var previews: some View {
        PickersViewExample()
    }
}
