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
    var song = [ListSongs]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadJSON {
            self.listMusic.reloadData()
        }
        listMusic.register(SongTableViewCell.nib(), forCellReuseIdentifier: SongTableViewCell.identifier)
        listMusic.delegate = self
        listMusic.dataSource = self
    }
    
    
    func downloadJSON(completed: @escaping () -> ()){
        let url = URL(string: "https://rss.applemarketingtools.com/api/v2/us/music/most-played/10/songs.json")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil {
                do {
                    self.song = try JSONDecoder().decode([ListSongs].self, from: data!)
                    DispatchQueue.main.async {
                        completed()
                    }
                } catch {
                    print("Json error")
                }
            }
        }.resume()
    }
    

}

extension listMusicViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return song.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: SongTableViewCell.identifier, for: indexPath) as! SongTableViewCell

        cell.configure(with: 1, image: UIImage(named: "f5")!, name: song[indexPath.row].name, singer: "F5", time: "5:00")


        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(EditViewController(), animated: true)
    }
}
