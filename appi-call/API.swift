//
//  API.swift
//  appi-call
//
//  Created by Luis Esteban Haro on 23/03/23.
//

import Foundation

class PersonApi {
    func getPersons( completition: @escaping ([Person]) -> () ){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let people = try! JSONDecoder().decode([Person].self, from: data!)
            DispatchQueue.main.async {
                completition(people)
            }
        }
        .resume()
    }
}

