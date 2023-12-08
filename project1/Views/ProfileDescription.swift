//
//  ProfileDescription.swift
//  project1
//
//  Created by Gdaalumno on 07/12/23.
//

import SwiftUI

struct ProfileDescription: View {
    let profile: Person
    let columns =  Array(repeating: GridItem(.flexible()), count: 2) // de esta forma se define el acomodo del laxyvgrid de las columns
    
    var body: some View {
        ScrollView {
            
            // profile pic and name
            PersonProfilePicture(profilePictureUrl: profile.profilepic, name: profile.name)
            
            // hobbies
            LeadingAlignedText(text: "Hobbies")
                .font(.headline)
            
            LazyVGrid (columns: self.columns, content: {
                ForEach(profile.hobbies, id: \.hashValue){ hobby in
                    GroupBox {
                        Text(hobby)
                            .frame(maxWidth: .infinity)
                    }
                }
            })
            .padding(.horizontal)
            
            Divider() // linea horizontal para dividir secciones
            
            // projects
            LeadingAlignedText(text: "Projects")
                .font(.headline)
            
            LazyVGrid(columns: self.columns) {
                ForEach(profile.projects){ project in
                    NavigationLink{
                        ProjectDetails(project: project)
                    } label: {
                        GroupBox {
                            Text(project.title)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(.primary)
                        }
                    }
                
                }
            }
            .padding(.horizontal)
            
            Divider()
            
            LeadingAlignedText(text: "Last trip to NYC:")
                .font(.headline)
            
            PhotosCarousel(photosNames: profile.photos)
                .frame(height: 450)
            
        }
        
    }
}

// forma de crear componentes reusables, en este caso texto
struct LeadingAlignedText: View {
    let text: String
    
    var body: some View {
        HStack {
            Text(text)
            Spacer()
        }
        .padding()
    }
}

struct ProfileDescription_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileDescription(profile: Person.myProfile)
        }
        .preferredColorScheme(.light)
    }
}
