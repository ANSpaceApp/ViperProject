//
//  Application.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import UIKit

// MARK: - Properties

class Application {
    private let modulesCoordinator: ModulesCoordinator
    
    init() {
        modulesCoordinator = ModulesCoordinator()
    }
}

// MARK: - Initialization

extension Application {
    func startApp() -> UIViewController {
        return modulesCoordinator.rootModuleController()
    }
}
