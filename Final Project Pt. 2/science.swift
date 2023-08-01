//
//  science.swift
//  Final Project Pt. 2
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI

struct science: View {
    @State private var currentIndex: Int = 0
    //A property wrapper type that updates a property while the user performs a gesture and resets the property back to its initial state when the gesture ends.
    @GestureState private var dragOffset: CGFloat = 0
    let newsItems = [
        NewsItem(image: Image("science"), title: "Science", description: "Description 1"),
        NewsItem(image: Image("math"), title: "Math", description: "Description 2")
        
    ]
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color(red: 0.34, green: 0.51, blue: 0.34)
                    .ignoresSafeArea()
                VStack{
                    Text("STEMtelligence")
                    //.font(.title)
                        .font(.custom("Georgia", size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.8117647058823529, green: 0.8117647058823529, blue: 0.9176470588235294))
                        .padding(.top, 20.0)
                    
                    ForEach(0..<newsItems.count, id: \.self){index in
                        
                            newsItems[index].image
                                .cornerRadius(15)
                                .opacity(currentIndex == index ? 1.0 : 0.5)
                                .scaleEffect(currentIndex == index ? 0.7 : 0.8)
                                .offset(x: CGFloat(index - currentIndex) * 300 + dragOffset, y: 0)
                            //                                    .resizable(resizingMode: .stretch)
                            //                                    .aspectRatio(contentMode: .fit)
                            
                        //    Text("Science")
                            Text(newsItems[currentIndex].title)
                                .font(.title)
                        
                        NavigationLink(destination: about_us_page()) {
                            Text("About Us")
                                .tint(.white)
                                .font(.custom("Georgia", size: 20))
                                .padding()
                                .background(Rectangle() .foregroundColor(Color(red: 0.86, green: 0.42, blue: 0.47))
                                    .cornerRadius(15)
                                    .shadow(radius: 15)
            
            
                                )
                        }
                        } // vstack

//                        .padding()
//                        .background(Rectangle().foregroundColor(.white))
//                        .cornerRadius(15)
//                        .shadow(radius:15)
//                        .padding()
//
                   
                    }
              
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
                .navigationTitle("STEMtelligence")
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        HStack {
                            Button {
                                withAnimation {
                                    currentIndex = max(0, currentIndex - 1)
                                    // Text(title)
                                }
                            } label: {
                                Image(systemName: "arrow.left")
                                    .font(.title)
                            }
                            Spacer()
                            Button {
                                withAnimation {
                                    currentIndex = min(newsItems.count - 1, currentIndex + 1)
                                }
                            } label: {
                                Image(systemName: "arrow.right")
                                    .font(.title)
                            }
                        }
                        .padding()
                    }
                
                    
                }
                            
            }
        }
    
}

struct science_Previews: PreviewProvider {
    static var previews: some View {
        science()
    }
}
