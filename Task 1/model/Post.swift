//
//  Post.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 24/11/22.
//

import Foundation

class Post {
    var fullName: String
    var profileImage: String
    var postImages: [String]
    
    init(fullName: String, profileImage: String, postImages: [String]) {
        self.fullName = fullName
        self.profileImage = profileImage
        self.postImages = postImages
    }
    
}
