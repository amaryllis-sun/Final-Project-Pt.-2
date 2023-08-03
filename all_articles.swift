//
//  all_articles.swift
//  Final Project Pt. 2
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct all_articles: View {
    var body: some View {
        ZStack{
                 Color(red: 0.92, green: 0.91, blue: 0.90)
                .ignoresSafeArea()
                   ScrollView {
                      
                       VStack{
                           
                           Group {
                               Text("STEMtelligence")
                                   .font(.custom("Georgia", size: 27))
                                   .fontWeight(.bold)
                                   .multilineTextAlignment(.center)
                               
                               
                               Text("Biology: Links to All Articles")
                                   .font(.custom("Georgia", size: 40))
                                   .fontWeight(.semibold)
                                   .multilineTextAlignment(.center)
                                   .foregroundColor(Color(red: 0.34, green: 0.51, blue: 0.34))
                                   .padding(.bottom, -10)
                               Image("bar")
                               
                            //   Spacer()
                                //   .padding(.top, 2.0)
                               
                               Text("-----------------------------------------------")
                                   .foregroundColor(.gray)
                               
                               
                               
                               Link(destination: URL(string: "https://www.sci.news/biology/caecilian-snake-venom-resistance-12126.html")!) {
                                   Text("1. Biologists Discover Unprecedented Resistance to Snake Venom in Caecilians")
                                       .foregroundColor(.black)
                                       .font(.custom("Georgia", size: 25))
                                       .underline()
                               } // link 1
                               
                           }
                           Group {
                               Text("-----------------------------------------------")
                                   .foregroundColor(.gray)
                               
                               Link(destination: URL(string: "https://www.sci.news/biology/honeybee-decision-making-12079.html")!) {
                                   Text("2. New Research Reveals How Honeybees Make Fast, Accurate Decisions")
                                       .foregroundColor(.black)
                                       .font(.custom("Georgia", size: 25))
                                       .underline()
                               } // link 2
                               
                               Text("-----------------------------------------------")
                                   .foregroundColor(.gray)
                               
                               Link(destination: URL(string: "https://www.sciencedaily.com/releases/2023/08/230801163220.htm")!) {
                                   Text("3. Organoids revolutionize research on respiratory infections")
                                       .foregroundColor(.black)
                                       .font(.custom("Georgia", size: 25))
                                       .underline()
                               } // link 3
                               
                               Text("-----------------------------------------------")
                                   .foregroundColor(.gray)
                               
                               Link(destination: URL(string: "https://www.nytimes.com/2021/04/08/health/coronavirus-mrna-kariko.html")!) {
                                   Text("4. Kati Kariko Helped Shield the World From the Coronavirus")
                                       .foregroundColor(.black)
                                       .font(.custom("Georgia", size: 25))
                                       .underline()
                               } // link 4
                               
                               Text("-----------------------------------------------")
                                   .foregroundColor(.gray)
                               
                               
                               Link(destination: URL(string: "https://www.technologyreview.com/2018/11/25/138962/exclusive-chinese-scientists-are-creating-crispr-babies/")!) {
                                   Text("5. Chinese scientists are creating CRISPR babies")
                                       .foregroundColor(.black)
                                       .font(.custom("Georgia", size: 25))
                                       .underline()
                                       
                               } // link 5
                           }
                           Group {
                               Text("-----------------------------------------------")
                                   .foregroundColor(.gray)
                               
                               
                               Link(destination: URL(string: "https://www.pnas.org/doi/abs/10.1073/pnas.2211283119")!) {
                                   Text("6. Directional takeoff, aerial righting, and adhesion landing of semiaquatic springtails")
                                       .foregroundColor(.black)
                                       .font(.custom("Georgia", size: 25))
                                       .underline()
                                       .font(.title)
                               } // link 6
                               
                               Text("-----------------------------------------------")
                              .foregroundColor(.gray)
                               
                               Spacer()
                               Spacer()
                               Spacer()
                               
                               Text("Made with love by: Anya, Angela, Rebecca, Amaryllis")
                                   .font(.custom("Georgia", size: 20))
                                   .multilineTextAlignment(.center)
                                   .foregroundColor(Color(red: 0.34, green: 0.51, blue: 0.34))
                           }
                           
                       } // vstack
                       .padding()
                   } // scroll
               } // zstack
               
           } // var body
       } // struct

struct all_articles_Previews: PreviewProvider {
    static var previews: some View {
        all_articles()
    }
}
