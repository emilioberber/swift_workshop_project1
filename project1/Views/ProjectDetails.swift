//
//  ProjectDetails.swift
//  project1
//
//  Created by Gdaalumno on 07/12/23.
//

import SwiftUI

struct ProjectDetails: View {
    let project: Project
    
    var body: some View {
        List{
            Text(project.description)
            Text(project.rating, format: .number) + Text(" / 5 rating")
        }
        .navigationTitle(project.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProjectDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProjectDetails(project: Project.myProjects[0])
        }
    }
}
