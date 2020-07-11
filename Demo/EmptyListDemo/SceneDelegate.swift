//
//  SceneDelegate.swift
//  EmptyListDemo
//
//  Created by Anton Paliakou on 7/11/20.
//  Copyright © 2020 AntonPaliakou. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    private let countries: [Country] = [
        Country(id: UUID(), name: "Poland"),
        Country(id: UUID(), name: "Germany"),
        Country(id: UUID(), name: "Belarus"),
        Country(id: UUID(), name: "Italy"),
        Country(id: UUID(), name: "Lithuania"),
        Country(id: UUID(), name: "Czech Republic"),
        Country(id: UUID(), name: "Finland"),
        Country(id: UUID(), name: "Belgium"),
        Country(id: UUID(), name: "France"),
        Country(id: UUID(), name: "Bulgaria"),
        Country(id: UUID(), name: "Netherlands"),
        Country(id: UUID(), name: "Switzerland"),
        Country(id: UUID(), name: "United Kingdom")
    ]

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        let contentView = CountriesView(countries: countries)

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

