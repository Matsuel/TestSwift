//
//  ContentView.swift
//  TestSwift
//
//  Created by Matheo Lang on 24/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .contextMenu(menuItems: {
                    Button("Cut", action: { print("Cut")})
                    Button("Copy", action: { print("Copy")})
                        Button("Paste", action: { print("Paste")})
                }, preview: {
                    // Une vue de preview optionnelle
                    Text("Aperçu")
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
