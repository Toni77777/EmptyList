//
//  ContentView.swift
//  EmptyListDemo
//
//  Created by Anton Paliakou on 7/11/20.
//  Copyright © 2020 AntonPaliakou. All rights reserved.
//

import SwiftUI
import EmptyList

struct CountriesView: View {
    
    let countries: [Country]
    
    var body: some View {
        EmptyList(countries, listRowView: { country in
            Text(country.name)
        }, emptyListView: {
            Text("No countries") // View displayed when the items collection isEmpty
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    
    private static let countries: [Country] = [
        Country(id: UUID(), name: "Poland"),
        Country(id: UUID(), name: "Germany")
    ]
    
    static var previews: some View {
        CountriesView(countries: countries)
    }
}
