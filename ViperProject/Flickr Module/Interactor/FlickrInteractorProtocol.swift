//
//  FlickrInteractorProtocol.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import Foundation

protocol  FlickrInteractorInput: class {
    var output: FlickrInteractorOutput { get set }
    var inputStorage : PhotosStorageInput { get set }
    func getData()
}

protocol FlickrInteractorOutput: class {
    func presentData(storage : [PhotosModel])
}
