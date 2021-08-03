//
//  TypeMusicViewController.swift
//  Music
//
//  Created by Catalina on 7/30/21.
//  Copyright © 2021 Catalina. All rights reserved.
//

import UIKit

class TypeMusicViewController: UIViewController {

    @IBOutlet var typeCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 120, height: 120)
        typeCollectionView.collectionViewLayout = layout
        typeCollectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        typeCollectionView.delegate = self
        typeCollectionView.dataSource = self
        
    }
}
extension TypeMusicViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
      
    }
}
extension TypeMusicViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        cell.configure(with: UIImage(named: "image")!, type: "Pop")
        return cell
    }
}
extension TypeMusicViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 120)
    }
}

