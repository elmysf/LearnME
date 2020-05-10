//
//  Post.swift
//  LearnME
//
//  Created by Sufiandy Elmy on 14/04/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//

import SwiftUI
import Foundation

struct Post: Identifiable {
    /// unique id
    var id: String = UUID().uuidString
  
    /// post image
    let image: String?
    
    /// post content
    let content: String?
    
    /// post time
    let time: String!
    
    /// Init
    init(image: String?, content: String?, time: String) {
        self.image = image
        self.content = content
        self.time = time
    }
}
