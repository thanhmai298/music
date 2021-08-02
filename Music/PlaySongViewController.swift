//
//  PlaySongViewController.swift
//  Music
//
//  Created by Catalina on 8/2/21.
//  Copyright © 2021 Catalina. All rights reserved.
//

import UIKit

class PlaySongViewController: UIViewController {

    @IBOutlet weak var songImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        songImage.layer.cornerRadius = songImage.frame.size .width / 2
        songImage.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
