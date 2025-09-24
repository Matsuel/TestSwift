//
//  ContentView.swift
//  TestSwift
//
//  Created by Matheo Lang on 24/09/2025.
//

import SwiftUI

struct ContentView: View {
    let cut: @MainActor () -> Void = {
        print("Cut")
    }
    
    @MainActor func printAction(actionType: String) {
        print(actionType)
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .contextMenu(menuItems: {
                    Button("Cut", action: cut)
                    Button("Copy") { printAction(actionType: "Copy") }
                    Button("Paste") { printAction(actionType: "Paste")}
                })
            Button("Sign In") {
                print("KK")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
