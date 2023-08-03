//
//  cs_articles.swift
//  Final Project Pt. 2
//
//  Created by Scholar on 8/3/23.
//

import SwiftUI

struct cs_articles: View {
    var body: some View {
        ZStack{
                    Color(red: 0.92, green: 0.91, blue: 0.90)
                        .ignoresSafeArea()
                    ScrollView {
                        
                        VStack{
                            
                            Text("STEMtelligence")
                                .font(.custom("Georgia", size: 30))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            
                            
                            Text("Computer Science: Links to All Articles")
                                .font(.custom("Georgia", size: 40))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.34, green: 0.51, blue: 0.34))
                            Image("bar")
                            
                            Spacer()
                            Text("-----------------------------------------------")
                                .foregroundColor(.gray)
                            
                            Link(destination: URL(string: "https://atztechnology.com/list-of-latest-technologies-in-computer-science/")!) {
                                Text("1. Latest Technologies in Computer Science")
                                    .font(.custom("Georgia", size: 25))
                                    .foregroundColor(.black)
                                    .underline()
                            } // link 1
                            Group{
                                Text("-----------------------------------------------")
                                    .foregroundColor(.gray)
                                
                                Link(destination: URL(string: "https://www.sciencedaily.com/releases/2023/07/230713192858.htm")!) {
                                    Text("2. Researchers establish criterion for nonlocal quantum behavior in networks")
                                        .font(.custom("Georgia", size: 25))
                                        .foregroundColor(.black)
                                        .underline()
                                } // link 2
                                
                                Text("-----------------------------------------------")
                                    .foregroundColor(.gray)
                                
                                Link(destination: URL(string: "https://www.quantamagazine.org/post-quantum-cryptography-scheme-is-cracked-on-a-laptop-20220824/")!) {
                                    Text("3. ‘Post-Quantum’ Cryptography Scheme Is Cracked on a Laptop")
                                        .font(.custom("Georgia", size: 25))
                                        .foregroundColor(.black)
                                        .underline()
                                } // link 3
                                
                                Text("-----------------------------------------------")
                                    .foregroundColor(.gray)
                                
                                Group {
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                }
                                
                                Group {
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                }
                                Spacer()
                                Spacer()
                                
                                
                                
                                
                                Text("Made with love by: Anya, Angela, Rebecca, Amaryllis")
                                    .font(.custom("Georgia", size: 20))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.34, green: 0.51, blue: 0.34))
                            } // group
                            
                        } // vstack
                        .padding()
                    } // scroll
                } // zstack

                
            }
        }

struct cs_articles_Previews: PreviewProvider {
    static var previews: some View {
        cs_articles()
    }
}
