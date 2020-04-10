//
//  botones.swift
//  05-button
//
//  Created by Manuel Rodriguez Alonso on 10/04/2020.
//  Copyright © 2020 Manuel Rodriguez Alonso. All rights reserved.
//

import SwiftUI

struct botones: View {
    var body: some View {
        
        Button(action: {
        print("Basuraaaaaaa")
            
        }){
            HStack {
                
                Image(systemName: "trash")
                    Text("Eliminar")
                        .fontWeight(.bold)
                 }
        
                
        }.buttonStyle(mainButtonStyle())
        
        
    }
}

struct botones_Previews: PreviewProvider {
    static var previews: some View {
        botones()
    }
}


struct mainButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            
       .frame(width: 100, height: 100)
       .foregroundColor(Color.white)
       .background(Color.red)
       .clipShape(Circle())
        
            .rotationEffect(configuration.isPressed ? .degrees (90) : .degrees(0))
            
        
        
    }
}
