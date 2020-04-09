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
        
            
            HeaderView(titleHeading: "Elige tu itinerario", subtitleHeading: "de aprendizaje")
            
            
            ZStack(){
                
                PricingView(title: "Básico", subtitle:"Mis mejores Vacaciones" , date: "Enero 2020", textColor: .white, backgroundColor: .green, icon: "star")
            
             
                
                PricingView(title: "Album", subtitle: "Mis peores Vacaciones" , date: "Marzo 2020", textColor: .white, backgroundColor: .gray, icon: "timer",  textLabel: "El mejor para empezar")
                .offset(x: 0, y: 130)
               
                
           
          
                PricingView(title: "Definitivo", subtitle: "Todos los cursos Online", date: "99.99€", textColor: .white, backgroundColor: .blue, icon: "lightbulb", textLabel: "Conviertete en un Master del Universo")
            .offset(x: 0, y: 280)
             
                    
            }
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    
    var titleHeading:String
    var subtitleHeading: String
    
    var body: some View {
        HStack {
            
            VStack(alignment: .leading){
                
                Text(titleHeading)
                    .fontWeight(.black)
                    .font(.system(.largeTitle, design: .rounded))
                
                
                Text(subtitleHeading)
                    .fontWeight(.black)
                    .font(.system(.largeTitle, design: .rounded))
                
                
            }
            Spacer()
            
        }.padding()
    }
}

struct PricingView: View {
    
    var title:String
    var subtitle: String
    var date: String
    var textColor: Color
    var backgroundColor: Color
    var icon: String?
    var textLabel: String?
    
    var body: some View {
        VStack{
            
            
            textLabel.map({
                Text($0)
                .font(.system(.caption, design: .rounded)).foregroundColor(.white).fontWeight(.black)
                .padding(12)
                .background(Color (.orange))
                .cornerRadius(20)
                
                
            })
            icon.map({
                Image(systemName: $0)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })
            
            
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
