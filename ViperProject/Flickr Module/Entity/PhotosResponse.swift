//
//  PhotosResponse.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//


import Foundation

struct PhotosResponse : Codable {
    var photos : Photos
    
}

struct Photos : Codable {
    var photo : [Photo]
}

struct Photo : Codable {
    var id : String
    var title : String
    var url_l : String
}

