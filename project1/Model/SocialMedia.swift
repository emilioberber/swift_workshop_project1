//
//  SocialMedia.swift
//  project1
//
//  Created by Gdaalumno on 06/12/23.
//

import Foundation

struct SocialMedia: Identifiable {
    var id = UUID().uuidString // FORMA DE CREAR INDENTIFICABLE PARA DESPUÈS LLAMARL EN EL ForEach
    var media: String
    var url: String
    var iconName: String
}

extension SocialMedia {
    static let mySocialMedia = [
        SocialMedia(media: "GitHub", url: "https://github.com/emilioberber", iconName: "github"),
        SocialMedia(media: "Instagram", url: "https://instagram.com/emilioberber", iconName: "instagram"),
        SocialMedia(media: "LinkedIn", url: "https://www.linkedin.com/in/emilio-berber/", iconName: "linkedin")
    ]
}
