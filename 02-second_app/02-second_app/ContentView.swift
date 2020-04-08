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
        //    .edgesIgnoringSafeArea(.all)
            
        .scaledToFill()
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
