//
//  FlickrPresenterProtocol.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import Foundation

protocol FlickrPresenterInput: class {
    var output: FlickrPresenterOutput { get set }
    var viewInput: FlickrViewtViewInput { get set }
    var interactorInput: FlickrInteractorInput { get set }
    func getData()
    
}

protocol FlickrPresenterOutput: class {
    
}

