//
//  AvatarView.swift
//  Optimin
//
//  Created by Muhammad Nashrullah on 02/04/20.
//  Copyright © 2020 Muhammad Nashrullah. All rights reserved.
//

import SwiftUI

struct AvatarView: View {
    
    /// image
    let image: String
    
    /// size
    let size: CGFloat
    
    /// body
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: size, height: size)
            .border(Color.gray.opacity(0.5), width: 0.5)
            .cornerRadius(size/2)
    }
}
