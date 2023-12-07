//
//  PersonProfilePicture.swift
//  project1
//
//  Created by Gdaalumno on 06/12/23.
//

import SwiftUI

struct PersonProfilePicture: View {
    let profilePictureUrl: String
    let name: String
    var pictureUrl: URL? {
        URL(string: profilePictureUrl)
    }
    
    var body: some View {
        ZStack (alignment: .bottom) {
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .clipShape(Circle())
                .overlay(Color.gray, in:
                            Circle()
                    .stroke(lineWidth: 5)
                         )
            Text(name)
                .font(.title)
                .padding(6)
                .background(Color(red: 0.557, green: 0.556, blue: 0.577), in:
                                RoundedRectangle(cornerRadius: 10))
        }
    }
}

//postimg.cc

struct PersonProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        PersonProfilePicture(profilePictureUrl: Person.myProfile.profilepic, name: Person.myProfile.name)
    }
}
