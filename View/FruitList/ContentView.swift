//
//  ContentView.swift
//  Fruits
//
//  Created by V17SAshour1 on 20/05/2025.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSetting: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List(fruits.shuffled()) { fruit in
                NavigationLink {
                    FruitDetailsView(fruit: fruit)
                } label: {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSetting = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    .sheet(isPresented: $isShowingSetting, content: {
                        SettingsView()
                    })
            
            )
        }
        
    }
}

// MARK: - BODY
#Preview {
    ContentView(fruits: fruitsData)
}
