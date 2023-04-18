//
//  PersonModel.swift
//  appi-call
//
//  Created by Luis Esteban Haro on 23/03/23.
//

import Foundation

struct Person: Codable, Identifiable, Hashable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
    var collaborators: [Person]?
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.id == rhs.id
    }
}

struct Address: Codable, Equatable, Hashable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo
    
    static func == (lhs: Address, rhs: Address) -> Bool {
        return lhs.street == rhs.street &&
            lhs.suite == rhs.suite &&
            lhs.city == rhs.city &&
            lhs.zipcode == rhs.zipcode &&
            lhs.geo == rhs.geo
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(street)
        hasher.combine(suite)
        hasher.combine(city)
        hasher.combine(zipcode)
        hasher.combine(geo)
    }
}

struct Geo: Codable, Hashable {
    let lat: String
    let lng: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(lat)
        hasher.combine(lng)
    }
}

struct Company: Codable {
    let name: String
    let catchPhrase: String
    let bs: String
}
