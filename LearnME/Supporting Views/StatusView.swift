//
//  StatusView.swift
//  LearnME
//
//  Created by Sufiandy Elmy on 14/04/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//

import SwiftUI

struct StatusView: View {
    /// status
        let status: Status
        
        /// body
        var body: some View {
            
            // status image
            Image(status.image)
                
                .resizable()  // resizable image
                .frame(width: 110, height: 180) // image frame
                
                 // create outer view with border (color, width)
                .border(Color.gray.opacity(0.5), width: 0.5)
                
                 // apply cornerRadius to hide visible cut out after applying border
                .cornerRadius(8)
                
                // for creating dark shadow behind the text
        }
    }


    /// NameOverlay
    struct NameOverlay: View {
        
        /// name
        let name: String
        
        /// gradient colors
        let colors: [Color] = [Color.gray.opacity(0.5), Color.gray.opacity(0)]
        
        /// gradient
        var gradient: LinearGradient {
            LinearGradient(gradient: Gradient(colors: colors),
                           startPoint: .bottomLeading, endPoint: .center)
        }
        
        /// body
        var body: some View {
            
            // ZStack - places views above each other
            ZStack(alignment: .bottomLeading) {
                
                // create a rectagular gradient from bottomLeading edge to center edge
                Rectangle().fill(gradient).cornerRadius(8)
                
                // create text above the gradient
                Text(name).font(.footnote).bold().lineLimit(1).padding(5)
            }
            .foregroundColor(.white)
        }
}
