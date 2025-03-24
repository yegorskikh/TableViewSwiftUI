//
//  SecondTabView.swift
//  TableViewSwiftUI
//
//  Created by Yegor Gorskikh on 24.03.2025.
//

import SwiftUI

struct SecondTabView: View {
    @Binding var selectedItem: String?
    let items = ["Apple", "Banana", "Orange", "Peach"]
    
    var body: some View {
        NavigationView {
            List(items, id: \.self) { item in
                NavigationLink(
                    destination: DetailView(item: item),
                    tag: item,
                    selection: $selectedItem
                ) {
                    Text(item)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

// MARK: - Экран детализации
struct DetailView: View {
    let item: String
    
    var body: some View {
        Text("Detail for \(item)")
            .font(.largeTitle)
            .padding()
    }
}
