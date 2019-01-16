//
//  PhotoCellView.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import UIKit
import Kingfisher


class PhotoCellView : UITableViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    
    @IBOutlet weak var photoName: UILabel!
    
    
    var viewModel: ViewCellModel? {
        didSet {
            guard let viewModel = viewModel else { return }
            photoName.text = viewModel.photoName
            photo.kf.indicatorType = .activity
            let url = URL(string : viewModel.photoUrl)
            let cacheKey = viewModel.id
            let resource = ImageResource(downloadURL: url! , cacheKey: cacheKey)
            photo.kf.setImage(with: resource)
        }
    }
}
