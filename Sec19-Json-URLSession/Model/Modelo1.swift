//
//  Modelo1.swift
//  Sec19-Json-URLSession
//
//  Created by nelson tapia on 30-08-23.
//

import Foundation

//struct Modelo1: Decodable {
//    var id: Int
//    var name: String
//    var email: String
//    var address: Address
//}
//
//struct Address: Decodable {
//    var street: String
//    var geo: Geo
//}
//
//struct Geo: Decodable {
//    var lat: String
//    var lng: String
//}

// MARK: - WelcomeElement
struct Modelo1: Codable {
    let id: Int
    let name, username, email: String
    let address: Address
    let phone, website: String
    let company: Company
}

// MARK: - Address
struct Address: Codable {
    let street, suite, city, zipcode: String
    let geo: Geo
}

// MARK: - Geo
struct Geo: Codable {
    let lat, lng: String
}

// MARK: - Company
struct Company: Codable {
    let name, catchPhrase, bs: String
}
