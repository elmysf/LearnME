//
//  AddView.swift
//  LearnME
//
//  Created by Sufiandy Elmy on 14/04/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//
import SwiftUI

struct AddView: View {
    @State var showingDetail = false
    var body: some View {
        NavigationView {
            List{
                
                
                
                VStack{
                    Text("Add Learning").font(.title).padding(.vertical, 8)
               }.padding(.top, 32)
                Text("Coming soon")
                
            }.navigationBarTitle("Suggest  for learn")

        }
    }
}
