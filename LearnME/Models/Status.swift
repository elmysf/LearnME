//
//  Status.swift
//  LearnME
//
//  Created by Sufiandy Elmy on 14/04/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//

import SwiftUI
import Foundation

struct Status: Identifiable {
    /// unique id
    var id: String = UUID().uuidString
     
    /// status image
    let image: String
    
    /// Init
    init(image: String) {
        self.image = image
    }
}
