//
//  MyCollectionViewCell.swift
//  Music
//
//  Created by Catalina on 7/30/21.
//  Copyright © 2021 Catalina. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var typeMusic: UILabel!
    static let identifier = "MyCollectionViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func configure(with image: UIImage, type: String){
        imageView.image = image
        typeMusic.text = type
    }
    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
}
