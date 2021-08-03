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
    
    var nameText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButton(_ sender: Any) {
        self.nameText = nameTextField.text!
        performSegue(withIdentifier: "name", sender: self)
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! HelloViewController
        vc.nameHello = self.nameText
    }
 

}
extension UITextField{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}


