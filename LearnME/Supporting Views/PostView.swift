//
//  PostView.swift
//  LearnME
//
//  Created by Sufiandy Elmy on 14/04/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//

import SwiftUI
import Foundation

struct PostView: View {
    /// post
    let post: Post
    
    /// body
    var body: some View {
        
        /// main stack
        VStack(alignment: .leading, spacing: 10) {
            
            VStack(alignment: .leading) {
                
                HStack(spacing: 10) {
                    
                    VStack(alignment: .leading, spacing: 3) {
                        
                        // post time
                        Text(post.time).font(.subheadline)
                    }
                }
                
                // post content
                Text(post.content ?? "").font(.body).lineLimit(nil)
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
            
            Image(post.image ?? "")
                .resizable()
                .aspectRatio(3/2, contentMode: .fit)
        }
        .padding(.top, 5)
    }
}
