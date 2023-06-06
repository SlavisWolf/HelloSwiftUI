//
//  RootView.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús Ibáñez Barja on 06/06/2023.
//

import SwiftUI

fileprivate struct RootViewCellModel {
    
    typealias Destination = View
    
    let visibleText: String
    let destination: AnyView
}

fileprivate let examples: [RootViewCellModel] = [
    RootViewCellModel(visibleText: "Stacks view example", destination: AnyView(StacksViewExample() ) ),
    RootViewCellModel(visibleText: "Image view example", destination: AnyView(ImageViewExample() ) ),
    RootViewCellModel(visibleText: "Symbols example", destination: AnyView(SymbolsExample() ) ),
    RootViewCellModel(visibleText: "State example", destination: AnyView(StateExample() ) ),
    RootViewCellModel(visibleText: "Label view example", destination: AnyView(LabelViewExample() ) ),
    RootViewCellModel(visibleText: "Button view example", destination: AnyView(ButtonViewExample() ) ),
    RootViewCellModel(visibleText: "Textfield view example", destination: AnyView(TextfieldViewExample() ) ),
    RootViewCellModel(visibleText: "Text view example", destination: AnyView(TextViewExample() ) ),
    RootViewCellModel(visibleText: "Text editor view example", destination: AnyView(TextEditorViewExample() ) ),
    RootViewCellModel(visibleText: "Pickers view example", destination: AnyView(PickersViewExample() ) ),
    RootViewCellModel(visibleText: "Progress view example", destination: AnyView(ProgressViewExample() ) ),
    RootViewCellModel(visibleText: "Link view example", destination: AnyView(LinkViewExample() ) ),
    RootViewCellModel(visibleText: "Toggle view example", destination: AnyView(ToggleViewExample() ) ),
    RootViewCellModel(visibleText: "Stepper view example", destination: AnyView(StepperViewExample() ) ),
    RootViewCellModel(visibleText: "Slider view example", destination: AnyView(SliderViewExample() ) ),
    RootViewCellModel(visibleText: "Lazy grid view example", destination: AnyView(LazyGridViewExample() ) ),
    RootViewCellModel(visibleText: "Form view example", destination: AnyView(FormViewExample() ) ),
    RootViewCellModel(visibleText: "List view example", destination: AnyView(ListViewExample() ) ),
    RootViewCellModel(visibleText: "Navigation stack view example", destination: AnyView(NavigationStackViewExample() ) ),
    RootViewCellModel(visibleText: "Tab view example", destination: AnyView(TabViewExample() ) ),
    RootViewCellModel(visibleText: "Modal view example", destination: AnyView(ModalsViewExample() ) ),
    RootViewCellModel(visibleText: "Alert view example", destination: AnyView(AlertViewExample() ) ),
    RootViewCellModel(visibleText: "Confirmation dialog example", destination: AnyView(ConfirmationDialogViewExample() ) ),
    RootViewCellModel(visibleText: "Context menu example", destination: AnyView(ContextMenuViewExample() ) ),
    RootViewCellModel(visibleText: "Tap gesture example", destination: AnyView(TapGestureViewExample() ) ),
    RootViewCellModel(visibleText: "Drag gesture example", destination: AnyView(DragGestureViewExample() ) ),
    RootViewCellModel(visibleText: "Binding example", destination: AnyView(BindingViewExample() ) ),
    RootViewCellModel(visibleText: "Objects example", destination: AnyView(ObjectsViewExample() ) ),
    RootViewCellModel(visibleText: "Enviroment object example", destination: AnyView(EnviromentObjectViewExample() ) ),
    RootViewCellModel(visibleText: "App storage example", destination: AnyView(AppStorageViewExample() ) ),
    RootViewCellModel(visibleText: "Scene storage example", destination: AnyView(SceneStorageViewExample() ) ),
    RootViewCellModel(visibleText: "Async image view example", destination: AnyView(AsyncImageViewExample() ) ),
    RootViewCellModel(visibleText: "Swipe resfreshable example", destination: AnyView(SwipeResfreshableViewExample() ) ),
    RootViewCellModel(visibleText: "Geometry reader view example", destination: AnyView(GeometryReaderViewExample() ) ),
    RootViewCellModel(visibleText: "Geometry reader Stacks", destination: AnyView(GeometryReaderStacksViewExample() ) ),
    RootViewCellModel(visibleText: "Geometry reader scroll example", destination: AnyView(GeometryReaderScrollViewExample() ) ),
    RootViewCellModel(visibleText: "View modifier example", destination: AnyView(ViewModifierViewExample() ) ),
    RootViewCellModel(visibleText: "Preference key example", destination: AnyView(PreferenceKeyViewExample() ) ),
    RootViewCellModel(visibleText: "Redux architecture", destination: AnyView(ReduxViewExample() ) ),
    RootViewCellModel(visibleText: "Redacted example", destination: AnyView(RedactedViewExample() ) ),
    RootViewCellModel(visibleText: "Font with example", destination: AnyView(FontWithViewExample() ) )
]


struct RootView: View {
    
    var body: some View {
        
        NavigationStack {
            
            List {
                ForEach(examples, id: \.visibleText) { item in
                    
                    Text(item.visibleText)
                    
                        .foregroundColor(.white)
                        .bold()
                        .background(NavigationLink("", destination: item.destination).opacity(0.0))
                        .padding(EdgeInsets(top: 26,
                                            leading: 16,
                                            bottom: 26,
                                            trailing: 16))
                        
                        .background(.cyan)
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 3, y: 3)
                        .frame(maxWidth: .infinity)
                        .padding(.top, 20)
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Hello SwiftUI")
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
