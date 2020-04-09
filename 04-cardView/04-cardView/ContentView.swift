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
        
        
        
        
        VStack (alignment: .leading){
            
         /*   var imageCard String
            var title String
            var subtitleString
            var author String
            var icon String
            var price String
 */
 
            Image("balloon")
            .resizable()
                .frame(width: 150, height: 100).scaledToFit()
            
            Text("title")
                
            Text("subtitle")
            Text("author")
            Image(systemName: "star")
            Text("price")
            
        }.padding()
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
