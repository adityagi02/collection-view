//
//  TrailerData.swift
//  MovieZine
//
//  Created by Aditya Tyagi  on 31/03/22.
//

import Foundation

// MARK: - Welcome
struct TrailerData: Codable {
    let id: Int
    let results: [Result]
}

// MARK: - Result
struct Result: Codable {
    let iso639_1: ISO639_1
    let iso3166_1: ISO3166_1
    let name, key: String
    let site: Site
    let size: Int
    let type: TypeEnum
    let official: Bool
    let publishedAt, id: String

    enum CodingKeys: String, CodingKey {
        case iso639_1 = "iso_639_1"
        case iso3166_1 = "iso_3166_1"
        case name, key, site, size, type, official
        case publishedAt = "published_at"
        case id
    }
}

enum ISO3166_1: String, Codable {
    case us = "US"
}

enum ISO639_1: String, Codable {
    case en = "en"
}

enum Site: String, Codable {
    case youTube = "YouTube"
}

enum TypeEnum: String, Codable {
    case clip = "Clip"
    case teaser = "Teaser"
    case trailer = "Trailer"
}
