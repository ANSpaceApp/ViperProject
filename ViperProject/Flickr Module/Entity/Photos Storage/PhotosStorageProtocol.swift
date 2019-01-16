//
//  PhotosStorageProtocol.swift
//  ViperProject
//
//  Created by Maksim Pobozhei on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import Foundation

protocol PhotosStorageInput {
    var storageOutput : PhotosStorageOutput {get set}
    func saveData(data: PhotosResponse)
    
}

protocol PhotosStorageOutput {
    func presentData(storage : [PhotosModel])
}
