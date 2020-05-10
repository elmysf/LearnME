//
//  HistoryView.swift
//  LearnME
//
//  Created by Sufiandy Elmy on 14/04/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//
import SwiftUI

struct HistoryView: View {
    
    /// posts
    let posts = DataDummy.posts()
    @State var showingFilter = false
    
    var body: some View {
        NavigationView{
            List {

                ForEach(posts) { post in
                    PostView(post: post)
                }
            }
            .padding(.leading, -20)
            .padding(.trailing, -20)
            .navigationBarTitle("History")
        }
        
    }

}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
