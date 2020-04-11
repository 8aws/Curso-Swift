//
//  ContentView.swift
//  06-statements_bindings
//
//  Created by Manuel Rodriguez Alonso on 10/04/2020.
//  Copyright © 2020 Manuel Rodriguez Alonso. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private var isPlaying = true
    var body: some View {
        
      
        
    
        
        Button (action: {
            print("playyyy")})
            {
            
            HStack {
                Image(systemName:isPlaying ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size: 100))
                    .foregroundColor(isPlaying ? .red : Color.blue)
                 
            }
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


