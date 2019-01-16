//
//  FlickrInteractor.swift
//  ViperProject
//
//  Created by Amir Razakov on 16.01.2019.
//  Copyright © 2019 Amir Razakov. All rights reserved.
//

import Foundation

class FlickrInteractor {
    private var interactorOutput : FlickrInteractorOutput!
    private var storageInput : PhotosStorageInput!
}

extension FlickrInteractor : FlickrInteractorInput {
    var inputStorage: PhotosStorageInput {
        get {
            return storageInput
        }
        set {
            storageInput = newValue
        }
    }
    
    func getData() {
        downloadData()
    }
    
    var output: FlickrInteractorOutput {
        get {
            return interactorOutput
        }
        set {
            interactorOutput = newValue
        }
    }
}
extension FlickrInteractor : PhotosStorageOutput {
    func presentData(storage: [PhotosModel]) {
        interactorOutput.presentData(storage: storage)
    }
}

extension FlickrInteractor {
    private func downloadData() {
        let url = URL(string: "https://www.flickr.com/services/rest?method=flickr.interestingness.getList&api_key=3988023e15f45c8d4ef5590261b1dc53&per_page=40&page=1&format=json&nojsoncallback=1&extras=url_l&date=2018-09-23")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.parse(data: data)
            }
        }
        task.resume()
    }
    
    private func parse(data: Data) {
        do {
            let photoResponse = try JSONDecoder().decode(PhotosResponse.self, from: data)
            storageInput.saveData(data: photoResponse)
        } catch {
            print("error = \(error.localizedDescription)")
        }
    }
}
