//
//  NewsItem.swift
//  Final Project Pt. 2
//
//  Created by Scholar on 8/1/23.
//

import Foundation
import SwiftUI

class NewsItem: Identifiable{
let id = UUID()
let image : Image
let title: String
let description: String

init(image: Image, title: String, description: String) {
        
        self.image = image
        self.title = title
        self.description = description
        
    }
}
