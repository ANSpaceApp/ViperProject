//
//  FlickrView.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import UIKit

class FlickrViewController : UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var presenter : FlickrPresenterInput!
    private let kPhotoTableViewCellNib = UINib(nibName: "PhotoCellView", bundle: nil)
    private let kPhotoTableViewCellReuseIdentifier = "kPhotoTableViewCellReuseIdentifier"
    private var storage : [PhotosModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.getData()
    }
    
}

extension FlickrViewController {
    private func setUpUI() {
        
        tableView.register(kPhotoTableViewCellNib, forCellReuseIdentifier: kPhotoTableViewCellReuseIdentifier)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 360
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension FlickrViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storage?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: kPhotoTableViewCellReuseIdentifier,
                                                       for: indexPath) as? PhotoCellView else {
                                                        return UITableViewCell()
        }
        
        cell.viewModel = storage?[indexPath.row]
        return cell
    }
}

extension FlickrViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}




extension FlickrViewController : FlickrViewtViewInput {
    
    
    
    var presenterInput: FlickrPresenterInput {
        get {
            return presenter
        }
        set {
            presenter = newValue
        }
    }
    
    
}

extension FlickrViewController {
    func presentData(storage : [PhotosModel]) {
        self.storage = storage
        print(self.storage![3])
        setUpUI()
    }
}
