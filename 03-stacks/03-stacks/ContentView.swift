//
//  ContentView.swift
//  03-stacks
//
//  Created by Manuel Rodriguez Alonso on 08/04/2020.
//  Copyright © 2020 Manuel Rodriguez Alonso. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            HStack{
                PricingView(title: "Album", subtitle:"Mis mejores Vacaciones" , date: "Enero 2020", textColor: .white, backgroundColor: .green)
                
                ZStack{
                PricingView(title: "Album", subtitle: "Mis peores Vacaciones" , date: "Marzo 2020", textColor: .white, backgroundColor: .gray)
                
                    Text("Mi album preferido")
                        .font(.system(.caption, design: .rounded)).foregroundColor(.white).fontWeight(.black)
                        .padding(8)
                        .background(Color (.orange))
                        .cornerRadius(60)
                        .offset(x: 0, y: -103)
                }
                }.padding(.horizontal)
           
          
            PricingView(title: "Definitivo", subtitle: "Todos los cursos Online", date: "99.99€", textColor: .white, backgroundColor: .blue).padding(.horizontal)
            
             Text("Conviertete en un master del  universo")
            .font(.system(.caption, design: .rounded)).foregroundColor(.white).fontWeight(.black)
            .padding(8)
            .background(Color (.orange))
            .cornerRadius(60)
            .offset(x: 0, y: -163)
            
            Image(systemName: "lightbulb" )
                .font(.largeTitle)
                .foregroundColor(.white)
            
            .offset(x: 0, y: -170)
                
           
            
            
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 15 ){
            
            Text("Mis Albumes")
                .fontWeight(.black)
                .font(.system(.largeTitle, design: .rounded))
            
            
            Text("de Fotos")
                .fontWeight(.black)
                .font(.system(.largeTitle, design: .rounded))
            
            
        }
    }
}

struct PricingView: View {
    
    var title:String
    var subtitle: String
    var date: String
    var textColor: Color
    var backgroundColor: Color
    
    
    var body: some View {
        VStack{
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(textColor)
            
            Text(date)
                .font(.system(size:35, weight:.heavy, design: .rounded))
                .foregroundColor(textColor)
            
            Text(subtitle)
                .font(.headline)
                .foregroundColor(textColor)
            
        }
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(30)
    }
}
