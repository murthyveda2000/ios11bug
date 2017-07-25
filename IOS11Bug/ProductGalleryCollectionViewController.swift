//
//  ProductGalleryCollectionViewController.swift
//  Chairish
//
//  Created by Nathan Racklyeft on 7/12/16.
//  Copyright © 2016 Chairish, Inc. All rights reserved.
//

import UIKit


class ProductGalleryCollectionViewController: UICollectionViewController {

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        // Register nibs
        collectionView?.register(ProductGalleryCollectionViewCell.nib(), forCellWithReuseIdentifier: "ProductGalleryCollectionViewCell")
        
        if #available(iOS 11.0, *) {
            collectionView?.contentInsetAdjustmentBehavior = .never
        } else {
            automaticallyAdjustsScrollViewInsets = false
        }
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductGalleryCollectionViewCell", for: indexPath) as! ProductGalleryCollectionViewCell

        cell.backgroundColor = .red
        cell.imageView.backgroundColor = .blue
        return cell
    }

}


