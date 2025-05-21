//
//  Fruit.swift
//  Fruits
//
//  Created by V17SAshour1 on 20/05/2025.
//
import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
    
}
