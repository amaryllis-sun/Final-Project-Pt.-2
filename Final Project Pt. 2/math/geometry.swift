//
//  geometry.swift
//  Final Project Pt. 2
//
//  Created by Scholar on 7/31/23.
//

import SwiftUI

struct geometry: View {
    var body: some View {
        ZStack {
            
            Image("gradient2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
//                  Color(red: 0.34, green: 0.51, blue: 0.34)
                    .ignoresSafeArea()
                  
            VStack() {
                     
//                      Spacer()
                
                Text("STEMtelligence")
                    .font(.custom("Georgia", size: 40))
                    .fontWeight(.bold)
                    .padding(.top, 15.0)
                    .padding(.bottom, 2.0)
                    .foregroundColor(Color(.white))
                          
                      Text("Math: Geometry")
                          .font(.custom("Georgia", size: 40))
                          .fontWeight(.bold)
                          .padding(.bottom, 130.0)
                          .foregroundColor(Color(red: 0.92, green: 0.91, blue: 0.90))
                          .multilineTextAlignment(.center)
//
//                      Spacer()
                
                VStack(spacing: 30) {
                    
                    NavigationLink(destination: geo_creations()) {
                        Text("New Creations")
                            .foregroundColor(.black)
                            .font(.custom("Georgia", size: 25))
                            .padding()
                            .background(Rectangle() .foregroundColor(Color(red: 0.87, green: 0.73, blue: 0.53))
                                .cornerRadius(15)
                                .shadow(radius: 15)
                                .border((Color(red: 0.39, green: 0.29, blue: 0.11)), width: 3)
                                        
                                        
                            )
                        
                    }
                    
                    
                    NavigationLink(destination: geo_female()) {
                        Text("Female Focus")
                            .foregroundColor(.black)
                            .font(.custom("Georgia", size: 25))
                            .padding()
                            .background(Rectangle() .foregroundColor(Color(red: 0.87, green: 0.73, blue: 0.53))
                                .cornerRadius(15)
                                .shadow(radius: 15)
                                .border((Color(red: 0.39, green: 0.29, blue: 0.11)), width: 3)
                                        
                                        
                            )
                        
                    }
                    
                    
                    NavigationLink(destination: geo_bipoc()) {
                        Text("BIPOC Focus")
                            .foregroundColor(.black)
                            .font(.custom("Georgia", size: 25))
                            .padding()
                            .background(Rectangle() .foregroundColor(Color(red: 0.87, green: 0.73, blue: 0.53))
                                .cornerRadius(15)
                                .shadow(radius: 15)
                                .border((Color(red: 0.39, green: 0.29, blue: 0.11)), width: 3)
                                        
                                        
                            )
                    }
                }
                      
                Spacer()
                Spacer()
                Spacer()
                Spacer()
//
//              Spacer()
                      
                      Text("Made with love by Anya, Angela, \nRebecca, & Amaryllis")
                          .foregroundColor(.white)
                          .multilineTextAlignment(.center)
                          .padding(20.0)
                          .font(.custom("Georgia", size: 20))
                
                         
                      
                  }
                  
              }
          }
      }
struct geometry_Previews: PreviewProvider {
    static var previews: some View {
        geometry()
    }
}
