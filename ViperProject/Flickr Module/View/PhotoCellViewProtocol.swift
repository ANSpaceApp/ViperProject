//
//  PhotoCellViewProtocol.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import Foundation

protocol ViewCellModel {
    var photoName : String { get }
    var photoUrl : String {get}
    var id : String {get}
}
