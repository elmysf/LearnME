//
//  LearnView.swift
//  LearnME
//
//  Created by Sufiandy Elmy on 14/04/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//
import SwiftUI

struct LearnView: View {
    
    /// posts
    let posts = DataDummy.posts()
    @State var showingFilter = false
    
    var filterButton: some View {
        Button(action: { self.showingFilter.toggle() }) {
            Image(systemName: "slider.horizontal.3")
                .imageScale(.large)
                .accessibility(label: Text("Setting"))
                .padding()
                .foregroundColor(.black)
        }
    }
    
    var body: some View {
        NavigationView{
            List {
                
                //                        // statuses
                //                        ScrollView(.horizontal, content: {
                //                            HStack(spacing: 10) {
                //                                ForEach(statuses) { status in
                //                                    StatusView(status: status)
                //                                }
                //                            }
                //                            .padding(.leading, 10)
                //                        })
                //                            .frame(height: 190)
                
                
                // posts
                ForEach(posts) { post in
                    PostView(post: post)
                }
            }
            .padding(.leading, -20)
            .padding(.trailing, -20)
            .navigationBarTitle("My Learn")
            .navigationBarItems(trailing: filterButton)
            .sheet(isPresented: $showingFilter) {
                Text("Setting coming soon")
            }
        }
        
    }
    //        NavigationView {
    //            VStack {
    //                Image("image1")
    //                    .resizable()
    //                    .aspectRatio(3/2, contentMode: .fit)
    //            }
    //            .navigationBarTitle(Text("Featured"))
    //            .navigationBarItems(trailing: filterButton)
    //            .sheet(isPresented: $showingFilter) {
    //                Text("Filter story")
    //            }
    //
    //        }
    //    }
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnView()
    }
}
