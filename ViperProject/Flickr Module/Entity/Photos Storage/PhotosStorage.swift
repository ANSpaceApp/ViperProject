//
//  PhotosStorage.swift
//  ViperProject
//
//  Created by Maksim Pobozhei on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import Foundation

class  PhotosStorage {
    private var interactor: PhotosStorageOutput!
    var storage = [PhotosModel]()
}

extension PhotosStorage : PhotosStorageInput {
    var storageOutput: PhotosStorageOutput {
        get {
            return interactor
        }
        set {
            interactor = newValue
        }
    }
}
extension PhotosStorage {
    func saveData(data: PhotosResponse) {
        for i in 0..<data.photos.photo.count {
            let photoStruct = PhotosModel(title: data.photos.photo[i].title, url: data.photos.photo[i].url_l,id: data.photos.photo[i].id)
            storage.append(photoStruct)
        }
        interactor.presentData(storage: storage)
    }
}

