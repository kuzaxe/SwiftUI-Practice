//
//  PostData.swift
//  Hacker News
//
//  Created by Raj Pandya on 2020-03-24.
//  Copyright © 2020 Raj Pandya. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
