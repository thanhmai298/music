//
//  listMusicViewController.swift
//  Music
//
//  Created by Catalina on 7/29/21.
//  Copyright © 2021 Catalina. All rights reserved.
//

import UIKit

class listMusicViewController: UIViewController{

    @IBOutlet weak var listMusic: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listMusic.register(SongTableViewCell.nib(), forCellReuseIdentifier: SongTableViewCell.identifier)
        listMusic.delegate = self
        listMusic.dataSource = self
    }
    let names = [
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "19",
        "20",
       
    ]


}
extension listMusicViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: SongTableViewCell.identifier, for: indexPath) as! SongTableViewCell

            cell.configure(with: 1, image: UIImage(named: "f5")!, name: names[indexPath.row], singer: "F5", time: "5:00")

        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(EditViewController(), animated: true)
    }
}
