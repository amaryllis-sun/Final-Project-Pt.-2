//
//  elec_creations.swift
//  Final Project Pt. 2
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct elec_creations: View
        {@State var currentIndex: Int = 0
            //A property wrapper type that updates a property while the user performs a gesture and resets the property back to its initial state when the gesture ends.
            @GestureState private var dragOffset: CGFloat = 0
            let newsItems = [
                NewsItem(image: Image("eleceng"), title: "Recent Inventions in the \nElectrical Engineering \nIndustry", description: "Description 1"),
                NewsItem(image: Image("kirrchoff"), title: "Defying Kirchhoff: \nEfficient Energy Harvesting \nWith “Law-Breaking” Device", description: "Description 2"),
                NewsItem(image: Image("chip"), title: "Protons To Power \nNext-Gen Memory Devices \nand Neuromorphic \nComputing Chips", description: "Description 2")
                
            ]
            
            
            var body: some View {
                NavigationStack {
                    VStack {
                        ZStack {
                            Image("yellow_gradient")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                                .ignoresSafeArea()
                            
                            
                            ForEach(0..<newsItems.count, id: \.self){index in
                                
                                Text(newsItems[currentIndex].title)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                                    .font(.custom("Georgia", size: 25))
                                    .padding(.top, -280.0)
                                
                                    .multilineTextAlignment(.center)
                                
                               
                                newsItems[index].image
                                    .border(Color.white, width: 2)
                                    .opacity(currentIndex == index ? 1.0 : 0.5)
                                    .scaleEffect(currentIndex == index ? 0.90 : 0.6)
                                    .offset(x: CGFloat(index - currentIndex) * 300 + dragOffset, y: 0)
                                    .padding(.top, 90)
                                
                                
                                
                                
                                
                                //                                    .resizable(resizingMode: .stretch)
                                //                                    .aspectRatio(contentMode: .fit)
                                
                                //    Text("Science")
                                
                                VStack(spacing: 50) {
                                    
                                    Spacer()
                                    
                                    NavigationLink(destination: electrical_articles()) {
                                        Text("All Articles")
                                            .lineLimit(1)
                                            .tint(.white)
                                            .font(.custom("Georgia", size: 20))
                                            .padding()
                                            .background(Rectangle() .foregroundColor(Color(red: 0.86, green: 0.42, blue: 0.47))
                                                .cornerRadius(15)
                                                .shadow(radius: 7)
                                                        
                                            )
                                    }
                                }
                            }
                            .padding(.horizontal, 50.0)
                            
                        }
                        // vstack
                        //                        .padding()
                        //                        .background(Rectangle().foregroundColor(.white))
                        //                        .cornerRadius(15)
                        //                        .shadow(radius:15)
                        //                        .padding()
                        //
                        
                        
                        
                    } // zstack
                    .gesture(
                        DragGesture()
                            .onEnded({ value in
                                let threshold: CGFloat = 50
                                if value.translation.width > threshold {
                                    withAnimation{
                                        currentIndex = max(0, currentIndex - 1)
                                    }
                                } else if value.translation.width < -threshold {
                                    withAnimation {
                                        currentIndex = min(newsItems.count - 1, currentIndex + 1)
                                    }
                                }
                            })
                    )
                    .navigationTitle("Elec. Eng. - Creations")
                    
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            HStack {
                                Button {
                                    withAnimation {
                                        currentIndex = max(0, currentIndex - 1)
                                        
                                    }
                                } label: {
                                    Image(systemName: "arrow.left")
                                    
                                        .font(.custom("Georgia", size: 40))
                                        .foregroundColor(.white)
                                }
                                Spacer()
                                Button {
                                    withAnimation {
                                        currentIndex = min(newsItems.count - 1, currentIndex + 1)
                                    }
                                } label: {
                                    Image(systemName: "arrow.right")
                                        .font(.custom("Georgia", size: 40))
                                        .foregroundColor(.white)
                                }
                            }
                            .padding()
                        }
                        
                        
                    }
                    .toolbarColorScheme(.dark, for: .navigationBar)
                    .toolbarBackground(
                        Color(red: 0.08, green: 0.62, blue: 0.71),
                        for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                    
                    
                }
            
        }
    }

struct elec_creations_Previews: PreviewProvider {
    static var previews: some View {
        elec_creations()
    }
}
