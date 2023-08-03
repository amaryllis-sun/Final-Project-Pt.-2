//
//  ContentView.swift
//  Final Project
//
//  Created by Scholar on 7/31/23.
//
import SwiftUI
struct ContentView: View {
    @State private var selectedOption: String = "Option 1"
    @State private var showDropdownMenu: Bool = false
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                Image("pink_gradient")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
//                Color(red:0.3411764705882353, green: 0.5058823529411764, blue:0.3411764705882353)
                   
                VStack(spacing: 20) {
                    Text("STEMtelligence")
                        //.font(.title)
                        .font(.custom("Georgia", size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.43, green: 0.34, blue: 0.5))
                        .padding(.top, 20.0)
            
                    Spacer()
                    
                    //science
                    Menu {
                        NavigationLink {
                            biology()
                        }
                    label: {
                            Label("Biology", systemImage: "rectangle.stack.badge.plus")
                        }
                    .accentColor(.black)
                        NavigationLink {
                            chemistry()
                        } label: {
                            Label("Chemistry", systemImage: "rectangle.stack.badge.plus")
                        }
                        NavigationLink {
                            physics()
                        } label: {
                            Label("Physics", systemImage: "rectangle.stack.badge.person.crop")
                        }
                        NavigationLink {
                            astronomy()
                        } label: {
                            Label("Astronomy", systemImage: "rectangle.stack.badge.person.crop")
                        }
                    } label: {
                        Label("Science 🧬", systemImage: "chevron.down")
                            .tint(.black)
                            .font(.custom("Georgia", size: 25))
                            .padding()
                            .background(Rectangle() .foregroundColor(Color(red: 0.87, green: 0.73, blue: 0.53))
                            .cornerRadius(15)
                            .shadow(radius: 15)
                            .border((Color(red: 0.43, green: 0.34, blue: 0.5)), width: 2.5)
                            )
                    }
                    
                    //tech
                    Menu {
                        NavigationLink {
                            comp_sci()
                        }label: {
                            Label("Computer Science", systemImage: "rectangle.stack.badge.plus")
                        }
                        NavigationLink {
                            ai()
                        } label: {
                            Label("Artificial Intelligence", systemImage: "folder.badge.plus")
                        }
                        NavigationLink {
                            virtual_reality()
                        } label: {
                            Label("Virtual Reality", systemImage: "rectangle.stack.badge.person.crop")
                        }
                        
                        NavigationLink {
                            data_science()
                        } label: {
                            Label("Data Science", systemImage: "rectangle.stack.badge.person.crop")
                        }
                        
                        NavigationLink {
                            cybersecurity()
                        } label: {
                            Label("Cybersecurity", systemImage: "rectangle.stack.badge.person.crop")
                        }
                        
                    } label: {
                        Label("Technology 📱", systemImage: "chevron.down")
                            .tint(.black)
                            .font(.custom("Georgia", size: 25))
                            .padding()
                            .background(Rectangle() .foregroundColor(Color(red: 0.87, green: 0.73, blue: 0.53))
                            .cornerRadius(15)
                            .shadow(radius: 15)
                            .border((Color(red: 0.43, green: 0.34, blue: 0.5)), width: 2.5)
                            )
                    }
                    //engineering
                    Menu {
                        NavigationLink {
                            chem_eng()
                        }label: {
                            Label("Chemical Engineering", systemImage: "rectangle.stack.badge.plus")
                        }
                        NavigationLink {
                            civil_eng()
                        } label: {
                            Label("Civil Engineering", systemImage: "folder.badge.plus")
                        }
                        NavigationLink {
                            electric_eng()
                        } label: {
                            Label("Electrical Engineering", systemImage: "rectangle.stack.badge.person.crop")
                        }
                        
                        NavigationLink {
                            mech_eng()
                        } label: {
                            Label("Mechanical Engineering", systemImage: "rectangle.stack.badge.person.crop")
                        }
                        
                        
                        
                    } label: {
                        Label("Engineering 🛠️", systemImage: "chevron.down")
                            .tint(.black)
                            .font(.custom("Georgia", size: 25))
                            .padding()
                            .background(Rectangle() .foregroundColor(Color(red: 0.87, green: 0.73, blue: 0.53))
                            .cornerRadius(15)
                            .shadow(radius: 15)
                            .border((Color(red: 0.43, green: 0.34, blue: 0.5)), width: 2.5)
                            )
                    }
                    
                    
                    //math
                    Menu {
                        NavigationLink {
                            algebra()
                        }label: {
                            Label("Algebra", systemImage: "rectangle.stack.badge.plus")
                        }
                        NavigationLink {
                            geometry()
                        } label: {
                            Label("Geometry", systemImage: "folder.badge.plus")
                        }
                        NavigationLink {
                            calculus()
                        } label: {
                            Label("Calculus", systemImage: "rectangle.stack.badge.person.crop")
                        }
                        
                        NavigationLink {
                            statistics()
                        } label: {
                            Label("Statistics", systemImage: "rectangle.stack.badge.person.crop")
                        }
                        
                    } label: {
                        Label("Math ➗", systemImage: "chevron.down")
                            .tint(.black)
                            .font(.custom("Georgia", size: 25))
                            .padding()
                            .background(Rectangle() .foregroundColor(Color(red: 0.87, green: 0.73, blue: 0.53))
                            .cornerRadius(15)
                            .shadow(radius: 15)
                            .border((Color(red: 0.43, green: 0.34, blue: 0.5)), width: 2.5)
                            )
                    }
                    
                    Spacer()
                    
                    VStack(spacing:50){
                        NavigationLink(destination: about_us_page()) {
                            Text("About Us")
                                .tint(.white)
                                .font(.custom("Georgia", size: 25))
                                .padding()
                                .background(Rectangle() .foregroundColor(Color(red: 0.86, green: 0.42, blue: 0.47))
                                .cornerRadius(15)
                                .shadow(radius: 15)
                                            

                                )
                            
                        }
                    
                        
                        
                        Text("Made with love by Anya, Angela, Rebecca, & Amaryllis ")
                          //  .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.43, green: 0.34, blue: 0.5))
                        
                            .font(.custom("Georgia", size: 20))
                    }
                }
            }
            
        }
        }
        
       
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

