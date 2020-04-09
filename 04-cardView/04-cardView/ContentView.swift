//
//  ContentView.swift
//  04-cardView
//
//  Created by Manuel Rodriguez Alonso on 09/04/2020.
//  Copyright © 2020 Manuel Rodriguez Alonso. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
      VStack (){
      Image("logo")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(height: 120)
          
      Text("Manuel Rodriguez Alonso")
          .fontWeight(.bold)
          .font(.largeTitle)
          .multilineTextAlignment(.leading)
          .padding(.leading)
      Text("Gestor de Viajes")
      .multilineTextAlignment(.leading)
      .padding(.leading)
      Text ("Esto es una cabecera de aplicacion")
      .multilineTextAlignment(.leading)
      .padding(.leading)
        
        ScrollView( .horizontal, showsIndicators: false)
            {
                 firstRow()
                   }
        
        ScrollView(.horizontal)
        {
            secondRow()
            }
        
        ScrollView(.horizontal)
        {
                    thirdRow()
           }
        }
        
    

    }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
