//
//  HelloViewController.swift
//  Music
//
//  Created by Catalina on 7/29/21.
//  Copyright © 2021 Catalina. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    
    @IBOutlet weak var avaImage: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    var nameHello = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLable.text = nameHello
        avaImage.layer.cornerRadius = avaImage.frame.size .width / 2
        avaImage.clipsToBounds = true
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
