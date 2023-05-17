//
//  PostData.swift
//  H4XOR News
//
//  Created by Mykhailo Radzievskyi on 2023-05-08.
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
