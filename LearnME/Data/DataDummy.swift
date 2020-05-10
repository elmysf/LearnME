//
//  DataDummy.swift
//  LearnME
//
//  Created by Sufiandy Elmy on 14/04/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//

import Foundation

struct DataDummy {
  
    /// posts
    static func posts() -> [Post] {
        let post1 = Post(image: "scene1",
                         content: "Xcode for basic programer",
                         time: "Today")
        
        let post2 = Post(image: "scene2",
                         content: "Udemy Course Online for xcode",
                         time: "Tomorrow")
        let post3 = Post(image: "scene3",
                         content: "Sketch Design Prototyping basic",
                         time: "Yesterday")
        
        let post4 = Post(image: "About Autolayout for xcode",
                         content: "",
                         time: "Sunday")
        
        return [post1, post2, post3, post4]
    }
    
    
    /// statuses
    static func statuses() -> [Status] {
        let status1 = Status(image: "scene1")
        let status2 = Status(image:"scene2")
        let status3 = Status(image: "scene3")
        let status4 = Status(image: "scene4")
        
        return [status1, status2, status3, status4]
    }

}
