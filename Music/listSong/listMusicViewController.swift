//
//  listMusicViewController.swift
//  Music
//
//  Created by Catalina on 7/29/21.
//  Copyright © 2021 Catalina. All rights reserved.
//

import UIKit

class listMusicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var listMusic: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listMusic.register(SongTableViewCell.nib(), forCellReuseIdentifier: SongTableViewCell.identifier)
        listMusic.delegate = self
        listMusic.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: SongTableViewCell.identifier, for: indexPath) as! SongTableViewCell
        cell.configure(with: "1", imageName: "gear", name: "Superstar", singer: "F5", time: "5:00")
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

}
