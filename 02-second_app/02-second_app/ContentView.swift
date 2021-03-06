//
//  ContentView.swift
//  02-second_app
//
//  Created by Manuel Rodriguez Alonso on 07/04/2020.
//  Copyright © 2020 Manuel Rodriguez Alonso. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Image("skyline")
            .resizable()
         //   .edgesIgnoringSafeArea(.all)
            
        //.scaledToFill()
            
            .aspectRatio(contentMode: .fill)
            .frame(width: 300)
          //  .clipped()
            .clipShape(Capsule())
            .opacity(0.5)
        .overlay(
          /*  Text("Hola Corazon de melon y sandia que no te quiere ni tu tia que es mas alta que Mafalda")
               .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .font(.system(.headline, design: .rounded))
                .foregroundColor(.white)
                .padding()
                .background(Color.gray)
                .cornerRadius(10)
                .opacity(0.7)
                .padding(),
                alignment: .bottom */
            Capsule()
                .foregroundColor(.gray)
                .opacity(0.3)
            .overlay(
            Text ("Hola a todos")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 350)
                .padding()
                
                .overlay(
                    Image("logo")
                    .resizable()
                 //   .frame(width: 150, height: 250)
                        .aspectRatio(contentMode: .fit)
                    .clipShape(Circle()),
                    alignment: .topTrailing
                    
                    
                    
        
                    
                    
                    
                )
            )
                
            
        )
        
        
        
        
        
        
            
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
