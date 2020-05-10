//
//  User.swift
//  LearnME
//
//  Created by Sufiandy Elmy on 14/04/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    /// unique id
    var id: String = UUID().uuidString
    
    /// user name
    let name: String
    
    /// Init
    init(name: String ) {
        self.name = name
    }
}
