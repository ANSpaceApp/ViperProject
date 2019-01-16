//
//  FlickrAssembly.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import UIKit

class FlickrAssembly {
    
    func build() -> (controller: UINavigationController, presenter: FlickrPresenterInput)? {
        let storyboard = UIStoryboard(name: "FlickrStoryboard", bundle: nil)
        let rootVC = storyboard.instantiateViewController(withIdentifier: "kFlickrNavigationControllerIdentifier")
        guard let navigationVC = rootVC as? UINavigationController,
            let flickrVC = navigationVC.viewControllers.first as? FlickrViewController else {
                print ("nil")
                return nil }
        
        let presenter = FlickrPresenter()
        let interactor = FlickrInteractor()
        let photoStorage = PhotosStorage()
        
        flickrVC.presenterInput = presenter
        presenter.interactorInput = interactor
        presenter.viewInput = flickrVC
        interactor.output = presenter
        interactor.inputStorage = photoStorage
        photoStorage.storageOutput = interactor
        
        return (controller: navigationVC, presenter: presenter)
    }
}

