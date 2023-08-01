//
//  about_us_page.swift
//  Final Project
//
//  Created by Scholar on 7/31/23.
//

import SwiftUI

struct about_us_page: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.34, green: 0.51, blue: 0.34)
                .ignoresSafeArea()
            
            
            VStack {
                
                Image("kwk")
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .frame(width: 100, height: 270, alignment: .center)
                
                
                Text("About Us")
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.34, green: 0.51, blue: 0.34))
                    .font(.custom("Georgia Bold", size: 35))
               // Spacer()
                Text("We are a group of Kode with Klossy scholars that took Mobile App Development during the summer of 2023. For our final project, we were passionate about creating an app that would spread information about recent news in the STEM world as well as encourage women and POC to get involved in the field. In a STEM world where diversity isn’t common, our goal is to help everyone feel welcome.")
                    .multilineTextAlignment(.center)
                    .font(.custom("Georgia", size: 20))
                    .foregroundColor(.black)
                    .padding(5.0)
                    .lineSpacing(10)
                Spacer()
                
//                Text("Made with love by Anya, Angela, Rebecca, & Amaryllis")
//                    .foregroundColor(.black)
//                    .multilineTextAlignment(.center)
//                    .font(.custom("Georgia", size: 20))
                
    
                                
                            }
            .padding()
            .background(Rectangle() .foregroundColor(Color(red: 0.81, green: 0.81, blue: 0.92))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding())
                        }
                        }
    }



struct about_us_page_Previews: PreviewProvider {
    static var previews: some View {
        about_us_page()
    }
}
