//
//  testView.swift
//  Final Project Pt. 2
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI

struct testView: View {
    var body: some View {
        VStack {
            Text("STEM...")
            
            ZStack {
                
                //scrollable view
                Rectangle()
                
                VStack {
                    Text("Title")
                        .foregroundColor(Color.pink)
                    Image("math")
                }
                
        
            }
            
            //button
        }
    }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}
