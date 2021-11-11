//
//  ViewController.swift
//  Music
//
//  Created by Catalina on 7/28/21.
//  Copyright © 2021 Catalina. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    var nameText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor.white.cgColor
        nameTextField.layer.cornerRadius = 5
        
        locationTextField.layer.borderWidth = 1
        locationTextField.layer.borderColor = UIColor.white.cgColor
        locationTextField.layer.cornerRadius = 5
        
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButton(_ sender: Any) {
        self.nameText = nameTextField.text!
//        performSegue(withIdentifier: "name", sender: self)
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! HelloViewController
        vc.modalPresentationStyle = .fullScreen
        vc.nameHello = self.nameText
    }
 

}
//extension UITextField{
//    @IBInspectable var placeHolderColor: UIColor? {
//        get {
//            return self.placeHolderColor
//        }
//        set {
//            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
//        }
//    }
//}


