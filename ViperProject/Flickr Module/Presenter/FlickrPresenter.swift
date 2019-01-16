//
//  FlickrPresenter.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import Foundation

class FlickrPresenter {
    
    private var presenterOutputToCoordinator : FlickrPresenterOutput!
    private var view : FlickrViewtViewInput!
    private var interactor: FlickrInteractorInput!
    
    
}

extension FlickrPresenter: FlickrPresenterInput {
    
    var output: FlickrPresenterOutput {
        get {
            return presenterOutputToCoordinator
        }
        set {
            presenterOutputToCoordinator = newValue
        }
    }
    
    var viewInput: FlickrViewtViewInput {
        get {
            return view
        }
        set {
            view = newValue
        }
        
    }
    
    var interactorInput: FlickrInteractorInput {
        get {
            return interactor
        }
        set {
            interactor = newValue
        }
    }
    
    func getData() {
        interactorInput.getData()
    }
}

extension FlickrPresenter : FlickrInteractorOutput {
    func presentData(storage : [PhotosModel]){
        view.presentData(storage: storage)
    }
    
}
