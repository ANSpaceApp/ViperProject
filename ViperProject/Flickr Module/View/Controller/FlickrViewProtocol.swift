//
//  FlickrViewProtocol.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import Foundation

protocol FlickrViewtViewInput: class {
    var presenterInput: FlickrPresenterInput { get set }
    func presentData(storage : [PhotosModel])
    
}

protocol RoutingFlickrViewtView: class {
    func presentFlickrViewtViewIView()
    func dismissFlickrViewtViewIView()
}
