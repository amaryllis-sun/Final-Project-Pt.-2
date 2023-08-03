//
//  chemistry.swift
//  Final Project Pt. 2
//
//  Created by Scholar on 7/31/23.
//

import SwiftUI

struct chemistry: View {
    var body: some View {
        ZStack {
            
            Image("yellow_gradient")
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
                          
                      Text("Science: \nChemistry")
                          .font(.custom("Georgia", size: 40))
                          .fontWeight(.bold)
                          .padding(.bottom, 90.0)
                          .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                          .multilineTextAlignment(.center)
//
//                      Spacer()
                
                VStack(spacing: 30) {
                    
                    NavigationLink(destination: chem_creations()) {
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
                    
                    
                    NavigationLink(destination: chem_female()) {
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
                    
                    
                    NavigationLink(destination: chem_bipoc()) {
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
                          .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                          .multilineTextAlignment(.center)
                          .padding(20.0)
                          .font(.custom("Georgia", size: 20))
                
                         
                      
                  }
                  
              }
          }
      }
    

struct chemistry_Previews: PreviewProvider {
    static var previews: some View {
        chemistry()
    }
}
