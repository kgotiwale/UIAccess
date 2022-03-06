//
//  FileNames.swift
//  UIAccess_Saved
//
//  Created by Vanessa Camacho on 2/20/22.
//

import Foundation

class File {
    
    var name: String!
    var name2 : String!
    var name3 : String!
    var imageName: String!
    var imageName2: String!
    
    public init(name:String, name2:String, name3:String, imageName:String, imageName2:String)
    {
        self.name = name
        self.name2 = name2
        self.name3 = name3
        self.imageName = imageName
        self.imageName2 = imageName2
    }
}
