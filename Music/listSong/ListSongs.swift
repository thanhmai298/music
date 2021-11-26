//
//  ListSongs.swift
//  Music
//
//  Created by Catalina on 11/22/21.
//  Copyright © 2021 Catalina. All rights reserved.
//

import Foundation

struct ListSongs:Decodable {
    let results: Songs
}

struct Songs: Decodable{
    let artisName: String
    let name: String
}
