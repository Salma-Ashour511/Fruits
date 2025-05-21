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
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List(fruits.shuffled()) { fruit in
                FruitRowView(fruit: fruit)
                    .padding(.vertical, 4)
            }
            .navigationTitle("Fruits")
        }
    }
}

// MARK: - BODY
#Preview {
    ContentView(fruits: fruitsData)
}
