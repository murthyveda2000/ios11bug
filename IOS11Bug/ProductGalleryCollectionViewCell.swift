//
//  ProductGalleryCollectionViewCell.swift
//  Chairish
//
//  Created by Nate Racklyeft on 12/11/14.
//  Copyright (c) 2014 Chairish, Inc. All rights reserved.
//

import UIKit

class ProductGalleryCollectionViewCell: UICollectionViewCell {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    @IBOutlet weak var imageView : UIImageView!
    static func nib() -> UINib {
        return UINib(nibName: "ProductGalleryCollectionViewCell", bundle: Bundle(for: self))
    }
    

}



