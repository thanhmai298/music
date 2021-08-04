//
//  SongTableViewCell.swift
//  Music
//
//  Created by Catalina on 7/29/21.
//  Copyright © 2021 Catalina. All rights reserved.
//

import UIKit

class SongTableViewCell: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var timeLable: UILabel!
    static let identifier = "SongTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: "SongTableViewCell", bundle: nil)
    }
    public func configure(with number: String, image: UIImage, name: String, singer: String, time: String){
        numberLabel.text = number
        myImageView.image = image
        nameLabel.text = name
        singerLabel.text = singer
        timeLable.text = time
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
