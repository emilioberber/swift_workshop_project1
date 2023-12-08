//
//  Person.swift
//  project1
//
//  Created by Gdaalumno on 06/12/23.
//

import Foundation

struct Person {
    var name: String
    var profilepic: String
    var hobbies: [String]
    var projects: [Project]
    var socialMedia: [SocialMedia]
    var photos: [String]
}

extension Person {
    static let myProfile = Person(name: "Emilio Berber",
                                  profilepic: "https://i.postimg.cc/VLrw3kzY/108374590.jpg",
                                  hobbies: ["Developing apps", "Playing tennis", "Watching movies", "Hanging out"],
                                  projects: Project.myProjects,
                                  socialMedia: SocialMedia.mySocialMedia,
                                  photos: [])

}
