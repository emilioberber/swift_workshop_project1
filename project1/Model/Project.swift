//
//  Project.swift
//  project1
//
//  Created by Gdaalumno on 06/12/23.
//

import Foundation

struct Project: Identifiable {
    let id: String = UUID().uuidString
    var title: String
    var description: String
    var rating: Float
    var photos: [String]
}

extension Project {
    static let myProjects = [
        Project(title: "MyProfile App SwiftUI",
                description: "Creating my profile in an app",
                rating: 5,
                photos: []),
        Project(title: "FoodBank App Android",
                description: "Creating an app for FoodBank about donations",
                rating: 5,
                photos: []),
        Project(title: "Vet App React Native",
                description: "Creating an app for a vet store to know all the pets registered",
                rating: 3,
                photos: [])
    ]
}
