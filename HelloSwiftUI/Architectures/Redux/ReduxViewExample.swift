//
//  ReduxViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús Ibáñez Barja on 06/06/2023.
//

import SwiftUI

fileprivate enum AppAction {
    case loadNames
}

fileprivate struct AppState {
    var names = ["Default", "Values", "for", "Array"]
}


fileprivate func appReducer(action: AppAction, state: inout AppState) {
    
    switch action {
        
    case .loadNames:
        state.names.append(contentsOf: ["Redux",
                                        "Architecture",
                                        "Learning"])
    }
}

fileprivate class AppStore: ObservableObject {
    
    @Published private(set) var appState: AppState
    private let reducer: (AppAction, inout AppState) -> Void
    
    internal init(appState: AppState, reducer: @escaping (AppAction, inout AppState) -> Void) {
        self.appState = appState
        self.reducer = reducer
    }
    
    func reduce(action: AppAction) {
        reducer(action, &appState)
    }
    
}

struct ReduxViewExample: View {
    
    @StateObject fileprivate var store = AppStore(appState: AppState(), reducer: appReducer)
    
    var body: some View {
        NavigationStack {
            List(store.appState.names, id: \.self) { item in
                Text(item)
                    .font(.headline)
                    .padding()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add items") {
                        store.reduce(action: .loadNames)
                    }
                }
            }
            .navigationTitle("Redux names")
        }
    }
}

struct ReduxViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ReduxViewExample()
    }
}
