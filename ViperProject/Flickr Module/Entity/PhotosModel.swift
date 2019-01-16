//
//  PhotosModel.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import Foundation

struct PhotosModel {
    
    let title : String
    let url : String
    let id : String
    
}
extension PhotosModel : ViewCellModel {
    var photoUrl: String {
        return url
    }
    
    var photoName: String {
        return title
    }
}
