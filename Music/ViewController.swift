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
    var locationText = ""
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
        self.locationText = locationTextField.text!
        Defaults.save(self.nameText, address: self.locationText)
//        performSegue(withIdentifier: "name", sender: self)
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! HelloViewController
        vc.modalPresentationStyle = .fullScreen
        vc.nameHello = self.nameText
    }
 

}
struct Defaults {
    
    static let (nameKey, addressKey) = ("name", "address")
    static let userSessionKey = "com.save.usersession"
    private static let userDefault = UserDefaults.standard
    
    /**
       Nó được sử dụng để lấy ra và gán giá trị người dùng vào UserDefaults
     */
    struct UserDetails {
        let name: String
        let address: String
        
        init(_ json: [String: String]) {
            self.name = json[nameKey] ?? ""
            self.address = json[addressKey] ?? ""
        }
    }
    
    /**
     - Lưu chi tiết người dùng
     - Inputs - name `String` & address `String`
     */
    static func save(_ name: String, address: String){
        userDefault.set([nameKey: name, addressKey: address],
                        forKey: userSessionKey)
    }
    
    /**
     - Tìm nạp các giá trị thông qua Model `UserDetails`
     - Output - `UserDetails` model
     */
    static func getNameAndAddress()-> UserDetails {
        return UserDetails((userDefault.value(forKey: userSessionKey) as? [String: String]) ?? [:])
    }
    
    /**
        - Xoá chi tiết người dùng trong UserDefault qua key "com.save.usersession"
     */
    static func clearUserData(){
        userDefault.removeObject(forKey: userSessionKey)
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


