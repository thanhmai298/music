//
//  EditViewController.swift
//  Music
//
//  Created by Catalina on 8/4/21.
//  Copyright © 2021 Catalina. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var songName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        songName.layer.borderWidth = 1
        songName.layer.borderColor = UIColor.white.cgColor
        songName.layer.cornerRadius = 5

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
