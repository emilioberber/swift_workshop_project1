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
        Project(title: "MyProfile App Swift",
                description: "Creating my profile in an app for iOS to show my hobbies and projects",
                rating: 5,
                photos: []),
        Project(title: "FoodBank App Android",
                description: "Creating an app for FoodBank about donations to obtain analytics of sales",
                rating: 5,
                photos: []),
        Project(title: "Vet App React Native",
                description: "Creating an app for a vet store to know all the pets registered",
                rating: 3,
                photos: []),
        Project(title: "GPS",
                description: "Creating best paths with two nodes origin and destination",
                rating: 4,
                photos: [])
    ]
}
