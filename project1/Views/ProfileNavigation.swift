//
//  ProfileNavigation.swift
//  project1
//
//  Created by Gdaalumno on 07/12/23.
//
// This is where all the navigation is created

import SwiftUI

struct ProfileNavigation: View {
    let profile: Person
    
    var body: some View {
        NavigationView {
            ProfileDescription(profile: profile)
                .navigationTitle("My Profile")
        }
    }
}

struct ProfileNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNavigation(profile: Person.myProfile)
    }
}
