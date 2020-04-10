//
//  ContentView.swift
//  05-button
//
//  Created by Manuel Rodriguez Alonso on 09/04/2020.
//  Copyright © 2020 Manuel Rodriguez Alonso. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
           
            /*Button(action: {
                print("Boton pulsado")
            }) {
                
                Text("Soy un botón")
                    .font(.largeTitle)
                
                    
                    .padding(12)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                
                   
                    .padding(10)
                   // .border(Color.gray, width: 6)
                .overlay(RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.gray, lineWidth: 4))
            }
           } */
            
            
         /*   Button(action: {
            print("Creando...creando...")
                
            }){
                HStack {
                    Image(systemName: "square.and.pencil")
                        Text("Editar")
                            .fontWeight(.bold)
                         }
            }.buttonStyle(BasicButtonStyle())
           
            
            */
            
            
            Button(action: {
            print("Basuraaaaaaa")
                
            }){
                HStack {
                    
                    Image(systemName: "trash")
                        Text("Eliminar")
                            .fontWeight(.bold)
                    
                        
                        }
            
                    
            }.buttonStyle(BasicButtonStyle())
            
            
            /*
                Button(action: {
                print("Compartir love")
                    
                }){
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                            Text("Compartir")
                                .fontWeight(.bold)
                            
                            }
                }.buttonStyle(BasicButtonStyle())
 
 */
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}



struct BasicButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            
       // .frame(minWidth:0, maxWidth: .infinity)
        
            .padding()
          //  .background(LinearGradient(gradient: Gradient(colors: [Color("Dark Ocean2"), Color("Dark Ocean1")]), startPoint: .leading, endPoint: .trailing))
            
            .font(.largeTitle)
            .foregroundColor(.white)
            
            .background(Color.red)
          //  .cornerRadius(30)
            .shadow(color: .blue , radius: 10.0, x: 5, y: 5)
            .padding(.horizontal, 10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            
        
        
    }
}
