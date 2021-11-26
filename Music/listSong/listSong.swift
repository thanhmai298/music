//
//  listSong.swift
//  Music
//
//  Created by Catalina on 11/18/21.
//  Copyright © 2021 Catalina. All rights reserved.
//

import Foundation

struct  ListSong: Decodable {
    let user: String
    let song: Song
}

struct Song: Decodable {
    let name: String
    let time: Int
}
