//
//  singlecardView.swift
//  04-cardView
//
//  Created by Manuel Rodriguez Alonso on 09/04/2020.
//  Copyright © 2020 Manuel Rodriguez Alonso. All rights reserved.
//

import SwiftUI

struct singlecardView: View {
    var body: some View {
        
        VStack {
                    
                    firstRow()
                    
                    secondRow()
                    
                    thirdRow()
                }
             
            }
        }

struct singlecardView_Previews: PreviewProvider {
            static var previews: some View {
                singlecardView()
            }
        }


struct cardView: View {
            
            var imageCard:String
            var title:String
            var subtitle:String
            var author:String
            var icon:String
            var price:String
            var oldprice:String
            
            var body: some View {
                VStack {
                   
                    Image(imageCard)
                        .resizable()
                        
                        .frame(width: 150, height: 100).scaledToFit()
                        
                    
                    VStack (alignment: .leading) {
                        Text(title.uppercased())
                            .font(.headline)
                        Text(subtitle)
                            .font(.subheadline)
                        Text(author)
                            .font(.caption)
                        
                        HStack {
                            Image(systemName: icon)
                            Image(systemName: icon)
                            Image(systemName: icon)
                            Image(systemName: icon)
                            Image(systemName: icon)
                            
                        }
                        
                        HStack {
                            Text(price)
                                .font(.headline)
                                .foregroundColor(.primary)
                            
                            Text(oldprice)
                            .font(.caption)
                                .foregroundColor(.secondary)
                                .strikethrough()
                            
                        }
                    }
                    
                    .layoutPriority(10)
                    Spacer()
                }
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius:20).stroke(Color(.gray).opacity(0.2), lineWidth: 2))
                .padding([.top, .horizontal])
            }
    
        }

struct firstRow: View {
            var body: some View {
                HStack {
                    
                    cardView(imageCard: "camp", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99")
                    
                    cardView(imageCard: "balloon", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99€")
                    
                    cardView(imageCard: "beach", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99€")
                    
                    cardView(imageCard: "mountain", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99€")
                }
            }
        }

struct secondRow: View {
            var body: some View {
                HStack {
                    
                    cardView(imageCard: "balloon", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99€")
                    
                    cardView(imageCard: "mountain", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99€")
                    
                    cardView(imageCard: "camp", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99€")
                    
                    cardView(imageCard: "beach", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99€")
                }
            }
        }

struct thirdRow: View {
            var body: some View {
                HStack {
                    
                    cardView(imageCard: "balloon", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99€")
                    
                    cardView(imageCard: "beach", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99€")
                    
                    cardView(imageCard: "camp", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99€")
                    
                    cardView(imageCard: "mountain", title: "Un dia Inolvidable", subtitle: "Vacaciones de Verano", author: "Un Servidor", icon: "star", price: "9.99€", oldprice: "99.99€")
                }
        
    }
}


