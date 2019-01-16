//
//  ModulesCoordinator.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import UIKit


class ModulesCoordinator {
    
    private var flickrView : UINavigationController?
    private var flickrPresenter : FlickrPresenterInput?
    
    func rootModuleController() -> UIViewController {
        let flickrAssembly = FlickrAssembly()
        guard let flickr = flickrAssembly.build() else { return UIViewController() }
        flickr.presenter.output = self
        self.flickrView = flickr.controller
        self.flickrPresenter = flickr.presenter
        return flickr.controller
    }
}


extension ModulesCoordinator : FlickrPresenterOutput {
    
}

extension ModulesCoordinator : RoutingFlickrViewtView {
    func presentFlickrViewtViewIView() {
        
    }
    
    func dismissFlickrViewtViewIView() {
        
    }
}
