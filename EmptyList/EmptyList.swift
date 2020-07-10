//
//  EmptyList.swift
//  EmptyList
//
//  Created by Anton Paliakou on 7/10/20.
//  Copyright © 2020 Anton Paliakou. All rights reserved.
//

import SwiftUI

public struct EmptyList<Items: RandomAccessCollection, ListRowView: View, EmptyListView: View>: View where Items.Element: Identifiable {
    
    private var items: Items
    private var listRowView: (Items.Element) -> ListRowView
    private let emptyListView: () -> EmptyListView
    
    /// - Parameters:
    ///   - items: Source data for List. Item must implement Identifiable protocol
    ///   - listRowView: View displayed for each source Item
    ///   - emptyListView: View displayed when the items collection isEmpty
    public init(_ items: Items,
         @ViewBuilder listRowView: @escaping (Items.Element) -> ListRowView,
         @ViewBuilder emptyListView: @escaping () -> EmptyListView) {
        self.items = items
        self.listRowView = listRowView
        self.emptyListView = emptyListView

    }
    
    public var body: some View {
        Group {
            if !items.isEmpty {
                List {
                    ForEach(items) { item in
                        self.listRowView(item)
                    }
                }
            } else {
                emptyListView()
            }
        }
    }
}
