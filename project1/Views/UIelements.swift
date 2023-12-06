//
//  UIelements.swift
//  project1
//
//  Created by Gdaalumno on 05/12/23.
//

import SwiftUI // librerìa UI para interface

struct UIelements: View {
    
    @State private var isToggleOn = true
    @State private var texto = ""
    
    var body: some View {
        ScrollView {
            Text("Emilio")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.green)
            Text("I like Swift!")
            Circle()
                .frame(width: 50, height: 50)
            Rectangle()
                .frame(height: 40)
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 100)
            Toggle(isOn: $isToggleOn) {
                Text("In class")
            }
            .padding()
            TextField("Cuadro de texto", text: $texto)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .opacity(0.2)
                )
            
        }
        .padding()
    }
}

struct UIelements_Previews: PreviewProvider {
    static var previews: some View {
        UIelements()
    }
}
