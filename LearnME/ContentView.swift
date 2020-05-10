//
//  ContentView.swift
//  LearnME
//
//  Created by Sufiandy Elmy on 14/04/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selected = 0
        init () {
            UITabBar.appearance().backgroundColor = UIColor.cyan
        }
        var body: some View {
            TabView (selection: $selected) {
                LearnView().tabItem({
                    Image(systemName: Constants.TabBarImageName.tabBar0)
                        .font(.body)
                    Text("\(Constants.TabBarText.tabBar0)")
                }).tag(0)
                
                AddView().tabItem({
                    Image(systemName: Constants.TabBarImageName.tabBar1)
                        .font(.body)
                    Text("\(Constants.TabBarText.tabBar1)")
                }).tag(1)
                
                HistoryView().tabItem({
                    Image(systemName: Constants.TabBarImageName.tabBar2)
                        .font(.body)
                    Text("\(Constants.TabBarText.tabBar2)")
                }).tag(2)
            }.accentColor(Color.white)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
