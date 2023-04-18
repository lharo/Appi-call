//
//  JobModel.swift
//  appi-call
//
//  Created by Luis Esteban Haro on 27/03/23.
//

import Foundation

struct Job: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let company: String
    let location: String
    let description: String
    let requirements: [String]
    let salary: Int
}

extension Job {
    static let jobs: [Job] = [
        .init(title: "Software Engineer", company: "Acme Inc.", location: "San Francisco, CA", description: "We are seeking a talented software engineer to join our team.", requirements: ["Bachelor's degree in Computer Science or related field", "3+ years of experience in software development", "Proficient in Swift and Objective-C"], salary: 120_000),
        .init(
            title: "Product Manager",
            company: "Beta Corp.",
            location: "New York, NY",
            description: "We are looking for an experienced product manager to help us grow our business.",
            requirements: ["5+ years of experience in product management", "Strong analytical skills", "Excellent communication skills"],
            salary: 150_000
        )
    ]
}
